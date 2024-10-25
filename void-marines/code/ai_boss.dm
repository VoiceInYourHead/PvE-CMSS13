/obj/item/clothing/suit/storage/marine/veteran/ai_boss
	name = "\improper Protector of the CORE"
	desc = "The last protector of the AI core."
	icon = 'void-marines/icons/sec.dmi'
	icon_state = "fmekasyndi_marshal"
	item_state = "fmekasyndi_marshal"
	slowdown = SLOWDOWN_ARMOR_MEDIUM
	armor_melee = CLOTHING_ARMOR_MEDIUM
	armor_bullet = CLOTHING_ARMOR_HIGH
	armor_bomb = CLOTHING_ARMOR_MEDIUM
	armor_bio = CLOTHING_ARMOR_HIGH
	armor_rad = CLOTHING_ARMOR_HIGH
	armor_internaldamage = CLOTHING_ARMOR_MEDIUMHIGH
	flags_marine_armor = NO_FLAGS
	flags_atom = NO_NAME_OVERRIDE|NO_SNOW_TYPE
	flags_inv_hide = HIDEEARS|HIDEEYES|HIDEFACE|HIDEMASK|HIDEALLHAIR
	flags_inventory = BLOCKSHARPOBJ|CANTSTRIP
	flags_armor_protection = BODY_FLAG_FULL_BODY
	flags_cold_protection = BODY_FLAG_FULL_BODY
	flags_heat_protection = BODY_FLAG_FULL_BODY
	uniform_restricted = list(/obj/item/clothing/under/marine)
	item_icons = list(
		WEAR_JACKET = 'void-marines/icons/sec.dmi',
	)
	item_state_slots = list(WEAR_JACKET = "fmekasyndi_marshal")
