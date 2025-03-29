//SPECIES CODE
#define SPECIES_MONARCH "Monarch"

/obj/effect/temp_visual/dir_setting/bloodsplatter/monarch
	splatter_type = "csplatter"
	color = LIGHT_COLOR_PURPLE

/mob/living/carbon/human/ascent_monarch/Initialize(mapload, new_species = SPECIES_MONARCH)
	. = ..(mapload, new_species)

/datum/species/ascent_monarch
	group = SPECIES_MONARCH
	name = SPECIES_MONARCH
	icobase = 'void-marines/ascent/icons/gas/body_msw.dmi'
	deform = 'void-marines/ascent/icons/gas/body_msw.dmi'
	eyes = "blank_s"
	blood_mask = 'void-marines/ascent/icons/gyne/blood_mask.dmi'
	mob_flags = KNOWS_TECHNOLOGY
	pain_type = /datum/pain/xeno
	unarmed_type = /datum/unarmed_attack/claws/strong
	secondary_unarmed_type = /datum/unarmed_attack/bite/strong
	death_message = "lets out a faint screach as it collapses and stops moving..."
	knock_down_reduction = 0.5
	stun_reduction = 0.5
	gibbed_anim = "gibbed-m"
	dusted_anim = "dust-m"
	mob_inherent_traits = list(
		TRAIT_EMOTE_CD_EXEMPT,
		TRAIT_YAUTJA_TECH,
		TRAIT_FOREIGN_BIO,
	)
	blood_color = LIGHT_COLOR_PURPLE
	uses_skin_color = FALSE
	speech_sounds = list('void-marines/ascent/sounds/ascent1.ogg','void-marines/ascent/sounds/ascent2.ogg','void-marines/ascent/sounds/ascent3.ogg',
						'void-marines/ascent/sounds/ascent4.ogg','void-marines/ascent/sounds/ascent5.ogg', 'void-marines/ascent/sounds/ascent6.ogg')
	speech_chance = 100

	slowdown = -1.5 //ебанутый хищник убивца, быстрее чем алат
	total_health = 200 //крепок как гиина

	brute_mod = 0.5 // хитин крепкий, но всё ещё простреливаемый
	burn_mod = 1.5 // ЖГИ ЕГО!!! ЖГИ!!!

	bloodsplatter_type = /obj/effect/temp_visual/dir_setting/bloodsplatter/monarch

/datum/species/ascent_monarch/handle_post_spawn(mob/living/carbon/human/H)
	H.universal_speak = TRUE
	H.universal_understand = TRUE
	H.gender = PLURAL

	return ..()

/datum/species/ascent_monarch/handle_on_fire(humanoidmob)
	. = ..()
	INVOKE_ASYNC(humanoidmob, TYPE_PROC_REF(/mob, emote), pick("pain", "scream"))

//SPECIES EQUIPMENT

// Combat Exosuit
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

//OUTFIT PRESETS

//...
