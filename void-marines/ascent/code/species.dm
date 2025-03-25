#define SPECIES_ALATE "Alate"
#define SPECIES_GYNE "Gyne"

// ALATE

/mob/living/carbon/human/ascent_alate/Initialize(mapload, new_species = SPECIES_ALATE)
	. = ..(mapload, new_species)

/datum/species/ascent_alate
	group = SPECIES_ALATE
	name = SPECIES_ALATE
	icobase = 'void-marines/ascent/icons/alate/body.dmi'
	deform = 'void-marines/ascent/icons/alate/body.dmi'
	eyes = "blank_s"
	blood_mask = 'void-marines/ascent/icons/alate/blood_mask.dmi'
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
	blood_color = LIGHT_COLOR_CYAN
	uses_skin_color = FALSE
	speech_sounds = list('void-marines/ascent/sounds/ascent1.ogg','void-marines/ascent/sounds/ascent2.ogg','void-marines/ascent/sounds/ascent3.ogg',
						'void-marines/ascent/sounds/ascent4.ogg','void-marines/ascent/sounds/ascent5.ogg', 'void-marines/ascent/sounds/ascent6.ogg')
	speech_chance = 100

	slowdown = -1 //зато очень быстрое
	total_health = 60 //это буквально ходячее стекло - что вы хотите от него?

	brute_mod = 1.2 // нам очень больно от кинетики
	burn_mod = 0.2 // но в целом чхать мы хотели на лазеры и огонь - кремниевые не горят

/datum/species/ascent_alate/handle_post_spawn(mob/living/carbon/human/H)
	H.universal_understand = TRUE
	H.gender = PLURAL

	return ..()

/datum/species/ascent_alate/handle_death(mob/living/carbon/human/H, gibbed)
	. = ..()
	playsound(H, 'void-marines/sound/xcom_aliens/sectoid/SectoidSeesHuman02a.SoundNodeWave_0000009c.ogg', 75, TRUE)
	if(!gibbed && prob(30))
		var/obj/limb/head = H.get_limb("head")
		head.droplimb(FALSE, TRUE)
		QDEL_NULL(head)

/datum/species/ascent_alate/handle_on_fire(humanoidmob)
	. = ..()
	INVOKE_ASYNC(humanoidmob, TYPE_PROC_REF(/mob, emote), pick("pain", "scream"))

// GYNE

/mob/living/carbon/human/ascent_gyne/Initialize(mapload, new_species = SPECIES_GYNE)
	. = ..(mapload, new_species)
	pixel_x = -5

/datum/species/ascent_gyne
	group = SPECIES_GYNE
	name = SPECIES_GYNE
	icobase = 'void-marines/ascent/icons/gyne/body.dmi'
	deform = 'void-marines/ascent/icons/gyne/body.dmi'
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
	blood_color = LIGHT_COLOR_CYAN
	uses_skin_color = FALSE
	speech_sounds = list('void-marines/ascent/sounds/ascent1.ogg','void-marines/ascent/sounds/ascent2.ogg','void-marines/ascent/sounds/ascent3.ogg',
						'void-marines/ascent/sounds/ascent4.ogg','void-marines/ascent/sounds/ascent5.ogg', 'void-marines/ascent/sounds/ascent6.ogg')
	speech_chance = 100

	slowdown = -0.5 //медленнее чем алат
	total_health = 200 //но гораздо толще

	brute_mod = 1.2 // резисты те же
	burn_mod = 0.2

/datum/species/ascent_gyne/handle_post_spawn(mob/living/carbon/human/H)
	H.universal_understand = TRUE
	H.gender = PLURAL

	return ..()

/datum/species/ascent_gyne/handle_on_fire(humanoidmob)
	. = ..()
	INVOKE_ASYNC(humanoidmob, TYPE_PROC_REF(/mob, emote), pick("pain", "scream"))
