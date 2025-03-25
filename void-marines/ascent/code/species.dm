#define SPECIES_ALATE "Alate"
#define SPECIES_GYNE "Gyne"
#define SPECIES_MONARCH "Monarch"

/obj/effect/temp_visual/dir_setting/bloodsplatter/kharmaani
	splatter_type = "csplatter"
	color = LIGHT_COLOR_CYAN

/obj/effect/temp_visual/dir_setting/bloodsplatter/monarch
	splatter_type = "csplatter"
	color = LIGHT_COLOR_PURPLE

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

	bloodsplatter_type = /obj/effect/temp_visual/dir_setting/bloodsplatter/kharmaani

/datum/species/ascent_alate/handle_post_spawn(mob/living/carbon/human/H)
	H.universal_speak = TRUE
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

	bloodsplatter_type = /obj/effect/temp_visual/dir_setting/bloodsplatter/kharmaani

/datum/species/ascent_gyne/handle_post_spawn(mob/living/carbon/human/H)
	H.universal_speak = TRUE
	H.universal_understand = TRUE
	H.gender = PLURAL

	return ..()

/datum/species/ascent_gyne/handle_on_fire(humanoidmob)
	. = ..()
	INVOKE_ASYNC(humanoidmob, TYPE_PROC_REF(/mob, emote), pick("pain", "scream"))

// MONARCH

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

	slowdown = -1.5 //ебанутый хищник убивца
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

// GAS - basically lurkers
// overrides EXISTING ONE!!!

/datum/caste_datum/lurker
	caste_type = XENO_CASTE_LURKER
	tier = 2

	melee_damage_lower = XENO_DAMAGE_TIER_8
	melee_damage_upper = XENO_DAMAGE_TIER_8
	melee_vehicle_damage = XENO_DAMAGE_TIER_8
	max_health = 2000
	plasma_gain = XENO_PLASMA_GAIN_TIER_10
	plasma_max = XENO_PLASMA_TIER_8
	xeno_explosion_resistance = XENO_EXPLOSIVE_ARMOR_TIER_5
	armor_deflection = XENO_ARMOR_TIER_4
	evasion = XENO_EVASION_LOW
	speed = XENO_SPEED_TIER_9

	attack_delay = 2 // VERY high slash damage, but attacks relatively slowly

	available_strains = list(/datum/xeno_strain/vampire)
	behavior_delegate_type = /datum/behavior_delegate/lurker_base

	deevolves_to = list(XENO_CASTE_RUNNER)
	caste_desc = "A fast, powerful backline combatant."
	evolves_to = list(XENO_CASTE_RAVAGER)

	heal_resting = 1.5

	minimum_evolve_time = 9 MINUTES

	minimap_icon = "lurker"

/mob/living/carbon/xenomorph/lurker
	faction = FACTION_ASCENT
	caste_type = XENO_CASTE_LURKER
	name = "Giant Armored Serpentid"
	desc = "A beefy, fast alien with sharp claws and deadly grip."
	icon_size = 32
	icon_state = "Lurker Walking"
	color = "#252b25"
	plasma_types = list(PLASMA_CATECHOLAMINE)
	pixel_x = 0
	old_x = 0
	tier = 2
	organ_value = 2000
	base_actions = list(
		/datum/action/xeno_action/onclick/xeno_resting,
		/datum/action/xeno_action/onclick/regurgitate,
		/datum/action/xeno_action/watch_xeno,
		/datum/action/xeno_action/activable/tail_stab,
		/datum/action/xeno_action/activable/pounce/lurker,
		/datum/action/xeno_action/onclick/lurker_invisibility,
		/datum/action/xeno_action/onclick/lurker_assassinate,
	)
	inherent_verbs = list(
		/mob/living/carbon/xenomorph/proc/vent_crawl,
	)
	claw_type = CLAW_TYPE_SHARP

	tackle_min = 2
	tackle_max = 6

	speaking_key = "h"
	speaking_noise = "hiss_talk"
	langchat_color = "#0c614e"

	icon_xeno = 'void-marines/ascent/icons/gas/body.dmi'
	icon_xenonid = 'void-marines/ascent/icons/gas/body.dmi'

	weed_food_icon = 'icons/mob/xenos/weeds_48x48.dmi'
	weed_food_states = list("Drone_1","Drone_2","Drone_3")
	weed_food_states_flipped = list("Drone_1","Drone_2","Drone_3")

	forced_retarget_time = (2 SECONDS)

	acid_blood_damage = 0

/mob/living/carbon/xenomorph/lurker/handle_blood_splatter(splatter_dir)
	new /obj/effect/temp_visual/dir_setting/bloodsplatter/monarch(loc, splatter_dir)

/mob/living/carbon/xenomorph/lurker/generate_name()
	//We don't have a nicknumber yet, assign one to stick with us
	if(!nicknumber)
		generate_and_set_nicknumber()
	// Even if we don't have the hive datum we usually still have the hive number
	var/datum/hive_status/in_hive = hive
	if(!in_hive)
		in_hive = GLOB.hive_datum[hivenumber]

	//Im putting this in here, because this proc gets called when a player inhabits a SSD xeno and it needs to go somewhere (sorry)
	hud_set_marks()

	var/name_prefix = in_hive.prefix
	var/name_client_prefix = ""
	var/name_client_postfix = ""
	var/number_decorator = ""
	if(client)
		name_client_prefix = "[(client.xeno_prefix||client.xeno_postfix) ? client.xeno_prefix : "XX"]-"
		name_client_postfix = client.xeno_postfix ? ("-"+client.xeno_postfix) : ""
		age_xeno()
	full_designation = "[name_client_prefix][nicknumber][name_client_postfix]"

	var/age_display = show_age_prefix ? age_prefix : ""
	var/name_display = ""
	// Rare easter egg
	if(nicknumber == 666)
		number_decorator = "Infernal "
	if(show_name_numbers)
		name_display = show_only_numbers ? " ([nicknumber])" : " ([name_client_prefix][nicknumber][name_client_postfix])"
	name = "[name_prefix][number_decorator][age_display][caste.display_name || caste.caste_type][name_display]"

	//Update linked data so they show up properly
	change_real_name(src, name)

	// Since we updated our name we should update the info in the UI
	in_hive.hive_ui.update_xeno_info()

/mob/living/carbon/xenomorph/lurker/spawn_gibs()
	gasgibs(get_turf(src))

/obj/effect/spawner/gibspawner/xeno/dark
	gibtypes = list(/obj/effect/decal/cleanable/blood/gibs/xeno/dark,/obj/effect/decal/cleanable/blood/gibs/xeno/limb/dark,/obj/effect/decal/cleanable/blood/gibs/xeno/core/dark)
	color = "#311044"

/obj/effect/decal/cleanable/blood/gibs/xeno/dark
	color = "#311044"
	basecolor = "#311044"

/obj/effect/decal/cleanable/blood/gibs/xeno/dark/update_icon()
	color = "#311044"

/obj/effect/decal/cleanable/blood/gibs/xeno/limb/dark
	color = "#311044"
	basecolor = "#311044"

/obj/effect/decal/cleanable/blood/gibs/xeno/limb/dark/update_icon()
	color = "#311044"

/obj/effect/decal/cleanable/blood/gibs/xeno/core/dark
	color = "#311044"
	basecolor = "#311044"

/obj/effect/decal/cleanable/blood/gibs/xeno/core/dark/update_icon()
	color = "#311044"

/proc/gasgibs(atom/location, list/viruses)
	new /obj/effect/spawner/gibspawner/xeno/dark(get_turf(location),viruses)

/mob/living/carbon/xenomorph/lurker/gib(datum/cause_data/cause = create_cause_data("gibbing", src))

	if(!caste)
		CRASH("CASTE ERROR: gib() was called without a caste. (name: [name], disposed: [QDELETED(src)], health: [health])")

	gib_animation()

	check_blood_splash(35, BURN, 65, 2) //Some testing numbers. 35 burn, 65 chance.

	..(cause)

/mob/living/carbon/xenomorph/lurker/gib_animation()
	var/obj/effect/overlay/temp/gib_animation/animal/A = new /obj/effect/overlay/temp/gib_animation/animal(loc, src, "brownbear_gib")
	A.color = "#311044"

/mob/living/carbon/xenomorph/lurker/check_blood_splash(damage = 0, damtype = BRUTE, chancemod = 0, radius = 1)
	if(!damage || !acid_blood_damage || world.time < acid_splash_last + acid_splash_cooldown || SSticker?.mode?.hardcore)
		return FALSE
	var/chance = 20 //base chance
	if(damtype == BRUTE) chance += 5
	chance += chancemod + (damage * 0.33)
	var/turf/T = loc
	if(!T || !istype(T))
		return

	if(radius > 1 || prob(chance))

		var/splash_chance = 40 //Base chance of getting splashed. Decreases with # of victims.
		var/i = 0 //Tally up our victims.

		for(var/mob/living/carbon/human/victim in orange(radius, src)) //Loop through all nearby victims, including the tile.
			splash_chance = 65 - (i * 5)
			if(victim.loc == loc)
				splash_chance += 30 //Same tile? BURN
			if(victim.species?.acid_blood_dodge_chance)
				splash_chance -= victim.species.acid_blood_dodge_chance

			if(splash_chance > 0 && prob(splash_chance)) //Success!
				victim.add_blood(get_blood_color(), BLOOD_BODY)
				handle_blood_splatter(get_dir(src, victim), 1 SECONDS)
				playsound(victim, "acid_sizzle", 25, TRUE)
				animation_flash_color(victim, "#FF0000") //pain hit flicker

		if(damtype == BRUTE && acid_blood_spatter && prob(splash_chance)) /// Only brute damage makes sense for the spatter.
			var/turf/acid_loc = pick(get_step(src,rand(0,8)))
			if(acid_loc && !(locate(/obj/effect/xenomorph/acid) in acid_loc))
				new /obj/effect/xenomorph/acid/spatter(acid_loc) ///Don't want to double up. It will target barricades first.
