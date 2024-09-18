/// CLF
/datum/equipment_preset/other/tank/clf
	name = "Event Vehicle Crewman (CLF)"
	flags = EQUIPMENT_PRESET_EXTRA

	role_comm_title = "CLF"

	faction = FACTION_CLF

/datum/equipment_preset/other/tank/clf/load_gear(mob/living/carbon/human/new_human)

	new_human.equip_to_slot_or_del(new /obj/item/clothing/under/marine/officer/tanker(new_human), WEAR_BODY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/marine/knife(new_human), WEAR_FEET)
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/almayer/mcom/vc(new_human), WEAR_L_EAR)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/gloves/yellow(new_human), WEAR_HANDS)
	new_human.equip_to_slot_or_del(new /obj/item/storage/belt/gun/flaregun(new_human), WEAR_WAIST)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/marine/tanker(new_human), WEAR_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/tool/weldpack(new_human), WEAR_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/general/large(new_human), WEAR_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/tools/tank(new_human), WEAR_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/marine/tech/tanker(new_human), WEAR_HEAD)

	spawn_weapon(/obj/item/weapon/gun/smg/nailgun, /obj/item/ammo_magazine/smg/nailgun, new_human, 0, 3)

/// UPP
/datum/equipment_preset/other/tank/upp
	name = "Event Vehicle Crewman (UPP)"
	flags = EQUIPMENT_PRESET_EXTRA

	role_comm_title = "UPP"

	faction = FACTION_UPP

/datum/equipment_preset/other/tank/upp/load_gear(mob/living/carbon/human/new_human)

	new_human.equip_to_slot_or_del(new /obj/item/clothing/under/marine/officer/tanker(new_human), WEAR_BODY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/marine/knife(new_human), WEAR_FEET)
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/almayer/mcom/vc(new_human), WEAR_L_EAR)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/gloves/yellow(new_human), WEAR_HANDS)
	new_human.equip_to_slot_or_del(new /obj/item/storage/belt/gun/type47(new_human), WEAR_WAIST)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/marine/tanker(new_human), WEAR_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/tool/weldpack(new_human), WEAR_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/general/large(new_human), WEAR_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/tools/tank(new_human), WEAR_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/marine/tech/tanker(new_human), WEAR_HEAD)

	spawn_weapon(/obj/item/weapon/gun/smg/ppsh, /obj/item/ammo_magazine/smg/ppsh, new_human, 0, 3)

/// USCM
/datum/equipment_preset/other/tank/marine
	name = "Event Vehicle Crewman (USCM)"
	flags = EQUIPMENT_PRESET_EXTRA

	role_comm_title = "USCM"

	faction = FACTION_MARINE

/datum/equipment_preset/other/tank/marine/load_gear(mob/living/carbon/human/new_human)

	new_human.equip_to_slot_or_del(new /obj/item/clothing/under/marine/officer/tanker(new_human), WEAR_BODY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/marine/knife(new_human), WEAR_FEET)
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/almayer/mcom/vc(new_human), WEAR_L_EAR)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/gloves/yellow(new_human), WEAR_HANDS)
	new_human.equip_to_slot_or_del(new /obj/item/storage/belt/gun/m4a3/full(new_human), WEAR_WAIST)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/marine/tanker(new_human), WEAR_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/tool/weldpack(new_human), WEAR_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/general/large(new_human), WEAR_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/tools/tank(new_human), WEAR_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/marine/tech/tanker(new_human), WEAR_HEAD)

	spawn_weapon(/obj/item/weapon/gun/smg/m39, /obj/item/ammo_magazine/smg/m39, new_human, 0, 3)

/// BRI'ISH
/datum/equipment_preset/other/tank/britain
	name = "Event Vehicle Crewman (BRI'ISH)"
	flags = EQUIPMENT_PRESET_EXTRA

	role_comm_title = "BRI'ISH"

	faction = FACTION_TWE

/datum/equipment_preset/other/tank/britain/load_gear(mob/living/carbon/human/new_human)

	new_human.equip_to_slot_or_del(new /obj/item/clothing/under/marine/officer/tanker(new_human), WEAR_BODY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/marine/knife(new_human), WEAR_FEET)
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/almayer/mcom/vc(new_human), WEAR_L_EAR)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/gloves/yellow(new_human), WEAR_HANDS)
	new_human.equip_to_slot_or_del(new /obj/item/storage/belt/gun/webley(new_human), WEAR_WAIST)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/marine/tanker(new_human), WEAR_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/tool/weldpack(new_human), WEAR_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/general/large(new_human), WEAR_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/tools/tank(new_human), WEAR_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/marine/tech/tanker(new_human), WEAR_HEAD)

	spawn_weapon(/obj/item/weapon/gun/smg/p90, /obj/item/ammo_magazine/smg/p90/p90_twe, new_human, 0, 3)
