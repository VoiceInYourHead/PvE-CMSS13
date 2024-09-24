/obj/item/weapon/gun/rifle/m41aMK1/mech
	name = "\improper Mech-sized LMG"
	desc = "Mech-sized gun, filled with 10x24mm uranium ammunition to the brim."
	icon = 'void-marines/icons/mecha_equipment_64x32.dmi'
	icon_state = "lightcannon"
	current_mag = /obj/item/ammo_magazine/rifle/m41aMK1/ap/mech
	attachable_allowed = list()
	pixel_x = -16
	var/obj/vehicle/uscm_mech/linked_powerloader
	var/is_right = FALSE

	flags_gun_features = GUN_ONE_HAND_WIELDED|GUN_CAN_POINTBLANK|GUN_AMMO_COUNTER
	starting_attachment_types = list()

/obj/item/weapon/gun/rifle/m41aMK1/mech/Destroy()
	linked_powerloader = null
	..()

/obj/item/weapon/gun/rifle/m41aMK1/mech/attack_self(mob/user)
	..()
	if(linked_powerloader)
		linked_powerloader.unbuckle()

/obj/item/weapon/gun/rifle/m41aMK1/mech/dropped(mob/user)
	if(!linked_powerloader)
		qdel(src)
	..()
	forceMove(linked_powerloader)
	if(linked_powerloader.buckled_mob && linked_powerloader.buckled_mob == user)
		linked_powerloader.unbuckle() //drop a clamp, you auto unbuckle from the powerloader.

/obj/item/weapon/gun/rifle/m41aMK1/mech/set_gun_config_values()
	..()
	set_fire_delay(FIRE_DELAY_TIER_SG)
	set_burst_amount(BURST_AMOUNT_TIER_4)
	set_burst_delay(FIRE_DELAY_TIER_SG)
	accuracy_mult = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_3
	scatter = SCATTER_AMOUNT_NONE
	burst_scatter_mult = SCATTER_AMOUNT_TIER_10
	damage_mult = BASE_BULLET_DAMAGE_MULT
	recoil_unwielded = RECOIL_OFF

/obj/item/ammo_magazine/rifle/m41aMK1/ap/mech
	gun_type = /obj/item/weapon/gun/rifle/m41aMK1/mech
	max_rounds = 3000

/obj/item/weapon/gun/launcher/rocket/m57a4/mech
	name = "\improper Mech-sized Launcher"
	desc = "Mech-sized rocket launcher, supplied with high-explosive charges."
	icon = 'void-marines/icons/mecha_equipment_64x32.dmi'
	icon_state = "rpg"
	pixel_x = -16
	var/obj/vehicle/uscm_mech/linked_powerloader
	var/is_right = FALSE

	current_mag = /obj/item/ammo_magazine/rocket/m57a4/mech
	aim_slowdown = SLOWDOWN_ADS_SUPERWEAPON
	flags_gun_features = GUN_ONE_HAND_WIELDED
	skill_locked = FALSE

/obj/item/weapon/gun/launcher/rocket/m57a4/mech/attack_self(mob/user)
	..()
	if(linked_powerloader)
		linked_powerloader.unbuckle()

/obj/item/weapon/gun/launcher/rocket/m57a4/mech/Destroy()
	linked_powerloader = null
	..()

/obj/item/weapon/gun/launcher/rocket/m57a4/mech/dropped(mob/user)
	if(!linked_powerloader)
		qdel(src)
	..()
	forceMove(linked_powerloader)
	if(linked_powerloader.buckled_mob && linked_powerloader.buckled_mob == user)
		linked_powerloader.unbuckle() //drop a clamp, you auto unbuckle from the powerloader.

/obj/item/weapon/gun/launcher/rocket/m57a4/mech/set_gun_config_values()
	..()
	set_fire_delay(FIRE_DELAY_TIER_5)
	set_burst_delay(FIRE_DELAY_TIER_7)
	set_burst_amount(BURST_AMOUNT_TIER_4)
	accuracy_mult = BASE_ACCURACY_MULT - HIT_ACCURACY_MULT_TIER_4
	scatter = SCATTER_AMOUNT_TIER_6
	damage_mult = BASE_BULLET_DAMAGE_MULT
	recoil = RECOIL_AMOUNT_TIER_3

/obj/item/ammo_magazine/rocket/m57a4/mech

	max_rounds = 14
	gun_type = /obj/item/weapon/gun/launcher/rocket/m57a4/mech

//---------------------//
// USCM GUNFIGHTER MECH //
//---------------------//
/obj/vehicle/uscm_mech
	name = "\improper EXPERIMENTAL MECHANIZED UNIT"
	icon = 'void-marines/icons/mecha.dmi'
	desc = "An experimental reverse-engineered and modified version of Weyland-Yutani PMC's combat exosuit."
	icon_state = "dollhouse-open"
	layer = POWERLOADER_LAYER //so the top appears above windows and wall mounts
	anchored = TRUE
	density = TRUE
	light_range = 10
	move_delay = 2
	health = 4000
	maxhealth = 4000
	var/base_state = "dollhouse"
	var/open_state = "dollhouse-open"
	var/overlay_state = "dollhouse"
	var/wreckage = /obj/structure/powerloader_wreckage/uscm_mech
	var/obj/item/weapon/gun/launcher/rocket/m57a4/mech/PC_left
	var/obj/item/weapon/gun/rifle/m41aMK1/mech/PC_right

/obj/vehicle/uscm_mech/Initialize()
	cell = new /obj/item/cell/apc
	PC_left = new(src)
	PC_left.linked_powerloader = src
	PC_right = new(src)
	PC_right.linked_powerloader = src
	PC_right.is_right = TRUE

	. = ..()

/obj/vehicle/uscm_mech/Destroy()
	qdel(PC_left)
	PC_left = null
	qdel(PC_right)
	PC_right = null
	return ..()

/obj/vehicle/uscm_mech/relaymove(mob/user, direction)
	if(user.is_mob_incapacitated())
		return
	if(world.time > l_move_time + move_delay)
		if(dir != direction)
			l_move_time = world.time
			setDir(direction)
			handle_rotation()
			pick(playsound(src.loc, 'sound/mecha/powerloader_turn.ogg', 25, 1), playsound(src.loc, 'sound/mecha/powerloader_turn2.ogg', 25, 1))
			. = TRUE
		else
			. = step(src, direction)
			if(.)
				pick(playsound(loc, 'sound/mecha/powerloader_step.ogg', 25), playsound(loc, 'sound/mecha/powerloader_step2.ogg', 25))

/obj/vehicle/uscm_mech/handle_rotation()
	if(buckled_mob)
		buckled_mob.setDir(dir)

/obj/vehicle/uscm_mech/explode()
	new wreckage(loc)
	playsound(loc, 'sound/effects/metal_crash.ogg', 75)
	..()

/obj/vehicle/uscm_mech/get_examine_text(mob/user)
	. = ..()
	if(PC_left)
		. += PC_left.get_examine_text(user, TRUE)
	if(PC_right)
		. += PC_right.get_examine_text(user, TRUE)

/obj/vehicle/uscm_mech/attack_hand(mob/user)
	if(buckled_mob && user != buckled_mob)
		buckled_mob.visible_message(SPAN_WARNING("[user] tries to move [buckled_mob] out of [src]."),\
		SPAN_DANGER("[user] tries to move you out of [src]!"))
		var/oldloc = loc
		var/olddir = dir
		var/old_buckled_mob = buckled_mob
		if(do_after(user, 30, INTERRUPT_ALL, BUSY_ICON_HOSTILE) && dir == olddir && loc == oldloc && buckled_mob == old_buckled_mob)
			manual_unbuckle(user)
			playsound(loc, 'sound/mecha/powerloader_unbuckle.ogg', 25)

/obj/vehicle/uscm_mech/attackby(obj/item/W, mob/user)
	if(istype(W, /obj/item/weapon/gun/rifle/m41aMK1/mech))
		var/obj/item/weapon/gun/rifle/m41aMK1/mech/PC1 = W
		if(PC1.linked_powerloader == src)
			unbuckle() //clicking the powerloader with its own clamp unbuckles the pilot.
			playsound(loc, 'sound/mecha/powerloader_unbuckle.ogg', 25)
			return 1
	if(istype(W, /obj/item/weapon/gun/launcher/rocket/m57a4/mech))
		var/obj/item/weapon/gun/launcher/rocket/m57a4/mech/PC2 = W
		if(PC2.linked_powerloader == src)
			unbuckle() //clicking the powerloader with its own clamp unbuckles the pilot.
			playsound(loc, 'sound/mecha/powerloader_unbuckle.ogg', 25)
			return 1

	. = ..()

/obj/vehicle/uscm_mech/buckle_mob(mob/M, mob/user)
	if(M != user)
		return
	if(!ishuman(M))
		return
	var/mob/living/carbon/human/H = M
	if(H.r_hand || H.l_hand)
		to_chat(H, SPAN_WARNING("You need both hands free to operate \the [src]."))
		return
	. = ..()

/obj/vehicle/uscm_mech/afterbuckle(mob/M)
	. = ..()
	overlays.Cut()
	playsound(loc, 'sound/mecha/powerloader_buckle.ogg', 25)
	if(.)
		icon_state = base_state
		overlays += image(icon_state = overlay_state, layer = MOB_LAYER + 0.1)
		M.alpha = 0
		if(M.mind && M.skills)
			move_delay = max(4, move_delay - 2 * M.skills.get_skill_level(SKILL_POWERLOADER))
		if(!M.put_in_l_hand(PC_left))
			PC_left.forceMove(src)
			unbuckle()
			return
		else if(!M.put_in_r_hand(PC_right))
			PC_right.forceMove(src)
			unbuckle()
			return
			//can't use the powerloader without both clamps equipped
	else
		M.alpha = 255
		move_delay = initial(move_delay)
		icon_state = open_state
		M.drop_held_items() //drop the clamp when unbuckling

//verb
/obj/vehicle/uscm_mech/verb/enter_powerloader(mob/M)
	set category = "Object"
	set name = "Enter Power Loader"
	set src in oview(1)

	buckle_mob(M, usr)

/obj/structure/powerloader_wreckage/uscm_mech
	icon = 'void-marines/icons/mecha.dmi'
	name = "\improper EXPERIMENTAL MECHANIZED UNIT"
	icon_state = "dollhouse-broken"
