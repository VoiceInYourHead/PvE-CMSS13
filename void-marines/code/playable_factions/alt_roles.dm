/datum/squad/marine/lancer
	name = SQUAD_MERC
	equipment_color = "#8d8d8d"
	chat_color = "#8d8d8d"
	access = list(ACCESS_ILLEGAL_PIRATE)
	radio_freq = MERC_FREQ
	minimap_color = MINIMAP_SQUAD_LANCER
	use_stripe_overlay = FALSE
	usable = TRUE
	faction = FACTION_FREELANCER

/datum/squad/marine/lancer/New()
	. = ..()

	RegisterSignal(SSdcs, COMSIG_GLOB_PLATOON_NAME_CHANGE, PROC_REF(rename_platoon)) //this signal allows pltco to change platoon’s name


/datum/squad/marine/pmc
	name = SQUAD_PMCPLT
	chat_color = "#ccffe9"
	minimap_color = MINIMAP_SQUAD_PMC
	use_stripe_overlay = FALSE
	usable = TRUE
	squad_one_access = ACCESS_PMC_SQUAD_ONE
	squad_two_access = ACCESS_PMC_SQUAD_TWO
	faction = FACTION_PMC

/datum/job/marine/leader/ai/pmc
	title = JOB_PMCPLAT_LEADER
	gear_preset = /datum/equipment_preset/uscm/pmc/sl
	gear_preset_secondary = /datum/equipment_preset/uscm/pmc/sl

/obj/effect/landmark/start/marine/leader/pmc
	name = JOB_PMCPLAT_LEADER
	squad = SQUAD_PMCPLT
	job = /datum/job/marine/leader/ai/pmc

/datum/job/marine/medic/ai/pmc
	title = JOB_PMCPLAT_MEDIC
	gear_preset = /datum/equipment_preset/uscm/pmc/med
	gear_preset_secondary = /datum/equipment_preset/uscm/pmc/med

/obj/effect/landmark/start/marine/medic/pmc
	name = JOB_PMCPLAT_MEDIC
	squad = SQUAD_PMCPLT
	job = /datum/job/marine/medic/ai/pmc

/datum/job/marine/smartgunner/ai/pmc
	title = JOB_PMCPLAT_SG
	gear_preset = /datum/equipment_preset/uscm/pmc/sg
	gear_preset_secondary = /datum/equipment_preset/uscm/pmc/sg

/obj/effect/landmark/start/marine/smartgunner/pmc
	name = JOB_PMCPLAT_SG
	squad = SQUAD_PMCPLT

/datum/job/marine/standard/ai/pmc
	title = JOB_PMCPLAT_STANDARD
	gear_preset = /datum/equipment_preset/uscm/pmc
	gear_preset_secondary = /datum/equipment_preset/uscm/pmc

/obj/effect/landmark/start/marine/pmc
	name = JOB_PMCPLAT_STANDARD
	squad = SQUAD_PMCPLT
	job = /datum/job/marine/standard/ai/pmc

/datum/job/marine/tl/ai/pmc
	title = JOB_PMCPLAT_FTL
	gear_preset = /datum/equipment_preset/uscm/pmc/tl
	gear_preset_secondary = /datum/equipment_preset/uscm/pmc/tl

/obj/effect/landmark/start/marine/tl/pmc
	name = JOB_PMCPLAT_FTL
	squad = SQUAD_PMCPLT
	job = /datum/job/marine/tl/ai/pmc



/datum/job/marine/leader/ai/lancer
	title = JOB_SQUAD_LEADER_FL
	gear_preset = /datum/equipment_preset/uscm/lancer/sl
	job_options = null

/obj/effect/landmark/start/marine/leader/lancer
	name = JOB_SQUAD_LEADER_FL
	squad = SQUAD_MERC
	job = /datum/job/marine/leader/ai/lancer

/datum/job/marine/medic/ai/lancer
	title = JOB_SQUAD_MEDIC_FL
	gear_preset = /datum/equipment_preset/uscm/lancer/med
	job_options = null

/obj/effect/landmark/start/marine/medic/lancer
	name = JOB_SQUAD_MEDIC_FL
	squad = SQUAD_MERC
	job = /datum/job/marine/medic/ai/lancer

/datum/job/marine/smartgunner/ai/lancer
	title = JOB_SQUAD_SMARTGUN_FL
	gear_preset = /datum/equipment_preset/uscm/lancer/smartgunner
	job_options = null

/obj/effect/landmark/start/marine/smartgunner/lancer
	name = JOB_SQUAD_SMARTGUN_FL
	squad = SQUAD_MERC
	job = /datum/job/marine/smartgunner/ai/lancer

/datum/job/marine/standard/ai/lancer
	title = JOB_SQUAD_RIFLEMAN_FL
	gear_preset = /datum/equipment_preset/uscm/lancer
	job_options = null

/obj/effect/landmark/start/marine/lancer
	name = JOB_SQUAD_RIFLEMAN_FL
	squad = SQUAD_MERC
	job = /datum/job/marine/standard/ai/lancer

/datum/job/command/bridge/ai/lancer
	title = JOB_RTO_FL
	gear_preset = /datum/equipment_preset/uscm/lancer/rto
	job_options = null

/obj/effect/landmark/start/bridge/lancer
	name = JOB_RTO_FL
	squad = SQUAD_MERC
	icon_state = "so_spawn"
	job = /datum/job/command/bridge/ai/lancer

/datum/job/marine/tl/ai/lancer
	title = JOB_SQUAD_TEAM_LEADER_FL
	gear_preset = /datum/equipment_preset/uscm/lancer/tl
	job_options = null

/obj/effect/landmark/start/marine/tl/ai/lancer
	name = JOB_SQUAD_TEAM_LEADER_FL
	squad = SQUAD_MERC
	job = /datum/job/marine/tl/ai/lancer

/datum/job/marine/leader/ai/vaipo
	title = JOB_SQUAD_LEADER_VAIPO
	gear_preset = /datum/equipment_preset/uscm/leader/vaipo

/obj/effect/landmark/start/marine/leader/vaipo
	name = JOB_SQUAD_LEADER_VAIPO
	squad = SQUAD_VAIPO
	job = /datum/job/marine/leader/ai/vaipo

/datum/job/marine/medic/ai/vaipo
	title = JOB_SQUAD_MEDIC_VAIPO
	gear_preset = /datum/equipment_preset/uscm/medic/vaipo
	gear_preset_secondary = /datum/equipment_preset/uscm/medic/vaipo

/obj/effect/landmark/start/marine/medic/vaipo
	name = JOB_SQUAD_MEDIC_VAIPO
	squad = SQUAD_VAIPO
	job = /datum/job/marine/medic/ai/vaipo

/datum/job/marine/smartgunner/ai/vaipo
	title = JOB_SQUAD_SMARTGUN_VAIPO
	total_positions = 1
	spawn_positions = 1
	gear_preset = /datum/equipment_preset/uscm/sg/vaipo
	gear_preset_secondary = /datum/equipment_preset/uscm/sg/vaipo

/obj/effect/landmark/start/marine/smartgunner/forecon // Моё почтение.
	name = JOB_SQUAD_SMARTGUN_VAIPO
	job = /datum/job/marine/smartgunner/ai/vaipo
	squad = SQUAD_VAIPO

/datum/job/marine/specialist/vaipo
	title = JOB_SQUAD_MARKSMAN_VAIPO
	total_positions = 1
	spawn_positions = 1
	allow_additional = 0
	scaled = 0
	gear_preset = /datum/equipment_preset/uscm/spec/vaipo
	entry_message_body = "<a href='"+WIKI_PLACEHOLDER+"'>You are the very rare and valuable weapon expert</a>, trained to use special equipment. You can serve a variety of roles, so choose carefully."

/obj/effect/landmark/start/marine/spec/vaipo
	name = JOB_SQUAD_MARKSMAN_VAIPO
	squad = SQUAD_VAIPO

/datum/job/marine/standard/ai/vaipo
	title = JOB_SQUAD_MARINE_VAIPO
	total_positions = 3
	spawn_positions = 3
	gear_preset = /datum/equipment_preset/uscm/pfc/vaipo

/obj/effect/landmark/start/marine/vaipo
	name = JOB_SQUAD_MARINE_VAIPO
	squad = SQUAD_VAIPO
	job = /datum/job/marine/standard/ai/vaipo
