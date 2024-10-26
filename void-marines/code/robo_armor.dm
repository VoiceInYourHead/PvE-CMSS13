/obj/item/clothing/suit/storage/marine/veteran/robot
	name = "\improper EXP-001-AGC"
	desc = "The experimental distant controlled robot, manufactured by UA."
	icon = 'void-marines/icons/robot.dmi'
	icon_state = "preview"
	item_state = "preview"

	armor_melee = CLOTHING_ARMOR_HIGH
	armor_bullet = CLOTHING_ARMOR_HIGH
	armor_laser = CLOTHING_ARMOR_HIGH
	armor_energy = CLOTHING_ARMOR_HIGH
	armor_bomb = CLOTHING_ARMOR_HIGH
	armor_bio = CLOTHING_ARMOR_HIGH
	armor_rad = CLOTHING_ARMOR_HIGH
	armor_internaldamage = CLOTHING_ARMOR_GIGAHIGHDOUBLEPLUSGOOD

	slowdown = SLOWDOWN_ARMOR_MEDIUM
	flags_marine_armor = NO_FLAGS
	flags_atom = NO_NAME_OVERRIDE|NO_SNOW_TYPE
	flags_inv_hide = HIDEEARS|HIDEEYES|HIDEFACE|HIDEMASK|HIDEALLHAIR
	flags_inventory = BLOCKSHARPOBJ|CANTSTRIP
	flags_armor_protection = BODY_FLAG_FULL_BODY
	flags_cold_protection = BODY_FLAG_FULL_BODY
	flags_heat_protection = BODY_FLAG_FULL_BODY
	uniform_restricted = list(/obj/item/clothing/under/marine)
	item_icons = list(
		WEAR_JACKET = 'void-marines/icons/robot.dmi',
	)
	item_state_slots = list(WEAR_JACKET = "preview")
