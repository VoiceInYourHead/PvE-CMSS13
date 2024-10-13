/datum/equipment_preset/uscm/goc
	name = "UNGOC PHYSICS Spec-Ops" //Parent type for easier gear
	assignment = "Agent"
	rank = "Agent"
	role_comm_title = "Operator"
	flags = EQUIPMENT_PRESET_EXTRA
	auto_squad_name = "UNGOC"
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
	new_human.equip_to_slot_or_del(new /obj/item/clothing/under/marine/veteran/goc(new_human), WEAR_BODY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/marine/veteran/goc(new_human), WEAR_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/veteran/pmc/commando/bionational(new_human), WEAR_FEET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/marine/veteran/goc(new_human), WEAR_HEAD)

	new_human.equip_to_slot_or_del(new /obj/item/clothing/mask/gas/goc(new_human), WEAR_FACE)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/gloves/marine/veteran/bionational(new_human), WEAR_HANDS)
	new_human.equip_to_slot_or_del(new /obj/item/storage/box/MRE(new_human), WEAR_IN_JACKET)

/datum/equipment_preset/uscm/goc/heavy
	name = "UNGOC PHYSICS Spec-Ops | Heavy " //Parent type for easier gear
	assignment = "Heavy Trooper"
	rank = "Agent"
	role_comm_title = "Heavy Trooper"
	flags = EQUIPMENT_PRESET_EXTRA
	auto_squad_name = "UN"
	ert_squad = TRUE
	skills = /datum/skills/pmc

/datum/equipment_preset/uscm/goc/heavy/load_status(mob/living/carbon/human/new_human)
	new_human.nutrition = NUTRITION_NORMAL
/*
	new_human.apply_effect(100000, STUN)
	new_human.able_to_speak = 0
*/

/datum/equipment_preset/uscm/goc/heavy/load_gear(mob/living/carbon/human/new_human)
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/marine/satchel/intel/upgraded(new_human), WEAR_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/distress/cbrn(new_human), WEAR_L_EAR)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/under/marine/veteran/goc(new_human), WEAR_BODY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/marine/veteran/goc/heavy(new_human), WEAR_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/veteran/pmc/commando/bionational(new_human), WEAR_FEET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/marine/veteran/goc/heavy(new_human), WEAR_HEAD)

	new_human.equip_to_slot_or_del(new /obj/item/clothing/mask/gas/goc(new_human), WEAR_FACE)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/gloves/marine/veteran/bionational(new_human), WEAR_HANDS)
	new_human.equip_to_slot_or_del(new /obj/item/storage/box/MRE(new_human), WEAR_IN_JACKET)

	new_human.equip_to_slot_or_del(new /obj/item/clothing/accessory/storage/webbing/five_slots(new_human), WEAR_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/flare/full(new_human), WEAR_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/explosive/grenade/incendiary(new_human), WEAR_IN_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/explosive/grenade/incendiary(new_human), WEAR_IN_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/firstaid/ert(new_human), WEAR_L_STORE)

	new_human.equip_to_slot_or_del(new /obj/item/prop/folded_anti_tank_sadar(new_human), WEAR_IN_BACK)

	new_human.equip_to_slot_or_del(new /obj/item/storage/belt/gun/m4a3/highpower/automag/tactical(new_human), WEAR_J_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/explosive/plastic/breaching_charge(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/explosive/plastic/breaching_charge(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/explosive/plastic/breaching_charge(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/explosive/plastic/breaching_charge(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/explosive/plastic/breaching_charge(new_human), WEAR_IN_BACK)

	new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/pkp(new_human), WEAR_R_HAND)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/pkp(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/pkp(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/pkp(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/pkp(new_human), WEAR_IN_BACK)

/datum/equipment_preset/uscm/goc/operator
	name = "UNGOC PHYSICS Spec-Ops | Operator" //Parent type for easier gear
	assignment = "Operator"
	rank = "Agent"
	role_comm_title = "Operator"
	flags = EQUIPMENT_PRESET_EXTRA
	auto_squad_name = "UNGOC"
	ert_squad = TRUE
	skills = /datum/skills/pmc

/datum/equipment_preset/uscm/goc/operator/load_gear(mob/living/carbon/human/new_human)
	. = ..()
	new_human.equip_to_slot_or_del(new /obj/item/clothing/accessory/storage/webbing/five_slots(new_human), WEAR_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/flare/full(new_human), WEAR_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/explosive/grenade/incendiary(new_human), WEAR_IN_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/explosive/grenade/incendiary(new_human), WEAR_IN_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/firstaid/ert(new_human), WEAR_L_STORE)

	new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/rifle/rmc_f90/bionational(new_human), WEAR_J_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/belt/marine/rmc/rmc_f90_ammo/pve(new_human), WEAR_WAIST)

	new_human.equip_to_slot_or_del(new /obj/item/device/reagent_scanner(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/prop/geiger_counter(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/reagent_container/spray/cleaner(new_human), WEAR_IN_BACK)

/datum/equipment_preset/uscm/goc/comtech
	name = "UNGOC PHYSICS Spec-Ops | Combat Technician"
	assignment = "Combat Technician"
	role_comm_title = "ComTech"

/datum/equipment_preset/uscm/goc/comtech/load_gear(mob/living/carbon/human/new_human)
	. = ..()

	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/construction/full_barbed_wire(new_human), WEAR_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/construction/full_barbed_wire(new_human), WEAR_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/explosive/plastic/breaching_charge(new_human), WEAR_IN_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/explosive/plastic/breaching_charge(new_human), WEAR_IN_JACKET)
	if(new_human.disabilities & NEARSIGHTED)
		new_human.equip_to_slot_or_del(new /obj/item/clothing/glasses/welding/superior/prescription(new_human), WEAR_EYES)
	else
		new_human.equip_to_slot_or_del(new /obj/item/clothing/glasses/welding/superior/alt(new_human), WEAR_EYES)

	new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/rifle/rmc_f90/bionational(new_human), WEAR_J_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/belt/marine/rmc/rmc_f90_ammo/pve(new_human), WEAR_WAIST)
	new_human.equip_to_slot_or_del(new /obj/item/device/reagent_scanner(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/device/motiondetector(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/device/black_market_hacking_device(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/reagent_container/spray/cleaner(new_human), WEAR_IN_BACK)


/datum/equipment_preset/uscm/goc/corpsman
	name = "UNGOC PHYSICS Spec-Ops | Corpsman"
	assignment = "Corpsman"
	role_comm_title = "Corpsman"

/datum/equipment_preset/uscm/goc/corpsman/load_gear(mob/living/carbon/human/new_human)
	. = ..()

	new_human.equip_to_slot_or_del(new /obj/item/clothing/accessory/storage/webbing/five_slots(new_human), WEAR_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/accessory/armband/medgreen(new_human), WEAR_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/storage/belt/gun/m4a3/highpower/automag/tactical(new_human), WEAR_J_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/belt/medical/lifesaver/full/dutch(new_human), WEAR_WAIST)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/medkit/full_advanced(new_human), WEAR_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/medkit/full/toxin(new_human), WEAR_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/glasses/hud/health/upgraded(new_human), WEAR_EYES)

	new_human.equip_to_slot_or_del(new /obj/item/storage/firstaid/synth(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/firstaid/rad(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/firstaid/o2(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/firstaid/toxin(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/firstaid/toxin(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/roller(new_human), WEAR_IN_BACK)

	new_human.equip_to_slot_or_del(new /obj/item/storage/pill_bottle/russianRed(new_human), WEAR_IN_BELT)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pill_bottle/russianRed(new_human), WEAR_IN_BELT)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pill_bottle/russianRed(new_human), WEAR_IN_BELT)

	new_human.equip_to_slot_or_del(new /obj/item/storage/box/MRE(new_human), WEAR_IN_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/storage/box/MRE(new_human), WEAR_IN_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/device/healthanalyzer(new_human), WEAR_IN_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/explosive/grenade/incendiary(new_human), WEAR_IN_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/explosive/grenade/incendiary(new_human), WEAR_IN_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/tool/surgery/surgical_line(new_human), WEAR_IN_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/tool/surgery/synthgraft(new_human), WEAR_IN_ACCESSORY)

/datum/equipment_preset/uscm/goc/heavy/leader
	name = "UNGOC PHYSICS Spec-Ops | Squad Leader"
	assignment = "Squad Leader"
	role_comm_title = "SL"

/datum/equipment_preset/uscm/goc/heavy/leader/load_gear(mob/living/carbon/human/new_human)
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/marine/satchel/intel/upgraded(new_human), WEAR_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/distress/cbrn(new_human), WEAR_L_EAR)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/under/marine/veteran/goc(new_human), WEAR_BODY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/marine/veteran/goc/heavy(new_human), WEAR_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/veteran/pmc/commando/bionational(new_human), WEAR_FEET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/head/beret/goc(new_human), WEAR_HEAD)

	new_human.equip_to_slot_or_del(new /obj/item/clothing/mask/gas/goc(new_human), WEAR_FACE)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/gloves/marine/veteran/bionational(new_human), WEAR_HANDS)
	new_human.equip_to_slot_or_del(new /obj/item/storage/box/MRE(new_human), WEAR_IN_JACKET)

	new_human.equip_to_slot_or_del(new /obj/item/clothing/accessory/storage/webbing/five_slots(new_human), WEAR_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/flare/full(new_human), WEAR_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/explosive/grenade/incendiary(new_human), WEAR_IN_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/explosive/grenade/incendiary(new_human), WEAR_IN_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/firstaid/ert(new_human), WEAR_L_STORE)

	new_human.equip_to_slot_or_del(new /obj/item/prop/folded_anti_tank_sadar(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/belt/gun/m4a3/highpower/automag/tactical(new_human), WEAR_J_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/explosive/plastic/breaching_charge(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/explosive/plastic/breaching_charge(new_human), WEAR_IN_BACK)
