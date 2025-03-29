// Tajaran Armory

/obj/item/weapon/gun/ascent/taj/pistol
	name = "Ash'ain-Pattern Pistol (7.97)"
	desc = "Very simple in design, but still very practical Militia pistol, used by most of Tajaran troops."
	icon = 'void-marines/bay_stuff/obj/guns/adhomian_heavy_pistol.dmi'
	icon_state = "adhomian_heavy_pistol"
	item_state = "adhomian_heavy_pistol"
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

	current_mag = /obj/item/ammo_magazine/ascent/taj/pistol
	caliber = "7.97"

	fire_sound = "vp70"

	reload_sound = 'sound/weapons/flipblade.ogg'
	cocked_sound = 'sound/weapons/gun_pistol_cocked.ogg'
	empty_sound = 'sound/weapons/gun_empty.ogg'

	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_ONE_HAND_WIELDED
	gun_category = GUN_CATEGORY_HANDGUN

/obj/item/weapon/gun/ascent/taj/pistol/set_gun_config_values()
	..()
	set_fire_delay(FIRE_DELAY_TIER_5)
	accuracy_mult = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_4
	accuracy_mult_unwielded = BASE_ACCURACY_MULT
	scatter = SCATTER_AMOUNT_TIER_8
	scatter_unwielded = SCATTER_AMOUNT_TIER_6
	damage_mult = BASE_BULLET_DAMAGE_MULT + BULLET_DAMAGE_MULT_TIER_6
	recoil_unwielded = RECOIL_AMOUNT_TIER_3

/obj/item/ammo_magazine/ascent/taj/pistol
	name = "\improper Pistol Magazine (7.97)"
	caliber = "7.97"
	icon = 'void-marines/bay_stuff/obj/ammo.dmi'
	icon_state = "45x"
	default_ammo = /datum/ammo/bullet/pistol/ascent/taj/pistol
	max_rounds = 10
	gun_type = /obj/item/weapon/gun/ascent/taj/pistol

/datum/ammo/bullet/pistol/ascent/taj/pistol
	name = "7.97 bullet"
	damage = 90
	accurate_range = 10
	accuracy = HIT_ACCURACY_TIER_10
	scatter = SCATTER_AMOUNT_TIER_10
	shell_speed = AMMO_SPEED_TIER_3
	effective_range_max = 5
	max_range = 20
	penetration = ARMOR_PENETRATION_TIER_6
