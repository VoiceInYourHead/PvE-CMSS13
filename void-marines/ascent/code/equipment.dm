// Alate's basic equipment

/obj/item/clothing/under/rank/alate
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

/obj/item/clothing/suit/armor/storage/alate
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

/obj/item/clothing/head/helmet/alate
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

/obj/item/clothing/shoes/jackboots/alate
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

/obj/item/clothing/suit/armor/storage/alate/exosuit
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

/obj/item/clothing/head/helmet/alate/exosuit
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

/obj/item/clothing/shoes/jackboots/alate/exosuit
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

/obj/item/clothing/gloves/combat/alate/exosuit
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

/obj/item/clothing/under/rank/gyne
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

/obj/item/clothing/suit/armor/storage/gyne/exosuit
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

/obj/item/clothing/head/helmet/gyne/exosuit
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

/obj/item/clothing/shoes/jackboots/gyne/exosuit
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

/obj/item/clothing/gloves/combat/gyne/exosuit
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
