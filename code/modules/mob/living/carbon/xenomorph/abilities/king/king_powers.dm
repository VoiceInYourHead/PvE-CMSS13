/*
	REND ABILITY
	3x3 aoe damage centred on the King. Basic ability, spammable, low damage.
*/

/datum/action/xeno_action/onclick/rend/use_ability()
	var/mob/living/carbon/xenomorph/xeno = owner
	XENO_ACTION_CHECK_USE_PLASMA(xeno)

	xeno.spin_circle()
	xeno.emote("hiss")
	for(var/mob/living/carbon/carbon in orange(2, xeno) - xeno)

		if(carbon.stat == DEAD)
			continue
		if(xeno.can_not_harm(carbon))
			continue
		carbon.apply_armoured_damage(damage)
		carbon.last_damage_data = create_cause_data(initial(xeno.name), xeno)
		xeno.flick_attack_overlay(carbon, "tail")
		to_chat(carbon, SPAN_DANGER("[xeno] cuts you with its razor sharp tail."))
		log_attack("[key_name(xeno)] hit [key_name(carbon)] with [name]")
		playsound(carbon, pick(slash_sounds), 30, TRUE)

	xeno.visible_message(SPAN_DANGER("[xeno] slices around itself!"), SPAN_NOTICE("We slice around ourself!"))
	apply_cooldown()
	..()



/*
	DOOM ABILITY
	King channels for a while shrieks which turns off all lights in the vicinity and applies a mild daze
	Medium cooldown soft CC
*/

/datum/action/xeno_action/onclick/doom/use_ability(atom/target)
	var/mob/living/carbon/xenomorph/xeno = owner
	XENO_ACTION_CHECK_USE_PLASMA(xeno)

	playsound(xeno, 'sound/voice/deep_alien_screech2.ogg', 75, 0, status = 0)
	xeno.visible_message(SPAN_XENOHIGHDANGER("[xeno] emits an raspy guttural roar!"))
	xeno.create_shriekwave()

	var/datum/effect_system/smoke_spread/king_doom/smoke_gas = new /datum/effect_system/smoke_spread/king_doom
	smoke_gas.set_up(7, 0, get_turf(xeno), null, 6)
	smoke_gas.start()

	for(var/atom/current_atom as anything in view(owner))
		if(istype(current_atom, /obj/item/device))
			var/obj/item/device/potential_lightsource = current_atom

			var/time_to_extinguish = get_dist(owner, potential_lightsource) DECISECONDS

			//Flares
			if(istype(potential_lightsource, /obj/item/device/flashlight/flare))
				var/obj/item/device/flashlight/flare/flare = potential_lightsource
				addtimer(CALLBACK(flare, TYPE_PROC_REF(/obj/item/device/flashlight/flare/, burn_out)), time_to_extinguish)

			//Flashlights
			if(istype(potential_lightsource, /obj/item/device/flashlight))
				var/obj/item/device/flashlight/flashlight = potential_lightsource
				addtimer(CALLBACK(flashlight, TYPE_PROC_REF(/obj/item/device/flashlight, turn_off_light)), time_to_extinguish)

		else if(ishuman(current_atom))
			// "Confuse" and slow humans in the area and turn off their armour lights.
			var/mob/living/carbon/human/human = current_atom

			human.EyeBlur(daze_length_seconds)
			human.Daze(daze_length_seconds)
			human.Superslow(slow_length_seconds)
			human.add_client_color_matrix("doom", 99, color_matrix_multiply(color_matrix_saturation(0), color_matrix_from_string("#eeeeee")))
			human.overlay_fullscreen("doom", /atom/movable/screen/fullscreen/flash/noise/nvg)
			addtimer(CALLBACK(human, TYPE_PROC_REF(/mob, remove_client_color_matrix), "doom", 1 SECONDS), 5 SECONDS)
			addtimer(CALLBACK(human, TYPE_PROC_REF(/mob, clear_fullscreen), "doom", 0.5 SECONDS), 5 SECONDS)

			to_chat(human, SPAN_HIGHDANGER("[xeno]'s roar overwhelms your entire being!"))
			shake_camera(human, 6, 1)

			var/time_to_extinguish = get_dist(owner, human) SECONDS
			var/obj/item/clothing/suit/suit = human.get_item_by_slot(WEAR_JACKET)
			if(istype(suit, /obj/item/clothing/suit/storage/marine))
				var/obj/item/clothing/suit/storage/marine/armour = suit
				addtimer(CALLBACK(armour, TYPE_PROC_REF(/atom, turn_light), null, FALSE), time_to_extinguish)

		if(!istype(current_atom, /mob/dead))
			var/power = current_atom.light_power
			var/range = current_atom.light_range
			if(power > 0 && range > 0)
				if(current_atom.light_system != MOVABLE_LIGHT)
					current_atom.set_light(l_range=0)
					addtimer(CALLBACK(current_atom, TYPE_PROC_REF(/atom, set_light), range, power), 10 SECONDS)
				else
					current_atom.set_light_range(0)
					addtimer(CALLBACK(current_atom, TYPE_PROC_REF(/atom, set_light_range), range), 10 SECONDS)


	apply_cooldown()
	..()

/*
	BULWARK ABILITY - AoE shield
	Long cooldown defensive ability, provides a shield which caps damage taken to 10% of the xeno's max health per individual source of damage.
*/

/datum/action/xeno_action/onclick/king_shield/use_ability()
	var/mob/living/carbon/xenomorph/xeno = owner

	XENO_ACTION_CHECK_USE_PLASMA(xeno)


	playsound(xeno.loc, 'sound/voice/deep_alien_screech.ogg', 50, 0, status = 0)
	// Add our shield
	start_shield(xeno)

	// Add other xeno's shields in AoE range
	for(var/mob/living/carbon/xenomorph/xeno_in_aoe in range(area_of_effect, xeno))
		if(xeno_in_aoe == xeno)
			continue
		if(xeno_in_aoe.stat == DEAD)
			continue
		if(xeno_in_aoe.hivenumber != xeno.hivenumber)
			continue
		start_shield(xeno_in_aoe)
		xeno.beam(xeno_in_aoe, "purple_lightning", time = 4 SECONDS)

	apply_cooldown()
	return ..()

/datum/action/xeno_action/onclick/king_shield/proc/start_shield(mob/living/carbon/xenomorph/xeno)
	var/datum/xeno_shield/shield = xeno.add_xeno_shield(shield_amount, XENO_SHIELD_SOURCE_KING_BULWARKSPELL, /datum/xeno_shield/king_shield)
	if(shield)
		xeno.create_shield(shield_duration, "purple_animated_shield_full")


/*
	DESTROY ABILITY
	King leaps into the air and crashes down damaging cades and mobs in a 3x3 area centred on him.
	Long cooldown high damage ability, massive damage against cades, highly telegraphed.
*/

#define LEAP_HEIGHT 210 //how high up leaps go, in pixels
#define LEAP_DIRECTION_CHANGE_RANGE 5 //the range our x has to be within to not change the direction we slam from

/datum/action/xeno_action/onclick/destroy/use_ability(mob/living/target)
	var/mob/living/carbon/xenomorph/xeno = owner
	target = xeno.current_target
	XENO_ACTION_CHECK(xeno)

	if(get_dist(owner, target) > range)
		to_chat(xeno, SPAN_XENONOTICE("We cannot leap that far!"))
		return

	var/turf/target_turf = get_turf(target)

	if(!target_turf || target_turf.density)
		to_chat(xeno, SPAN_XENONOTICE("We cannot leap to that!"))
		return

	if(istype(target_turf, /turf/open/space))
		to_chat(xeno, SPAN_XENONOTICE("It would not be wise to try to leap there..."))
		return

	if(istype(target, /obj/vehicle/multitile))
		to_chat(xeno, SPAN_XENONOTICE("It would not be wise to try to leap there..."))
		return

	var/area/target_area = get_area(target_turf)
	if(target_area.flags_area & AREA_NOTUNNEL)
		to_chat(xeno, SPAN_XENONOTICE("We cannot leap to that area!"))

	var/list/leap_line = get_line(xeno, target)
	for(var/turf/jump_turf in leap_line)
		if(jump_turf.density)
			to_chat(xeno, SPAN_XENONOTICE("We don't have a clear path to leap to that location!"))
			return

		for(var/obj/structure/possible_blocker in jump_turf)
			if(possible_blocker.density && !possible_blocker.throwpass)
				to_chat(xeno, SPAN_XENONOTICE("There's something blocking us from leaping."))
				return

	if(!check_and_use_plasma_owner())
		to_chat(xeno, SPAN_XENONOTICE("We don't have enough plasma to use [name]."))
		return

	var/turf/template_turf = get_step(target_turf, SOUTHWEST)

	to_chat(xeno, SPAN_XENONOTICE("Our muscles tense as we prepare ourself for a giant leap."))
	ADD_TRAIT(owner, TRAIT_IMMOBILIZED, "WaitBeforeMove")
	xeno.make_jittery(0.5 SECONDS)
	if(!do_after(xeno, 0.5 SECONDS, INTERRUPT_ALL, BUSY_ICON_HOSTILE))
		to_chat(xeno, SPAN_XENONOTICE("We relax our muslces and end our leap."))
		return
	if(leaping || !target)
		return
	// stop target movement
	leaping = TRUE
	ADD_TRAIT(owner, TRAIT_UNDENSE, "Destroy")
	ADD_TRAIT(owner, TRAIT_IMMOBILIZED, "Destroy")
	owner.visible_message(SPAN_WARNING("[owner] takes a giant leap into the air!"))

	var/negative
	var/initial_x = owner.x
	if(target.x < initial_x) //if the target's x is lower than ours, go to the left
		negative = TRUE
	else if(target.x > initial_x)
		negative = FALSE
	else if(target.x == initial_x) //if their x is the same, pick a direction
		negative = prob(50)

	owner.face_atom(target)
	owner.emote("roar")

	//Initial visual
	var/obj/effect/temp_visual/king_leap/leap_visual = new(owner.loc, negative, owner.dir)
	new /obj/effect/xenomorph/xeno_telegraph/king_attack_template(template_turf, 20)

	negative = !negative //invert it for the descent later

	var/oldtransform = owner.transform
	owner.alpha = 255
	animate(owner, alpha = 0, transform = matrix()*0.9, time = 3, easing = BOUNCE_EASING)
	for(var/i in 1 to 3)
		sleep(1 DECISECONDS)
		if(QDELETED(owner) || owner.stat == DEAD) //we got hit and died, rip us

			//Initial effect
			qdel(leap_visual)

			if(owner.stat == DEAD)
				leaping = FALSE
				animate(owner, alpha = 255, transform = oldtransform, time = 0, flags = ANIMATION_END_NOW) //reset immediately
			return

	owner.mouse_opacity = MOUSE_OPACITY_TRANSPARENT
	SLEEP_CHECK_DEATH(7, owner)

	while(target_turf && owner.loc != target_turf)
		owner.forceMove(get_step(owner, get_dir(owner, target_turf)))
		SLEEP_CHECK_DEATH(0.5, owner)

	animate(owner, alpha = 100, transform = matrix()*0.7, time = 7)
	var/descentTime = 4

	if(negative)
		if(ISINRANGE(owner.x, initial_x + 1, initial_x + LEAP_DIRECTION_CHANGE_RANGE))
			negative = FALSE
	else
		if(ISINRANGE(owner.x, initial_x - LEAP_DIRECTION_CHANGE_RANGE, initial_x - 1))
			negative = TRUE

	new /obj/effect/temp_visual/king_leap/end(owner.loc, negative, owner.dir)

	SLEEP_CHECK_DEATH(descentTime, owner)
	animate(owner, alpha = 255, transform = oldtransform, descentTime)
	owner.mouse_opacity = initial(owner.mouse_opacity)
	playsound(owner.loc, 'sound/effects/meteorimpact.ogg', 200, TRUE)

	/// Effects for landing
	new /obj/effect/temp_visual/heavy_impact(owner.loc)
	for(var/step in CARDINAL_ALL_DIRS)
		new /obj/effect/temp_visual/heavy_impact(get_step(owner.loc, step))

	// Actual Damaging Effects - Add stuff for cades - NEED TELEGRAPHS NEED EFFECTS

	// Mobs first high damage and knockback away from centre
	for(var/mob/living/carbon/carbon in orange(1, owner) - owner)
		if(xeno.can_not_harm(carbon))
			continue
		carbon.adjustBruteLoss(75)
		if(!QDELETED(carbon)) // Some mobs are deleted on death
			log_attack("[key_name(xeno)] hit [key_name(carbon)] with [name]")
			carbon.last_damage_data = create_cause_data(initial(xeno.name), xeno)
			var/throw_dir = get_dir(owner, carbon)
			if(carbon.loc == owner.loc)
				throw_dir = pick(GLOB.alldirs)
			var/throwtarget = get_edge_target_turf(owner, throw_dir)
			carbon.throw_atom(throwtarget, 2, SPEED_REALLY_FAST, owner, TRUE)
			carbon.KnockDown(0.5)
			xeno.visible_message(SPAN_WARNING("[carbon] is thrown clear of [owner]!"))

	// Any items get thrown away
	for(var/obj/item/item in orange(1, owner))
		if(!QDELETED(item))
			var/throw_dir = get_dir(owner, item)
			if(item.loc == owner.loc)
				throw_dir = pick(GLOB.alldirs)
			var/throwtarget = get_edge_target_turf(owner, throw_dir)
			item.throw_atom(throwtarget, 2, SPEED_REALLY_FAST, owner, TRUE)

	for(var/obj/structure/structure in orange(1, owner))
		structure.ex_act(300, get_dir(owner, structure))

	for(var/mob/living in range(7, owner))
		shake_camera(living, 15, 1)

	REMOVE_TRAIT(owner, TRAIT_UNDENSE, "Destroy")
	REMOVE_TRAIT(owner, TRAIT_IMMOBILIZED, "Destroy")
	REMOVE_TRAIT(owner, TRAIT_IMMOBILIZED, "WaitBeforeMove")

	SLEEP_CHECK_DEATH(1, owner)
	leaping = FALSE
	apply_cooldown()
	..()

/datum/action/xeno_action/onclick/destroy/proc/second_template(turf/template_turf)
	new /obj/effect/xenomorph/xeno_telegraph/king_attack_template(template_turf, 10)

/obj/effect/temp_visual/king_leap
	icon = 'icons/mob/xenos/king.dmi'
	icon_state = "Normal King Charging"
	layer = 4.7
	plane = -4
	pixel_x = -32
	duration = 2
	randomdir = FALSE

/obj/effect/temp_visual/king_leap/Initialize(mapload, negative, dir)
	. = ..()
	setDir(dir)
	INVOKE_ASYNC(src, PROC_REF(flight), negative)

/obj/effect/temp_visual/king_leap/proc/flight(negative)
	if(negative)
		animate(src, pixel_x = -LEAP_HEIGHT*0.1, pixel_z = LEAP_HEIGHT*0.15, time = 6, easing = BOUNCE_EASING)
	else
		animate(src, pixel_x = LEAP_HEIGHT*0.1, pixel_z = LEAP_HEIGHT*0.15, time = 6, easing = BOUNCE_EASING)
	sleep(0.3 SECONDS)
	icon_state = "Normal King Charging"
	if(negative)
		animate(src, pixel_x = -LEAP_HEIGHT, pixel_z = LEAP_HEIGHT, time = 12)
	else
		animate(src, pixel_x = LEAP_HEIGHT, pixel_z = LEAP_HEIGHT, time = 12)

/obj/effect/temp_visual/king_leap/end
	pixel_x = LEAP_HEIGHT
	pixel_z = LEAP_HEIGHT
	duration = 2

/obj/effect/temp_visual/king_leap/end/flight(negative)
	if(negative)
		pixel_x = -LEAP_HEIGHT
		animate(src, pixel_x = -16, pixel_z = 0, time = 5)
	else
		animate(src, pixel_x = -16, pixel_z = 0, time = 5)

/obj/effect/xenomorph/xeno_telegraph/king_attack_template
	icon = 'icons/effects/96x96.dmi'
	icon_state = "landing2"
	layer = BELOW_MOB_LAYER

/obj/effect/xenomorph/xeno_telegraph/king_attack_template/yellow
	icon_state = "xenolandingyellow"

/datum/action/xeno_action/onclick/king_frenzy/use_ability(atom/A)
	var/mob/living/carbon/xenomorph/zenomorf = owner

	if (!action_cooldown_check())
		return

	if (!istype(zenomorf) || !zenomorf.check_state())
		return

	if (buffs_active)
		return

	if (!check_and_use_plasma_owner())
		return

	zenomorf.create_custom_empower(icolor = "#ec7878", ialpha = 200, small_xeno = FALSE)
	buffs_active = TRUE
	owner.add_filter("Enrage", 1, list("type" = "outline", "color" = "#7c3e3e", "size" = 1))
	zenomorf.speed_modifier -= speed_buff_amount
	zenomorf.recalculate_speed()
	owner.visible_message(SPAN_WARNING("[owner] enrages!"))

	addtimer(CALLBACK(src, PROC_REF(remove_effects)), duration)

	apply_cooldown()
	return ..()

/datum/action/xeno_action/onclick/king_frenzy/proc/remove_effects()
	var/mob/living/carbon/xenomorph/zenomorf = owner

	if (!istype(zenomorf))
		return

	owner.remove_filter("Enrage")
	zenomorf.speed_modifier += speed_buff_amount
	zenomorf.recalculate_speed()
	buffs_active = FALSE
