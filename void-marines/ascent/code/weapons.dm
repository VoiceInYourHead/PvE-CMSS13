// Tajaran Armory

//MILITIA PISTOL//
/obj/item/weapon/gun/ascent/taj/militia/pistol/regular
	name = "Ash'ain-Pattern Pistol (7.97)"
	desc = "Very simple in design, but still very practical Militia pistol, used by most of Tajaran troops."
	icon = 'void-marines/bay_stuff/obj/guns/tajaran_armory.dmi'
	icon_state = "pistol"
	item_state = "pistol"
	force = MELEE_FORCE_WEAK
	w_class = SIZE_MEDIUM
	flags_equip_slot = SLOT_WAIST
	item_icons = list(
		WEAR_L_HAND = 'void-marines/bay_stuff/obj/guns/onmob/lefthand.dmi',
		WEAR_R_HAND = 'void-marines/bay_stuff/obj/guns/onmob/righthand.dmi'
		)

	flags_atom = FPRINT|NOBLOODY|CONDUCT
	movement_onehanded_acc_penalty_mult = 3
	wield_delay = WIELD_DELAY_VERY_FAST

	current_mag = /obj/item/ammo_magazine/ascent/taj/militia/pistol
	caliber = "7.97"

	fire_sound = "vp70"

	reload_sound = 'sound/weapons/flipblade.ogg'
	cocked_sound = 'sound/weapons/gun_pistol_cocked.ogg'
	empty_sound = 'sound/weapons/gun_empty.ogg'

	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_ONE_HAND_WIELDED
	gun_category = GUN_CATEGORY_HANDGUN

/obj/item/weapon/gun/ascent/taj/militia/pistol/regular/set_gun_config_values()
	..()
	set_fire_delay(FIRE_DELAY_TIER_5)
	accuracy_mult = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_4
	accuracy_mult_unwielded = BASE_ACCURACY_MULT
	scatter = SCATTER_AMOUNT_TIER_8
	scatter_unwielded = SCATTER_AMOUNT_TIER_6
	damage_mult = BASE_BULLET_DAMAGE_MULT
	recoil_unwielded = RECOIL_AMOUNT_TIER_3

/obj/item/ammo_magazine/ascent/taj/militia/pistol
	name = "\improper Pistol Magazine (7.97)"
	caliber = "7.97"
	icon = 'void-marines/bay_stuff/obj/ammo.dmi'
	icon_state = "45x"
	default_ammo = /datum/ammo/bullet/pistol/ascent/taj
	max_rounds = 10
	gun_type = /obj/item/weapon/gun/ascent/taj/militia/pistol

/datum/ammo/bullet/pistol/ascent/taj
	name = "7.97 bullet"
	damage = 70
	accurate_range = 10
	accuracy = HIT_ACCURACY_TIER_10
	scatter = SCATTER_AMOUNT_TIER_10
	shell_speed = AMMO_SPEED_TIER_3
	effective_range_max = 5
	max_range = 20
	penetration = ARMOR_PENETRATION_TIER_6

	handful_state = "lever_action_bullet"
//MILITIA PISTOL//

//OFFICER REVOLVER//
/obj/item/weapon/gun/revolver/ascent/taj/militia/officer
	name = "Ash'ain-Pattern Revolver (7.97)"
	desc = "So called 'piercer' is an beutifully engineered killing machine, used by Tajaran Commissar's and high-ops."
	icon = 'void-marines/bay_stuff/obj/guns/tajaran_armory.dmi'
	icon_state = "revolver"
	item_state = "revolver"
	item_icons = list(
		WEAR_L_HAND = 'void-marines/bay_stuff/obj/guns/onmob/lefthand.dmi',
		WEAR_R_HAND = 'void-marines/bay_stuff/obj/guns/onmob/righthand.dmi'
		)
	has_empty_icon = FALSE
	fire_sound = null
	fire_sounds = list('sound/weapons/gun_cmb_1.ogg', 'sound/weapons/gun_cmb_2.ogg')
	fire_rattle = 'sound/weapons/gun_cmb_rattle.ogg'
	unload_sound = 'sound/weapons/handling/pkd_open_chamber.ogg'
	chamber_close_sound = 'sound/weapons/handling/pkd_close_chamber.ogg'
	current_mag = /obj/item/ammo_magazine/internal/revolver/ascent/taj/militia/officer
	force = MELEE_FORCE_WEAK
	attachable_allowed = list()

/obj/item/weapon/gun/revolver/ascent/taj/militia/officer/click_empty(mob/user)
	if(user)
		to_chat(user, SPAN_WARNING("<b>*click*</b>"))
		playsound(user, pick('sound/weapons/handling/gun_cmb_click1.ogg', 'sound/weapons/handling/gun_cmb_click2.ogg'), 25, 1, 5)
	else
		playsound(src, pick('sound/weapons/handling/gun_cmb_click1.ogg', 'sound/weapons/handling/gun_cmb_click2.ogg'), 25, 1, 5)

/obj/item/weapon/gun/revolver/ascent/taj/militia/officer/Fire(atom/target, mob/living/user, params, reflex = 0, dual_wield)
	playsound('sound/weapons/gun_cmb_bass.ogg') // badass shooting bass
	return ..()

/obj/item/weapon/gun/revolver/ascent/taj/militia/officer/set_gun_config_values()
	..()
	set_fire_delay(FIRE_DELAY_TIER_3)
	accuracy_mult = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_5
	accuracy_mult_unwielded = BASE_ACCURACY_MULT
	scatter = SCATTER_AMOUNT_TIER_10
	scatter_unwielded = SCATTER_AMOUNT_TIER_9
	damage_mult = BASE_BULLET_DAMAGE_MULT + BULLET_DAMAGE_MULT_TIER_8
	recoil = RECOIL_OFF
	recoil_unwielded = RECOIL_AMOUNT_TIER_5

/obj/item/ammo_magazine/internal/revolver/ascent/taj/militia/officer
	default_ammo = /datum/ammo/bullet/pistol/ascent/taj
	caliber = "7.97"
	gun_type = /obj/item/weapon/gun/revolver/ascent/taj/militia/officer

/obj/item/ammo_magazine/revolver/ascent/taj/militia/officer
	name = "\improper Revolver speed loader (7.97)"
	desc = "An basic revolver speedloader."
	default_ammo = /datum/ammo/bullet/pistol/ascent/taj
	caliber = "7.97"
	icon = 'void-marines/bay_stuff/obj/ammo.dmi'
	icon_state = "38"
	max_rounds = 6
	gun_type = /obj/item/weapon/gun/revolver/ascent/taj/militia/officer
//OFFICER REVOLVER//

//MILITIA SNIPER RIFLE//

//Sniper rifle override STARTS//
/obj/item/weapon/gun
	var/has_aimed_shot = FALSE
	var/aiming_time = 1.25 SECONDS
	var/aimed_shot_cooldown
	var/aimed_shot_cooldown_delay = 2.5 SECONDS

	var/enable_aimed_shot_laser = FALSE
	var/sniper_lockon_icon = "sniper_lockon"
	var/obj/effect/ebeam/sniper_beam_type = /obj/effect/ebeam/laser
	var/sniper_beam_icon = "laser_beam"

	/// How far out people can tell the direction of the shot, baseline of the hAI marksman firing range
	var/fire_message_range = 30
	///If the sniper will generate a message when shot
	var/loud = FALSE

	/// Variables for Focus Fire and alternate icons for lockon and laser.
	var/enable_aimed_shot_icon_alt = FALSE
	var/sniper_lockon_icon_max = "sniper_lockon_intense"
	var/sniper_beam_icon_max = "laser_beam_intense"
//Sniper rifle override ENDS//

/obj/item/weapon/gun/ascent/taj/militia/rifle/sniper
	name = "Kar'ishan-Pattern Scout Rifle (.42)"
	desc = "An heavy sniper rifle, used by most professional Tajaran soldiers."
	icon = 'void-marines/bay_stuff/obj/guns/tajaran_armory.dmi'
	icon_state = "sniper"
	item_state = "sniper"
	item_icons = list(
		WEAR_L_HAND = 'void-marines/bay_stuff/obj/guns/onmob/lefthand.dmi',
		WEAR_R_HAND = 'void-marines/bay_stuff/obj/guns/onmob/righthand.dmi'
		)
	fire_sound = 'sound/weapons/gun_sniper.ogg'
	current_mag = /obj/item/ammo_magazine/ascent/taj/militia/sniper
	force = MELEE_FORCE_WEAK
	wield_delay = WIELD_DELAY_HORRIBLE
	zoomdevicename = "scope"
	attachable_allowed = list(/obj/item/attachable/bipod)
	starting_attachment_types = list()
	flags_gun_features = GUN_AUTO_EJECTOR|GUN_WIELDED_FIRING_ONLY
	flags_item = TWOHANDED

	has_aimed_shot = TRUE
	aiming_time = 1.25 SECONDS
	aimed_shot_cooldown_delay = 2.5 SECONDS

	enable_aimed_shot_laser = TRUE
	sniper_lockon_icon = "sniper_lockon"
	sniper_beam_type = /obj/effect/ebeam/laser
	sniper_beam_icon = "laser_beam"

	/// How far out people can tell the direction of the shot, baseline of the hAI marksman firing range
	fire_message_range = 30
	///If the sniper will generate a message when shot
	loud = TRUE

	/// Variables for Focus Fire and alternate icons for lockon and laser.
	enable_aimed_shot_icon_alt = FALSE
	sniper_lockon_icon_max = "sniper_lockon_intense"
	sniper_beam_icon_max = "laser_beam_intense"

/obj/item/weapon/gun/ascent/taj/militia/rifle/sniper/get_examine_text(mob/user)
	. = ..()
	if(!has_aimed_shot)
		return
	. += SPAN_NOTICE("This weapon has a special ability, Aimed Shot, allowing it to deal increased damage and inflict additional crippling effects after a windup, depending on the ammunition used.<br><b> Additionally, the aimed shot can be sped up with a spotter or by using the tracking laser, which is enabled by default but may be disabled.</b>")

/obj/item/weapon/gun/ascent/taj/militia/rifle/sniper/Initialize(mapload, spawn_empty)
	if(has_aimed_shot)
		LAZYADD(actions_types, list(/datum/action/item_action/specialist/aimed_shot, /datum/action/item_action/specialist/toggle_laser))
	return ..()

/obj/item/weapon/gun/ascent/taj/militia/rifle/sniper/Fire(atom/target, mob/living/user, params, reflex, dual_wield)
	. = ..()
	if(!.)
		return .
	if(!loud)
		return .
	for(var/mob/current_mob as anything in get_mobs_in_z_level_range(get_turf(user), fire_message_range) - user)
		var/relative_dir = Get_Compass_Dir(current_mob, user)
		var/final_dir = dir2text(relative_dir)
		if(current_mob.faction != user.faction)
			to_chat(current_mob, SPAN_HIGHDANGER("You hear a loud gunshot coming from [final_dir ? "the [final_dir]" : "nearby"]!"))
		else
			to_chat(current_mob, SPAN_WARNING("You hear a loud gunshot coming from [final_dir ? "the [final_dir]" : "nearby"]!"))
		if(current_mob.client)
			playsound_client(current_mob.client, 'sound/weapons/gun_vulture_report.ogg', src, 30)

	return .

/obj/item/weapon/gun/ascent/taj/militia/rifle/sniper/toggle_laser(mob/user, datum/action/toggling_action)
	enable_aimed_shot_laser = !enable_aimed_shot_laser
	to_chat(user, SPAN_NOTICE("You flip a switch on \the [src] and [enable_aimed_shot_laser ? "enable" : "disable"] its targeting laser."))
	playsound(user, 'sound/machines/click.ogg', 15, TRUE)
	if(!toggling_action)
		toggling_action = locate(/datum/action/item_action/specialist/toggle_laser) in actions
	if(toggling_action)
		toggling_action.update_button_icon()

/obj/item/weapon/gun/ascent/taj/militia/rifle/sniper/verb/toggle_gun_laser()
	set category = "Weapons"
	set name = "Toggle Laser"
	set desc = "Toggles your laser on or off."
	set src = usr.contents

	var/obj/item/weapon/gun/sniper = get_active_firearm(usr)
	if((sniper == src) && has_aimed_shot)
		toggle_laser(usr)

/obj/item/weapon/gun/ascent/taj/militia/rifle/sniper/verb/toggle_scope_zoom_level()
	set name = "Toggle Scope Zoom Level"
	set category = "Weapons"
	set src in usr
	var/obj/item/attachable/scope/variable_zoom/S = attachments["rail"]
	S.toggle_zoom_level()

/obj/item/weapon/gun/ascent/taj/militia/rifle/sniper/handle_starting_attachment()
	..()
	var/obj/item/attachable/scope/variable_zoom/S = new(src)
	S.hidden = TRUE
	S.flags_attach_features &= ~ATTACH_REMOVABLE
	S.Attach(src)
	update_attachable(S.slot)

/obj/item/weapon/gun/ascent/taj/militia/rifle/sniper/set_gun_config_values()
	..()
	set_fire_delay(FIRE_DELAY_TIER_SNIPER)
	set_burst_amount(BURST_AMOUNT_TIER_1)
	accuracy_mult = BASE_ACCURACY_MULT * 3 //you HAVE to be able to hit
	scatter = SCATTER_AMOUNT_TIER_8
	damage_mult = BASE_BULLET_DAMAGE_MULT + BULLET_DAMAGE_MULT_TIER_6
	recoil = RECOIL_AMOUNT_TIER_5

/obj/item/ammo_magazine/ascent/taj/militia/sniper
	name = "Rifle Magazine (.42)"
	desc = "An simple rifle magazine."
	caliber = ".42"
	icon = 'void-marines/bay_stuff/obj/ammo.dmi'
	icon_state = "hookmg_ammobox"
	w_class = SIZE_MEDIUM
	max_rounds = 5
	default_ammo = /datum/ammo/bullet/rifle/heavy/heap/ascent/taj
	gun_type = /obj/item/weapon/gun/ascent/taj/militia/rifle/sniper

/datum/ammo/bullet/rifle/heavy/heap/ascent/taj
	name = ".42 bullet"
	damage = 100 //match-grade munitions developing better velocity from the rifle
	flags_ammo_behavior = AMMO_BALLISTIC|AMMO_SNIPER|AMMO_IGNORE_COVER

	accurate_range_min = 4
	accurate_range = 32
	effective_range_max = 0
	max_range = 32
	accuracy = HIT_ACCURACY_TIER_8
	scatter = 0
	shell_speed = AMMO_SPEED_TIER_8
//MILITIA SNIPER RIFLE//
