/datum/equipment_preset/uscm/medic/surgeon
	name = "USCM Section Surgeon"
	assignment = JOB_SQUAD_SURGEON
	rank = JOB_SQUAD_SURGEON
	role_comm_title = "Sur"
	skills = /datum/skills/combat_medic/surgeon

/datum/equipment_preset/uscm/medic/surgeon/load_gear(mob/living/carbon/human/new_human)
	var/back_item = /obj/item/storage/backpack/marine/satchel/medic
	if (new_human.client && new_human.client.prefs && (new_human.client.prefs.backbag == 1))
		back_item = /obj/item/storage/backpack/marine/medic

	new_human.equip_to_slot_or_del(new back_item(new_human), WEAR_BACK)
