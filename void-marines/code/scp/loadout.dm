/datum/equipment_preset/uscm/goc
	name = "UNGOC PHYSICS Spec-Ops" //Parent type for easier gear
	assignment = "Agent"
	rank = "Agent"
	role_comm_title = "LBC"
	flags = EQUIPMENT_PRESET_EXTRA
	auto_squad_name = SQUAD_CBRN
	ert_squad = TRUE
	skills = /datum/skills/pmc

/datum/equipment_preset/uscm/goc/load_status(mob/living/carbon/human/new_human)
	new_human.nutrition = NUTRITION_NORMAL
/*
	new_human.apply_effect(100000, STUN)
	new_human.able_to_speak = 0
*/

/datum/equipment_preset/uscm/goc/load_gear(mob/living/carbon/human/new_human)
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/marine/satchel/intel/upgraded(new_human), WEAR_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/distress/cbrn(new_human), WEAR_L_EAR)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/under/marine/veteran/bionational(new_human), WEAR_BODY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/marine/veteran/bionational(new_human), WEAR_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/veteran/pmc/commando/bionational(new_human), WEAR_FEET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/marine/veteran/bionational(new_human), WEAR_HEAD)

	new_human.equip_to_slot_or_del(new /obj/item/clothing/gloves/marine/veteran/bionational(new_human), WEAR_HANDS)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/accessory/patch/bionational, WEAR_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/storage/box/MRE(new_human), WEAR_IN_JACKET)
