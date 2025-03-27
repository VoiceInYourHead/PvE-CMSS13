// Alate's basic equipment

/obj/item/clothing/under/rank/ascent/alate
	name = "Strange-shaped undersuit"
	desc = "It almost doesn't cover anything."
	icon = 'void-marines/ascent/icons/alate/onmob/onmob_under_alate.dmi'
	icon_state = "alate_form"
	item_state = "alate_form"
	worn_state = "alate_form"
	item_icons = list(
		WEAR_BODY = 'void-marines/ascent/icons/alate/onmob/onmob_under_alate.dmi'
	)

	color = COLOR_GRAY

/obj/item/clothing/suit/armor/storage/ascent/alate
	name = "Ascent utility suit"
	desc = "An light-armored combat suit, used by Alate workers."
	icon = 'void-marines/ascent/icons/clothing/obj_suit.dmi'
	icon_state = "utilitysuit"
	item_state = "utilitysuit"
	item_icons = list(
		WEAR_JACKET = 'void-marines/ascent/icons/alate/onmob/onmob_suit_alate.dmi'
	)

	flags_armor_protection = BODY_FLAG_CHEST|BODY_FLAG_GROIN|BODY_FLAG_ARMS|BODY_FLAG_LEGS
	armor_melee = CLOTHING_ARMOR_MEDIUM
	armor_bullet = CLOTHING_ARMOR_MEDIUMLOW
	armor_laser = CLOTHING_ARMOR_MEDIUMHIGH
	armor_energy = CLOTHING_ARMOR_MEDIUMHIGH
	armor_bomb = CLOTHING_ARMOR_LOW

	armor_bio = CLOTHING_ARMOR_GIGAHIGH
	armor_rad = CLOTHING_ARMOR_GIGAHIGH

	armor_internaldamage = CLOTHING_ARMOR_MEDIUMLOW

/obj/item/clothing/head/helmet/ascent/alate
	name = "Ascent armored helmet"
	desc = "An combat-oriented light purple helmet."
	icon = 'void-marines/ascent/icons/clothing/obj_head.dmi'
	icon_state = "ascent_general"
	item_state = "ascent_general"
	item_icons = list(
		WEAR_HEAD = 'void-marines/ascent/icons/alate/onmob/onmob_head_alate.dmi'
	)

	flags_armor_protection = BODY_FLAG_HEAD|BODY_FLAG_FACE|BODY_FLAG_EYES
	armor_melee = CLOTHING_ARMOR_HIGH
	armor_bullet = CLOTHING_ARMOR_MEDIUM
	armor_laser = CLOTHING_ARMOR_HIGH
	armor_energy = CLOTHING_ARMOR_HIGH
	armor_bomb = CLOTHING_ARMOR_LOW

	armor_bio = CLOTHING_ARMOR_GIGAHIGH
	armor_rad = CLOTHING_ARMOR_GIGAHIGH

	armor_internaldamage = CLOTHING_ARMOR_MEDIUMHIGH

/obj/item/clothing/shoes/jackboots/ascent/alate
	name = "Light-armored appendages"
	desc = "Simple utility boots, used by Alate workers."
	icon_state = "ascent_boots1"
	item_state = "ascent_boots1"
	icon = 'void-marines/ascent/icons/alate/onmob/onmob_shoes_alate.dmi'
	item_icons = list(
		WEAR_FEET = 'void-marines/ascent/icons/alate/onmob/onmob_shoes_alate.dmi'
	)

	flags_armor_protection = BODY_FLAG_FEET
	armor_melee = CLOTHING_ARMOR_MEDIUMLOW
	armor_bullet = CLOTHING_ARMOR_MEDIUMLOW
	armor_laser = CLOTHING_ARMOR_MEDIUMHIGH
	armor_energy = CLOTHING_ARMOR_MEDIUMHIGH
	armor_bomb = CLOTHING_ARMOR_LOW

	armor_bio = CLOTHING_ARMOR_GIGAHIGH
	armor_rad = CLOTHING_ARMOR_GIGAHIGH

	armor_internaldamage = CLOTHING_ARMOR_MEDIUM

// Alate's combat armor

/obj/item/clothing/suit/armor/storage/ascent/alate/exosuit
	name = "Ascent combat armor"
	desc = "An heavy armored battle suit, used by alate soldiers."
	icon = 'void-marines/ascent/icons/clothing/obj_suit.dmi'
	icon_state = "kexosuit_sealed"
	item_state = "kexosuit_sealed"
	item_icons = list(
		WEAR_JACKET = 'void-marines/ascent/icons/alate/onmob/onmob_suit_alate.dmi'
	)

	flags_armor_protection = BODY_FLAG_CHEST|BODY_FLAG_GROIN
	armor_melee = CLOTHING_ARMOR_ULTRAHIGH
	armor_bullet = CLOTHING_ARMOR_HIGH
	armor_laser = CLOTHING_ARMOR_ULTRAHIGH
	armor_energy = CLOTHING_ARMOR_ULTRAHIGH
	armor_bomb = CLOTHING_ARMOR_HIGH

	armor_bio = CLOTHING_ARMOR_GIGAHIGH
	armor_rad = CLOTHING_ARMOR_GIGAHIGH

	armor_internaldamage = CLOTHING_ARMOR_GIGAHIGH

/obj/item/clothing/head/helmet/ascent/alate/exosuit
	name = "Ascent exosuit helmet"
	desc = "An armored head with large antenna's."
	icon = 'void-marines/ascent/icons/clothing/obj_head.dmi'
	icon_state = "kexosuit_sealed"
	item_state = "kexosuit_sealed"
	item_icons = list(
		WEAR_HEAD = 'void-marines/ascent/icons/alate/onmob/onmob_head_alate.dmi'
	)

	flags_armor_protection = BODY_FLAG_HEAD|BODY_FLAG_FACE|BODY_FLAG_EYES
	armor_melee = CLOTHING_ARMOR_GIGAHIGH
	armor_bullet = CLOTHING_ARMOR_ULTRAHIGH
	armor_laser = CLOTHING_ARMOR_GIGAHIGH
	armor_energy = CLOTHING_ARMOR_GIGAHIGH
	armor_bomb = CLOTHING_ARMOR_HIGH

	armor_bio = CLOTHING_ARMOR_GIGAHIGH
	armor_rad = CLOTHING_ARMOR_GIGAHIGH

	armor_internaldamage = CLOTHING_ARMOR_HIGH

/obj/item/clothing/shoes/jackboots/ascent/alate/exosuit
	name = "exosuit appendages"
	desc = "Combat boots, used by Alate soldiers."
	icon_state = "kexosuit_sealed"
	item_state = "kexosuit_sealed"
	icon = 'void-marines/ascent/icons/clothing/obj_feet.dmi'
	item_icons = list(
		WEAR_FEET = 'void-marines/ascent/icons/alate/onmob/onmob_shoes_alate.dmi'
	)

	flags_armor_protection = BODY_FLAG_FEET|BODY_FLAG_LEGS
	armor_melee = CLOTHING_ARMOR_ULTRAHIGH
	armor_bullet = CLOTHING_ARMOR_MEDIUMHIGH
	armor_laser = CLOTHING_ARMOR_MEDIUMHIGH
	armor_energy = CLOTHING_ARMOR_MEDIUMHIGH
	armor_bomb = CLOTHING_ARMOR_MEDIUMHIGH

	armor_bio = CLOTHING_ARMOR_GIGAHIGH
	armor_rad = CLOTHING_ARMOR_GIGAHIGH

	armor_internaldamage = CLOTHING_ARMOR_GIGAHIGH

/obj/item/clothing/gloves/combat/ascent/alate/exosuit
	name = "exosuit appendages"
	desc = "Combat arms, used by Alate soldiers."
	icon = 'void-marines/ascent/icons/alate/onmob/onmob_gloves_alate.dmi'
	icon_state = "kexosuit_sealed"
	item_state = "kexosuit_sealed"
	item_icons = list(
		WEAR_HANDS = 'void-marines/ascent/icons/alate/onmob/onmob_gloves_alate.dmi'
	)

	flags_armor_protection = BODY_FLAG_HANDS|BODY_FLAG_ARMS
	armor_melee = CLOTHING_ARMOR_ULTRAHIGH
	armor_bullet = CLOTHING_ARMOR_MEDIUMHIGH
	armor_laser = CLOTHING_ARMOR_MEDIUMHIGH
	armor_energy = CLOTHING_ARMOR_MEDIUMHIGH
	armor_bomb = CLOTHING_ARMOR_MEDIUMHIGH

	armor_bio = CLOTHING_ARMOR_GIGAHIGH
	armor_rad = CLOTHING_ARMOR_GIGAHIGH

	armor_internaldamage = CLOTHING_ARMOR_GIGAHIGH

// Gyne combat equipment

/obj/item/clothing/under/rank/ascent/gyne
	name = "Strange-shaped undersuit"
	desc = "It almost doesn't cover anything."
	icon = 'void-marines/ascent/icons/gyne/onmob/onmob_under_gyne.dmi'
	icon_state = "ascent_s"
	item_state = "ascent_s"
	worn_state = "ascent_s"
	item_icons = list(
		WEAR_BODY = 'void-marines/ascent/icons/gyne/onmob/onmob_under_gyne.dmi'
	)

	color = COLOR_GRAY

/obj/item/clothing/suit/armor/storage/ascent/gyne/exosuit
	name = "Ascent elite combat armor"
	desc = "An heavy armored battle suit, used by Gyne Generals."
	icon = 'void-marines/ascent/icons/clothing/obj_suit.dmi'
	icon_state = "kexosuit_sealed"
	item_state = "kexosuit_sealed"
	item_icons = list(
		WEAR_JACKET = 'void-marines/ascent/icons/gyne/onmob/onmob_suit_gyne.dmi'
	)

	flags_armor_protection = BODY_FLAG_CHEST|BODY_FLAG_GROIN
	armor_melee = CLOTHING_ARMOR_GIGAHIGHPLUS
	armor_bullet = CLOTHING_ARMOR_ULTRAHIGH
	armor_laser = CLOTHING_ARMOR_GIGAHIGHPLUS
	armor_energy = CLOTHING_ARMOR_GIGAHIGHPLUS
	armor_bomb = CLOTHING_ARMOR_ULTRAHIGH

	armor_bio = CLOTHING_ARMOR_GIGAHIGH
	armor_rad = CLOTHING_ARMOR_GIGAHIGH

	armor_internaldamage = CLOTHING_ARMOR_GIGAHIGHPLUS

/obj/item/clothing/head/helmet/ascent/gyne/exosuit
	name = "Ascent elite exosuit helmet"
	desc = "An armored head with large antenna's."
	icon = 'void-marines/ascent/icons/clothing/obj_head.dmi'
	icon_state = "kexosuit_sealed"
	item_state = "kexosuit_sealed"
	item_icons = list(
		WEAR_HEAD = 'void-marines/ascent/icons/gyne/onmob/onmob_head_gyne.dmi'
	)

	flags_armor_protection = BODY_FLAG_HEAD|BODY_FLAG_FACE|BODY_FLAG_EYES
	armor_melee = CLOTHING_ARMOR_HARDCORE
	armor_bullet = CLOTHING_ARMOR_ULTRAHIGH
	armor_laser = CLOTHING_ARMOR_HARDCORE
	armor_energy = CLOTHING_ARMOR_HARDCORE
	armor_bomb = CLOTHING_ARMOR_ULTRAHIGH

	armor_bio = CLOTHING_ARMOR_GIGAHIGH
	armor_rad = CLOTHING_ARMOR_GIGAHIGH

	armor_internaldamage = CLOTHING_ARMOR_GIGAHIGHPLUS

/obj/item/clothing/shoes/jackboots/ascent/gyne/exosuit
	name = "exosuit appendages"
	desc = "Combat boots, used by Gyne Generals."
	icon_state = "kexosuit_sealed"
	item_state = "kexosuit_sealed"
	icon = 'void-marines/ascent/icons/clothing/obj_feet.dmi'
	item_icons = list(
		WEAR_FEET = 'void-marines/ascent/icons/gyne/onmob/onmob_shoes_gyne.dmi'
	)

	flags_armor_protection = BODY_FLAG_FEET|BODY_FLAG_LEGS
	armor_melee = CLOTHING_ARMOR_ULTRAHIGH
	armor_bullet = CLOTHING_ARMOR_MEDIUMHIGH
	armor_laser = CLOTHING_ARMOR_MEDIUMHIGH
	armor_energy = CLOTHING_ARMOR_MEDIUMHIGH
	armor_bomb = CLOTHING_ARMOR_MEDIUMHIGH

	armor_bio = CLOTHING_ARMOR_GIGAHIGH
	armor_rad = CLOTHING_ARMOR_GIGAHIGH

	armor_internaldamage = CLOTHING_ARMOR_GIGAHIGH

/obj/item/clothing/gloves/combat/ascent/gyne/exosuit
	name = "exosuit appendages"
	desc = "Combat arms, used by Gyne Generals."
	icon = 'void-marines/ascent/icons/gyne/onmob/onmob_gloves_gyne.dmi'
	icon_state = "kexosuit_sealed"
	item_state = "kexosuit_sealed"
	item_icons = list(
		WEAR_HANDS = 'void-marines/ascent/icons/gyne/onmob/onmob_gloves_gyne.dmi'
	)

	flags_armor_protection = BODY_FLAG_HANDS|BODY_FLAG_ARMS
	armor_melee = CLOTHING_ARMOR_ULTRAHIGH
	armor_bullet = CLOTHING_ARMOR_MEDIUMHIGH
	armor_laser = CLOTHING_ARMOR_MEDIUMHIGH
	armor_energy = CLOTHING_ARMOR_MEDIUMHIGH
	armor_bomb = CLOTHING_ARMOR_MEDIUMHIGH

	armor_bio = CLOTHING_ARMOR_GIGAHIGH
	armor_rad = CLOTHING_ARMOR_GIGAHIGH

	armor_internaldamage = CLOTHING_ARMOR_GIGAHIGH

// Monarch combat equipment

/obj/item/clothing/under/rank/ascent/monarch
	name = "Strange-shaped undersuit"
	desc = "It almost doesn't cover anything."
	icon = 'void-marines/ascent/icons/gas/onmob/onmob_under_gas.dmi'
	icon_state = "gear_harness_s"
	item_state = "gear_harness_s"
	worn_state = "gear_harness_s"
	item_icons = list(
		WEAR_BODY = 'void-marines/ascent/icons/gas/onmob/onmob_under_gas.dmi'
	)

/obj/item/clothing/suit/armor/storage/ascent/monarch/exosuit
	name = "Ascent elite combat armor"
	desc = "An heavy armored battle suit, used by Monarch's elite soldiers."
	icon = 'void-marines/ascent/icons/clothing/obj_suit.dmi'
	icon_state = "kexosuit_sealed"
	item_state = "kexosuit_sealed"
	item_icons = list(
		WEAR_JACKET = 'void-marines/ascent/icons/gas/onmob/onmob_back_gas.dmi'
	)

	flags_armor_protection = BODY_FLAG_CHEST|BODY_FLAG_GROIN
	armor_melee = CLOTHING_ARMOR_ULTRAHIGH
	armor_bullet = CLOTHING_ARMOR_HIGH
	armor_laser = CLOTHING_ARMOR_ULTRAHIGH
	armor_energy = CLOTHING_ARMOR_ULTRAHIGH
	armor_bomb = CLOTHING_ARMOR_HIGH

	armor_bio = CLOTHING_ARMOR_GIGAHIGH
	armor_rad = CLOTHING_ARMOR_GIGAHIGH

	armor_internaldamage = CLOTHING_ARMOR_GIGAHIGH

/obj/item/clothing/head/helmet/ascent/monarch/exosuit
	name = "Ascent elite exosuit helmet"
	desc = "An armored head with large antenna's."
	icon = 'void-marines/ascent/icons/clothing/obj_head.dmi'
	icon_state = "kexosuit_sealed"
	item_state = "kexosuit_sealed"
	item_icons = list(
		WEAR_HEAD = 'void-marines/ascent/icons/gas/onmob/onmob_head_gas.dmi'
	)

	flags_armor_protection = BODY_FLAG_HEAD|BODY_FLAG_FACE|BODY_FLAG_EYES
	armor_melee = CLOTHING_ARMOR_HIGH
	armor_bullet = CLOTHING_ARMOR_MEDIUM
	armor_laser = CLOTHING_ARMOR_HIGH
	armor_energy = CLOTHING_ARMOR_HIGH
	armor_bomb = CLOTHING_ARMOR_LOW

	armor_bio = CLOTHING_ARMOR_GIGAHIGH
	armor_rad = CLOTHING_ARMOR_GIGAHIGH

	armor_internaldamage = CLOTHING_ARMOR_MEDIUMHIGH

/obj/item/clothing/shoes/jackboots/ascent/monarch/exosuit
	name = "exosuit appendages"
	desc = "Combat boots, used by Monarch's elite soldiers."
	icon_state = "kexosuit_sealed"
	item_state = "kexosuit_sealed"
	icon = 'void-marines/ascent/icons/clothing/obj_feet.dmi'
	item_icons = list(
		WEAR_FEET = 'void-marines/ascent/icons/gas/onmob/onmob_suit_gas.dmi'
	)

	flags_armor_protection = BODY_FLAG_FEET|BODY_FLAG_LEGS
	armor_melee = CLOTHING_ARMOR_ULTRAHIGH
	armor_bullet = CLOTHING_ARMOR_MEDIUMHIGH
	armor_laser = CLOTHING_ARMOR_MEDIUMHIGH
	armor_energy = CLOTHING_ARMOR_MEDIUMHIGH
	armor_bomb = CLOTHING_ARMOR_MEDIUMHIGH

	armor_bio = CLOTHING_ARMOR_GIGAHIGH
	armor_rad = CLOTHING_ARMOR_GIGAHIGH

	armor_internaldamage = CLOTHING_ARMOR_GIGAHIGH

/obj/item/clothing/gloves/combat/ascent/monarch/exosuit
	name = "exosuit appendages"
	desc = "Combat arms, used by Monarch's elite soldiers."
	icon = 'void-marines/ascent/icons/gas/onmob/onmob_hands_gas.dmi'
	icon_state = "kexosuit_sealed"
	item_state = "kexosuit_sealed"
	item_icons = list(
		WEAR_HANDS = 'void-marines/ascent/icons/gas/onmob/onmob_hands_gas.dmi'
	)

	flags_armor_protection = BODY_FLAG_HANDS|BODY_FLAG_ARMS
	armor_melee = CLOTHING_ARMOR_ULTRAHIGH
	armor_bullet = CLOTHING_ARMOR_MEDIUMHIGH
	armor_laser = CLOTHING_ARMOR_MEDIUMHIGH
	armor_energy = CLOTHING_ARMOR_MEDIUMHIGH
	armor_bomb = CLOTHING_ARMOR_MEDIUMHIGH

	armor_bio = CLOTHING_ARMOR_GIGAHIGH
	armor_rad = CLOTHING_ARMOR_GIGAHIGH

	armor_internaldamage = CLOTHING_ARMOR_GIGAHIGH

// Tajaran regular Army

/obj/item/clothing/under/rank/ascent/taj/militia
	name = "Dusted Militia uniform"
	desc = "Pair of camo pants and white shirt."
	icon = 'void-marines/ascent/icons/tajaran/onmob/onmob_under.dmi'
	icon_state = "taj_old_uniform_s"
	item_state = "taj_old_uniform_s"
	worn_state = "taj_old_uniform_s"
	item_icons = list(
		WEAR_BODY = 'void-marines/ascent/icons/tajaran/onmob/onmob_under.dmi'
	)

/obj/item/clothing/under/rank/ascent/taj/militia_officer
	name = "Dusted Militia uniform"
	desc = "Pair of camo pants and white shirt."
	icon = 'void-marines/ascent/icons/tajaran/tajara_items.dmi'
	icon_state = "space_commissar_un"
	item_state = "space_commissar_un"
	worn_state = "space_commissar_un"
	item_icons = list(
		WEAR_BODY = 'void-marines/ascent/icons/tajaran/tajara_items.dmi'
	)

/obj/item/clothing/mask/ascent/taj/militia
	name = "Dusted Turban"
	desc = "An practical, but not much defensive face cover."
	icon_state = "turban2_flipped"
	item_state = "turban2_flipped"
	icon = 'void-marines/ascent/icons/tajaran/onmob/onmob_head.dmi'
	item_icons = list(
		WEAR_FACE = 'void-marines/ascent/icons/tajaran/onmob/onmob_head.dmi'
	)
	color = "#47443f"

/obj/item/clothing/mask/ascent/taj/militia/open
	name = "Dusted Turban"
	desc = "An practical, but not much defensive face cover."
	icon_state = "turban2"
	item_state = "turban2"
	icon = 'void-marines/ascent/icons/tajaran/onmob/onmob_head.dmi'
	item_icons = list(
		WEAR_FACE = 'void-marines/ascent/icons/tajaran/onmob/onmob_head.dmi'
	)
	color = "#47443f"

/obj/item/clothing/mask/ascent/taj/militia_scarf
	name = "Black Scarf"
	desc = "An practical, but not much defensive face cover."
	icon_state = "furscarf_black"
	item_state = "furscarf_black"
	icon = 'void-marines/ascent/icons/tajaran/tajara_items.dmi'
	item_icons = list(
		WEAR_FACE = 'void-marines/ascent/icons/tajaran/tajara_items.dmi'
	)

/obj/item/clothing/head/helmet/ascent/taj/militia
	name = "Dusted Headband"
	desc = "No, it doesn't protect anything. At all. But looks badass!"
	icon = 'void-marines/ascent/icons/tajaran/onmob/onmob_head.dmi'
	icon_state = "headband"
	item_state = "headband"
	item_icons = list(
		WEAR_HEAD = 'void-marines/ascent/icons/tajaran/onmob/onmob_head.dmi'
	)

	flags_armor_protection = BODY_FLAG_HEAD
	armor_melee = CLOTHING_ARMOR_NONE
	armor_bullet = CLOTHING_ARMOR_NONE
	armor_laser = CLOTHING_ARMOR_NONE
	armor_energy = CLOTHING_ARMOR_NONE
	armor_bomb = CLOTHING_ARMOR_NONE

	armor_bio = CLOTHING_ARMOR_NONE
	armor_rad = CLOTHING_ARMOR_NONE

	armor_internaldamage = CLOTHING_ARMOR_NONE

/obj/item/clothing/head/helmet/ascent/taj/militia_turban
	name = "Dusted Turban"
	desc = "No, it doesn't protect anything. At all. But looks badass!"
	icon = 'void-marines/ascent/icons/tajaran/onmob/onmob_head.dmi'
	icon_state = "turban1"
	item_state = "turban1"
	item_icons = list(
		WEAR_HEAD = 'void-marines/ascent/icons/tajaran/onmob/onmob_head.dmi'
	)

	color = "#47443f"

	flags_armor_protection = BODY_FLAG_HEAD
	armor_melee = CLOTHING_ARMOR_NONE
	armor_bullet = CLOTHING_ARMOR_NONE
	armor_laser = CLOTHING_ARMOR_NONE
	armor_energy = CLOTHING_ARMOR_NONE
	armor_bomb = CLOTHING_ARMOR_NONE

	armor_bio = CLOTHING_ARMOR_NONE
	armor_rad = CLOTHING_ARMOR_NONE

	armor_internaldamage = CLOTHING_ARMOR_NONE

/obj/item/clothing/head/helmet/ascent/taj/militia_armored
	name = "Old-looking Helmet"
	desc = "An armored helmet. Looks like something straight from WW1!"
	icon = 'void-marines/ascent/icons/tajaran/tajara_items.dmi'
	icon_state = "kettle_he"
	item_state = "kettle_he"
	item_icons = list(
		WEAR_HEAD = 'void-marines/ascent/icons/tajaran/tajara_items.dmi'
	)

	flags_armor_protection = BODY_FLAG_HEAD
	armor_melee = CLOTHING_ARMOR_HIGH
	armor_bullet = CLOTHING_ARMOR_MEDIUMHIGH
	armor_laser = CLOTHING_ARMOR_NONE
	armor_energy = CLOTHING_ARMOR_NONE
	armor_bomb = CLOTHING_ARMOR_MEDIUMHIGH

	armor_bio = CLOTHING_ARMOR_NONE
	armor_rad = CLOTHING_ARMOR_NONE

	armor_internaldamage = CLOTHING_ARMOR_HIGH

/obj/item/clothing/head/helmet/ascent/taj/militia_officer
	name = "Golden-Trimmed Cap"
	desc = "An armored cap, worn by Tajaran Militia officers."
	icon = 'void-marines/ascent/icons/tajaran/tajara_items.dmi'
	icon_state = "space_commissar_hat_he"
	item_state = "space_commissar_hat_he"
	item_icons = list(
		WEAR_HEAD = 'void-marines/ascent/icons/tajaran/tajara_items.dmi'
	)

	flags_armor_protection = BODY_FLAG_HEAD
	armor_melee = CLOTHING_ARMOR_MEDIUM
	armor_bullet = CLOTHING_ARMOR_MEDIUM
	armor_laser = CLOTHING_ARMOR_NONE
	armor_energy = CLOTHING_ARMOR_NONE
	armor_bomb = CLOTHING_ARMOR_MEDIUM

	armor_bio = CLOTHING_ARMOR_NONE
	armor_rad = CLOTHING_ARMOR_NONE

	armor_internaldamage = CLOTHING_ARMOR_MEDIUM

/obj/item/clothing/suit/armor/storage/ascent/taj/militia
	name = "Light-armored plate"
	desc = "Small, probably not that expensive armored plate."
	icon = 'void-marines/ascent/icons/tajaran/tajara_items.dmi'
	icon_state = "cuirass_su"
	item_state = "cuirass_su"
	item_icons = list(
		WEAR_JACKET = 'void-marines/ascent/icons/tajaran/tajara_items.dmi'
	)

	flags_armor_protection = BODY_FLAG_CHEST|BODY_FLAG_GROIN
	armor_melee = CLOTHING_ARMOR_HIGH
	armor_bullet = CLOTHING_ARMOR_MEDIUMLOW
	armor_laser = CLOTHING_ARMOR_NONE
	armor_energy = CLOTHING_ARMOR_NONE
	armor_bomb = CLOTHING_ARMOR_LOW

	armor_bio = CLOTHING_ARMOR_NONE
	armor_rad = CLOTHING_ARMOR_NONE

	armor_internaldamage = CLOTHING_ARMOR_HIGH

/obj/item/clothing/suit/armor/storage/ascent/taj/militia_officer
	name = "Armored Trenchcoat"
	desc = "An dusted trench with armored plates attached to it."
	icon = 'void-marines/ascent/icons/tajaran/tajara_items.dmi'
	icon_state = "hunter_coat_su"
	item_state = "hunter_coat_su"
	item_icons = list(
		WEAR_JACKET = 'void-marines/ascent/icons/tajaran/tajara_items.dmi'
	)

	flags_armor_protection = BODY_FLAG_CHEST|BODY_FLAG_GROIN|BODY_FLAG_ARMS|BODY_FLAG_LEGS
	armor_melee = CLOTHING_ARMOR_HIGH
	armor_bullet = CLOTHING_ARMOR_MEDIUMLOW
	armor_laser = CLOTHING_ARMOR_NONE
	armor_energy = CLOTHING_ARMOR_NONE
	armor_bomb = CLOTHING_ARMOR_LOW

	armor_bio = CLOTHING_ARMOR_NONE
	armor_rad = CLOTHING_ARMOR_NONE

	armor_internaldamage = CLOTHING_ARMOR_HIGH
