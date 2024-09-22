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
