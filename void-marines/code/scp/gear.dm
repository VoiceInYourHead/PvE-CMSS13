// GOC

/obj/item/clothing/head/helmet/marine/veteran/goc
	name = "Global Occult Coalition helmet"
	desc = "A cyan standard issue helmet, with the United Nations' initials on the front. A lightweight helmet for their military forces."
	icon = 'void-marines/code/scp/icons/obj_head.dmi'
	item_icons = list(
		WEAR_HEAD = 'void-marines/code/scp/icons/onmob/onmob_head.dmi'
	)
	icon_state = "goc_helm"
	item_state = "goc_helm"

	flags_armor_protection = BODY_FLAG_HEAD
	armor_melee = CLOTHING_ARMOR_MEDIUMHIGH
	armor_bullet = CLOTHING_ARMOR_MEDIUMHIGH
	armor_energy = CLOTHING_ARMOR_MEDIUMLOW
	armor_bomb = CLOTHING_ARMOR_MEDIUM
	armor_bio = CLOTHING_ARMOR_VERYHIGHPLUS
	armor_rad = CLOTHING_ARMOR_VERYHIGHPLUS
	armor_internaldamage = CLOTHING_ARMOR_MEDIUMHIGH

	flags_inventory = COVEREYES|COVERMOUTH|BLOCKSHARPOBJ
	flags_inv_hide = HIDEEARS|HIDEEYES|HIDEALLHAIR
	flags_marine_helmet = NO_FLAGS

/obj/item/clothing/head/helmet/marine/veteran/goc/heavy
	name = "Global Occult Coalition heavy helmet"
	desc = "A cyan helmet with an added bulletproof visor, with the United Nations' initials on the front. A heavy helmet for a really big guys."
	icon_state = "goc_helmet"
	item_state = "goc_helmet"
	flags_armor_protection = BODY_FLAG_HEAD|BODY_FLAG_FACE|BODY_FLAG_EYES
	armor_melee = CLOTHING_ARMOR_HIGHPLUS
	armor_bullet = CLOTHING_ARMOR_HIGHPLUS
	armor_energy = CLOTHING_ARMOR_MEDIUMHIGH
	armor_bomb = CLOTHING_ARMOR_MEDIUM
	armor_bio = CLOTHING_ARMOR_GIGAHIGHPLUS
	armor_rad = CLOTHING_ARMOR_GIGAHIGHPLUS
	armor_internaldamage = CLOTHING_ARMOR_HIGHPLUS
	flags_inv_hide = HIDEEARS|HIDEEYES|HIDEFACE|HIDEMASK|HIDEALLHAIR

/obj/item/clothing/head/beret/goc
	name = "UN beret"
	desc = "A light blue beret with a officer's rank emblem. For officers that are more inclined towards style than safety."
	icon = 'void-marines/code/scp/icons/obj_head.dmi'
	item_icons = list(
		WEAR_HEAD = 'void-marines/code/scp/icons/onmob/onmob_head.dmi'
	)
	icon_state = "goc-beret"
	item_state = "goc-beret"

	armor_bio = CLOTHING_ARMOR_GIGAHIGHPLUS
	armor_rad = CLOTHING_ARMOR_GIGAHIGHPLUS

/obj/item/clothing/suit/storage/marine/veteran/goc
	name = "Global Occult Coalition armored vest"
	desc = "A black standard issue lightweight armored vest, denoting the initials of the United Nations, but of course they're the Global Occult Coalition."
	icon = 'void-marines/code/scp/icons/obj_suit.dmi'
	item_icons = list(
		WEAR_JACKET = 'void-marines/code/scp/icons/onmob/onmob_suit.dmi'
	)
	icon_state = "goc_vest"
	item_state = "goc_vest"
	uniform_restricted = null
	armor_melee = CLOTHING_ARMOR_MEDIUM
	armor_bullet = CLOTHING_ARMOR_HIGH
	armor_bomb = CLOTHING_ARMOR_MEDIUM
	armor_bio = CLOTHING_ARMOR_HIGH
	armor_rad = CLOTHING_ARMOR_HIGH
	armor_internaldamage = CLOTHING_ARMOR_MEDIUMHIGH

	flags_marine_armor = NO_FLAGS
	flags_atom = NO_NAME_OVERRIDE|NO_SNOW_TYPE
	flags_inventory = BLOCKSHARPOBJ
	flags_armor_protection = BODY_FLAG_CHEST|BODY_FLAG_GROIN
	flags_cold_protection = BODY_FLAG_CHEST|BODY_FLAG_GROIN
	flags_heat_protection = BODY_FLAG_CHEST|BODY_FLAG_GROIN

/obj/item/clothing/suit/storage/marine/veteran/goc/heavy
	name = "Global Occult Coalition heavy-plating armored vest"
	desc = "A black heavily armored vest, denoting the initials of the United Nations, but of course they're the Global Occult Coalition."
	icon_state = "goc_heavy_vest"
	item_state = "goc_heavy_vest"

	armor_melee = CLOTHING_ARMOR_MEDIUMHIGH
	armor_bullet = CLOTHING_ARMOR_HIGHPLUS
	armor_bomb = CLOTHING_ARMOR_HIGHPLUS
	armor_bio = CLOTHING_ARMOR_MEDIUMHIGH
	armor_rad = CLOTHING_ARMOR_MEDIUM
	armor_internaldamage = CLOTHING_ARMOR_MEDIUMHIGH

	storage_slots = 4
	slowdown = SLOWDOWN_ARMOR_LOWHEAVY
	movement_compensation = SLOWDOWN_ARMOR_MEDIUM

/obj/item/clothing/mask/gas/goc
	name = "GOC tactical gas mask"
	desc = "A glass gas mask that block all vision towards the person's identity. Can be connected to an air supply, this one is designed for the Global Occult Coalition."
	icon = 'void-marines/code/scp/icons/obj_mask.dmi'
	item_icons = list(
		WEAR_FACE = 'void-marines/code/scp/icons/onmob/onmob_mask.dmi'
	)
	icon_state = "goc-mask"
	item_state = "goc-mask"
	flags_armor_protection = BODY_FLAG_FACE|BODY_FLAG_EYES
	armor_bio = CLOTHING_ARMOR_GIGAHIGHPLUS
	armor_rad = CLOTHING_ARMOR_GIGAHIGHPLUS

/obj/item/clothing/under/marine/veteran/goc
	name = "Global Occult Coalition tactical jumpsuit"
	desc = "A blue-ish black tactical suit with a UNGOC logo on one of the shoulders. It's comfortable materials make it good for manueverability. All combat, all the time."
	icon = 'void-marines/code/scp/icons/obj_under.dmi'
	item_icons = list(
		WEAR_BODY = 'void-marines/code/scp/icons/onmob/onmob_under.dmi'
	)
	icon_state = "goc_jumpsuit"
	worn_state = "goc_jumpsuit"
	item_state = "goc_jumpsuit"

	flags_atom = NO_NAME_OVERRIDE|NO_SNOW_TYPE
	flags_jumpsuit = NO_FLAGS

	armor_melee = CLOTHING_ARMOR_LOW
	armor_bullet = CLOTHING_ARMOR_LOW
	armor_bomb = CLOTHING_ARMOR_LOW
	armor_internaldamage = CLOTHING_ARMOR_VERYLOW
	armor_bio = CLOTHING_ARMOR_VERYHIGH
	armor_rad = CLOTHING_ARMOR_VERYHIGH

	fire_intensity_resistance = BURN_LEVEL_TIER_1
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROT
	flags_armor_protection = BODY_FLAG_CHEST|BODY_FLAG_GROIN|BODY_FLAG_ARMS|BODY_FLAG_LEGS
	flags_cold_protection = BODY_FLAG_CHEST|BODY_FLAG_GROIN|BODY_FLAG_ARMS|BODY_FLAG_LEGS
	flags_heat_protection = BODY_FLAG_CHEST|BODY_FLAG_GROIN|BODY_FLAG_ARMS|BODY_FLAG_LEGS



// REPRESENTATIVES START //

/obj/item/clothing/under/marine/goc/representative
	name = "Global Occult Coalition formal suit"
	desc = "A white formal shirt, with a cyan suit trousers. It has insignia of a executive officer of the Global Occult Coalition. You have a feeling whoever wears this doesn't care for SoP."
	icon_state = "gocclothes"
	worn_state = "gocclothes"

/obj/item/clothing/suit/gocjacket
	name = "Global Occult Coalition formal jacket"
	desc = "A cyan formal coat, those who wear this are executive officers of the Global Occult Coalition, with insignia of such."
	icon_state = "gocjacket"
	icon = 'void-marines/code/scp/icons/obj_suit.dmi'
	item_icons = list(
		WEAR_JACKET = 'void-marines/code/scp/icons/onmob/onmob_suit.dmi'
	)
	icon_state = "goc_vest"
	item_state = "goc_vest"


/obj/item/weapon/gun/rifle/rmc_f90/bionational
	// desc = "The standard issue rifle of Bionational Spec-Ops. Modified version with addition of burst-fire mode and larger magazine."
