//SPECIES CODE
#define SPECIES_TAJARAN "Tajaran"

/obj/effect/temp_visual/dir_setting/bloodsplatter/tajaran
	splatter_type = "csplatter"
	color = "#725379"

/mob/living/carbon/human/tajaran/Initialize(mapload, new_species = SPECIES_TAJARAN)
	. = ..(mapload, new_species)

/datum/species/tajaran
	group = SPECIES_TAJARAN
	name = SPECIES_TAJARAN
	icobase = 'void-marines/ascent/icons/tajaran/body.dmi'
	deform = 'void-marines/ascent/icons/tajaran/body.dmi'
	eye_icon_location = 'void-marines/ascent/icons/tajaran/eyes.dmi'
	eyes = "eyes_s"
	blood_mask = 'void-marines/ascent/icons/tajaran/blood_mask.dmi'
	mob_flags = KNOWS_TECHNOLOGY
	pain_type = /datum/pain/xeno
	unarmed_type = /datum/unarmed_attack/claws/strong
	secondary_unarmed_type = /datum/unarmed_attack/bite/strong
	death_message = "lets out a faint scream as it collapses and stops moving..."
	knock_down_reduction = 0.5
	stun_reduction = 0.5
	gibbed_anim = "gibbed-m"
	dusted_anim = "dust-m"
	mob_inherent_traits = list(
		TRAIT_EMOTE_CD_EXEMPT,
		TRAIT_YAUTJA_TECH,
		TRAIT_FOREIGN_BIO,
	)
	blood_color = "#725379"
	uses_skin_color = FALSE
	speech_sounds = list()
	speech_chance = 100

	slowdown = -1 //GOTTA GO FAST BOIIII!!! быстрее алатов и гиин, но всё ещё медленней ГБСов и Монархов
	total_health = 80 //слабее человека

	brute_mod = 0.8
	burn_mod = 0.8

	bloodsplatter_type = /obj/effect/temp_visual/dir_setting/bloodsplatter/tajaran

/datum/species/tajaran/handle_post_spawn(mob/living/carbon/human/H)
	H.universal_speak = TRUE
	H.universal_understand = TRUE
	H.gender = PLURAL

	return ..()

/datum/species/tajaran/handle_on_fire(humanoidmob)
	. = ..()
	INVOKE_ASYNC(humanoidmob, TYPE_PROC_REF(/mob, emote), pick("pain", "scream"))

//SPECIES EQUIPMENT

// Literally just boots
/obj/item/clothing/shoes/jackboots/taj/combat
	name = "Combat Boots"
	desc = "Simple brown shoes."
	icon_state = "taj_old_shoes"
	item_state = "taj_old_shoes"
	icon = 'void-marines/ascent/icons/tajaran/onmob/onmob_feet.dmi'
	item_icons = list(
		WEAR_FEET = 'void-marines/ascent/icons/tajaran/onmob/onmob_feet.dmi'
	)

/obj/item/clothing/shoes/jackboots/taj/combat/black
	name = "Combat Boots"
	desc = "Simple black shoes."
	icon_state = "taj_new_shoes"
	item_state = "taj_new_shoes"
	icon = 'void-marines/ascent/icons/tajaran/onmob/onmob_feet.dmi'
	item_icons = list(
		WEAR_FEET = 'void-marines/ascent/icons/tajaran/onmob/onmob_feet.dmi'
	)

// Regular Militia Equipment
/obj/item/clothing/under/rank/ascent/taj/militia/regular
	name = "Dusted Militia uniform"
	desc = "Pair of camo pants and white shirt."
	icon = 'void-marines/ascent/icons/tajaran/onmob/onmob_under.dmi'
	icon_state = "taj_old_uniform_s"
	item_state = "taj_old_uniform_s"
	worn_state = "taj_old_uniform_s"
	item_icons = list(
		WEAR_BODY = 'void-marines/ascent/icons/tajaran/onmob/onmob_under.dmi'
	)

/obj/item/clothing/accessory/storage/ascent/taj/militia/regular_coat
	name = "Dusted Militia coat"
	desc = "An old desert camo coat, used by Tajaran Militia."
	icon_state = "taj_overcoat_s"
	item_state = "taj_overcoat_s"
	icon = 'void-marines/ascent/icons/tajaran/onmob/onmob_suit.dmi'
	accessory_icons = list(WEAR_BODY = 'void-marines/ascent/icons/tajaran/onmob/onmob_suit.dmi', WEAR_JACKET = 'void-marines/ascent/icons/tajaran/onmob/onmob_suit.dmi')

/obj/item/clothing/head/helmet/ascent/taj/militia/medium
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

/obj/item/clothing/suit/armor/storage/ascent/taj/militia/medium
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

// Regular Militia Officer Equipment
/obj/item/clothing/under/rank/ascent/taj/militia/officer
	name = "Dusted Militia uniform"
	desc = "Pair of camo pants and white shirt."
	icon = 'void-marines/ascent/icons/tajaran/tajara_items.dmi'
	icon_state = "space_commissar_un"
	item_state = "space_commissar_un"
	worn_state = "space_commissar_un"
	item_icons = list(
		WEAR_BODY = 'void-marines/ascent/icons/tajaran/tajara_items.dmi'
	)

/obj/item/clothing/head/helmet/ascent/taj/militia/officer
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

/obj/item/clothing/suit/armor/storage/ascent/taj/militia/officer
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

// Regular Militia Heavy Armor
/obj/item/clothing/head/helmet/ascent/taj/militia/heavy
	name = "Strange diving helmet"
	desc = "An highly-armored helmet. Looks like someone's diving gear!"
	icon = 'void-marines/ascent/icons/tajaran/tajara_items.dmi'
	icon_state = "nkavoidhelm_he"
	item_state = "nkavoidhelm_he"
	item_icons = list(
		WEAR_HEAD = 'void-marines/ascent/icons/tajaran/tajara_items.dmi'
	)

	flags_armor_protection = BODY_FLAG_HEAD
	armor_melee = CLOTHING_ARMOR_GIGAHIGH
	armor_bullet = CLOTHING_ARMOR_VERYHIGH
	armor_laser = CLOTHING_ARMOR_MEDIUMHIGH
	armor_energy = CLOTHING_ARMOR_MEDIUMHIGH
	armor_bomb = CLOTHING_ARMOR_GIGAHIGH

	armor_bio = CLOTHING_ARMOR_MEDIUMHIGH
	armor_rad = CLOTHING_ARMOR_MEDIUMHIGH

	armor_internaldamage = CLOTHING_ARMOR_HIGH

/obj/item/clothing/suit/armor/storage/ascent/taj/militia/heavy
	name = "Strange Bomb-suit"
	desc = "Very large protective suit."
	icon = 'void-marines/ascent/icons/tajaran/tajara_items.dmi'
	icon_state = "nkavoid_su"
	item_state = "nkavoid_su"
	item_icons = list(
		WEAR_JACKET = 'void-marines/ascent/icons/tajaran/tajara_items.dmi'
	)

	flags_armor_protection = BODY_FLAG_CHEST|BODY_FLAG_GROIN|BODY_FLAG_ARMS|BODY_FLAG_LEGS|BODY_FLAG_HANDS|BODY_FLAG_FEET
	armor_melee = CLOTHING_ARMOR_VERYHIGHPLUS
	armor_bullet = CLOTHING_ARMOR_HIGH
	armor_laser = CLOTHING_ARMOR_MEDIUMHIGH
	armor_energy = CLOTHING_ARMOR_MEDIUMHIGH
	armor_bomb = CLOTHING_ARMOR_VERYHIGHPLUS

	armor_bio = CLOTHING_ARMOR_VERYHIGHPLUS
	armor_rad = CLOTHING_ARMOR_VERYHIGHPLUS

	armor_internaldamage = CLOTHING_ARMOR_HIGH

// Regular Militia Various Headgear
/obj/item/clothing/mask/ascent/taj/militia/turban
	name = "Dusted Turban"
	desc = "An practical, but not much defensive face cover."
	icon_state = "turban2_flipped"
	item_state = "turban2_flipped"
	icon = 'void-marines/ascent/icons/tajaran/onmob/onmob_head.dmi'
	item_icons = list(
		WEAR_FACE = 'void-marines/ascent/icons/tajaran/onmob/onmob_head.dmi'
	)
	color = "#47443f"

/obj/item/clothing/mask/ascent/taj/militia/turban/open
	name = "Dusted Turban"
	desc = "An practical, but not much defensive face cover."
	icon_state = "turban2"
	item_state = "turban2"
	icon = 'void-marines/ascent/icons/tajaran/onmob/onmob_head.dmi'
	item_icons = list(
		WEAR_FACE = 'void-marines/ascent/icons/tajaran/onmob/onmob_head.dmi'
	)
	color = "#47443f"

/obj/item/clothing/mask/ascent/taj/militia/scarf
	name = "Black Scarf"
	desc = "An practical, but not much defensive face cover."
	icon_state = "furscarf_black"
	item_state = "furscarf_black"
	icon = 'void-marines/ascent/icons/tajaran/tajara_items.dmi'
	item_icons = list(
		WEAR_FACE = 'void-marines/ascent/icons/tajaran/tajara_items.dmi'
	)

/obj/item/clothing/head/helmet/ascent/taj/militia/headband
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

/obj/item/clothing/head/helmet/ascent/taj/militia/turban
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

/obj/item/clothing/accessory/ascent/taj/militia/cape
	name = "Dark Cloak"
	desc = "Worn out dusted cloak."
	icon_state = "taj_cloak_su"
	item_state = "taj_cloak_su"
	icon = 'void-marines/ascent/icons/tajaran/tajara_items.dmi'
	accessory_icons = list(WEAR_BODY = 'void-marines/ascent/icons/tajaran/tajara_items.dmi', WEAR_JACKET = 'void-marines/ascent/icons/tajaran/tajara_items.dmi')
	slot = ACCESSORY_SLOT_PONCHO

// Tajaran Elites
/obj/item/clothing/under/rank/ascent/taj/elite/uniform
	name = "Dark Fatigues"
	desc = "An nice-looking east-influenced pair of clothing, used by Tajaran elite soldiers."
	icon = 'void-marines/ascent/icons/tajaran/onmob/onmob_under.dmi'
	icon_state = "taj_new_fatigues_s"
	item_state = "taj_new_fatigues_s"
	worn_state = "taj_new_fatigues_s"
	item_icons = list(
		WEAR_BODY = 'void-marines/ascent/icons/tajaran/onmob/onmob_under.dmi'
	)

	armor_melee = CLOTHING_ARMOR_ULTRAHIGH
	armor_bullet = CLOTHING_ARMOR_ULTRAHIGH
	armor_laser = CLOTHING_ARMOR_HIGH
	armor_energy = CLOTHING_ARMOR_HIGH
	armor_bomb = CLOTHING_ARMOR_ULTRAHIGH

	armor_bio = CLOTHING_ARMOR_ULTRAHIGH
	armor_rad = CLOTHING_ARMOR_ULTRAHIGH

	armor_internaldamage = CLOTHING_ARMOR_HIGH

/obj/item/clothing/head/helmet/ascent/taj/elite/beret
	name = "Pitch-black Turban"
	desc = "An armored beret, used by Tajaran elite soldiers"
	icon = 'void-marines/ascent/icons/tajaran/onmob/onmob_head.dmi'
	icon_state = "tajara_beret"
	item_state = "tajara_beret"
	item_icons = list(
		WEAR_HEAD = 'void-marines/ascent/icons/tajaran/onmob/onmob_head.dmi'
	)

	flags_armor_protection = BODY_FLAG_HEAD
	armor_melee = CLOTHING_ARMOR_ULTRAHIGH
	armor_bullet = CLOTHING_ARMOR_ULTRAHIGH
	armor_laser = CLOTHING_ARMOR_HIGH
	armor_energy = CLOTHING_ARMOR_HIGH
	armor_bomb = CLOTHING_ARMOR_ULTRAHIGH

	armor_bio = CLOTHING_ARMOR_HIGH
	armor_rad = CLOTHING_ARMOR_HIGH

	armor_internaldamage = CLOTHING_ARMOR_ULTRAHIGH

//OUTFIT PRESETS

//...
