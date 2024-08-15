/datum/equipment_preset/uscm/pfc/vaipo
	name = "VAIPO Contractor"
	assignment = "Contractor"
	paygrade = "VAI"
	role_comm_title = "Merc"

/datum/equipment_preset/uscm/pfc/vaipo/load_gear(mob/living/carbon/human/new_human)
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/lightpack(new_human), WEAR_BACK)

/datum/equipment_preset/uscm/sg/vaipo
	name = "VAIPO Automatic Rifleman"
	access = list(ACCESS_UPP_GENERAL, ACCESS_UPP_MACHINEGUN)
	assignment = "Automatic Rifleman"
	paygrade = "VAI-AR"
	role_comm_title = "AR"
	access = list(ACCESS_CIVILIAN_LOGISTICS)

/datum/equipment_preset/uscm/sg/vaipo/load_gear(mob/living/carbon/human/new_human)
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/lightpack(new_human), WEAR_BACK)

/datum/equipment_preset/uscm/spec/vaipo
	name = "VAIPO Marksman"
	flags = EQUIPMENT_PRESET_EXTRA|EQUIPMENT_PRESET_MARINE

	access = list(ACCESS_MARINE_PREP, ACCESS_MARINE_SPECPREP)
	assignment = "Designated Marksman"
	paygrade = "VAI"
	role_comm_title = "Mrk"
	access = list(ACCESS_CIVILIAN_ENGINEERING)

/datum/equipment_preset/uscm/spec/vaipo/load_gear(mob/living/carbon/human/new_human)
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/lightpack(new_human), WEAR_BACK)

/datum/equipment_preset/uscm/medic/vaipo
	name = "VAIPO Medic"
	assignment = "Medic"
	paygrade = "VAI-M"
	role_comm_title = "MED"
	access = list(ACCESS_CIVILIAN_MEDBAY)

/datum/equipment_preset/uscm/medic/vaipo/load_gear(mob/living/carbon/human/new_human)
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/lightpack(new_human), WEAR_BACK)

/datum/equipment_preset/uscm/leader/vaipo
	name = "VAIPO Team Leader"
	assignment = "Team Leader"
	paygrade = "VAI-L"
	role_comm_title = "TL"
	access = list(ACCESS_CIVILIAN_COMMAND)

/datum/equipment_preset/uscm/leader/vaipo/load_gear(mob/living/carbon/human/new_human)
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/lightpack(new_human), WEAR_BACK)
