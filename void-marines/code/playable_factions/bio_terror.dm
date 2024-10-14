/obj/item/clothing/under/marine/veteran/bionational
	name = "\improper specialized combat suit"
	desc = "This suits are specially designed and engineered to protect the wearer from unshielded exposure to any Chemical, Biological, Radiological, or Nuclear (CBRN) threats in the field."
	flags_atom = NO_NAME_OVERRIDE|NO_SNOW_TYPE
	icon = 'void-marines/icons/bio_corp.dmi'
	icon_state = "uniform obj"
	worn_state = "uniform onmobs"
	item_state = "uniform onmobs"
	flags_jumpsuit = NO_FLAGS
	armor_melee = CLOTHING_ARMOR_LOW
	armor_bullet = CLOTHING_ARMOR_LOW
	armor_bomb = CLOTHING_ARMOR_LOW
	armor_internaldamage = CLOTHING_ARMOR_VERYLOW
	armor_bio = CLOTHING_ARMOR_VERYHIGH
	armor_rad = CLOTHING_ARMOR_VERYHIGH
	fire_intensity_resistance = BURN_LEVEL_TIER_1
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROT
	flags_armor_protection = BODY_FLAG_CHEST|BODY_FLAG_GROIN|BODY_FLAG_ARMS|BODY_FLAG_LEGS
	flags_cold_protection = BODY_FLAG_CHEST|BODY_FLAG_GROIN|BODY_FLAG_ARMS|BODY_FLAG_LEGS
	flags_heat_protection = BODY_FLAG_CHEST|BODY_FLAG_GROIN|BODY_FLAG_ARMS|BODY_FLAG_LEGS

	item_icons = list(
		WEAR_BODY = 'void-marines/icons/bio_corp.dmi',
	)

/obj/item/clothing/under/marine/veteran/bionational/equipped(mob/user, slot)
	RegisterSignal(user, COMSIG_LIVING_FLAMER_CROSSED, PROC_REF(flamer_fire_crossed_callback))
	..()

/obj/item/clothing/under/marine/veteran/bionational/dropped(mob/user)
	UnregisterSignal(user, COMSIG_LIVING_FLAMER_CROSSED)
	..()

/obj/item/clothing/under/marine/veteran/bionational/proc/flamer_fire_crossed_callback(mob/living/L, datum/reagent/R)
	SIGNAL_HANDLER

	if(R.fire_penetrating)
		return

	return COMPONENT_NO_IGNITE

/obj/item/clothing/suit/storage/marine/veteran/bionational
	name = "\improper corporate tactical armor"
	desc = "While lacking the appearance of the M3 pattern armor worn in regular service, this armor piece is still a derivative of it. It has been heavily modified to fit over the MOPP suit with additional padding and Venlar composite layers removed, so as not to restrict the wearer’s movement."
	icon = 'void-marines/icons/bio_corp.dmi'
	icon_state = "armor obj"
	item_state = "armor onmobs"
	slowdown = SLOWDOWN_ARMOR_MEDIUM
	armor_melee = CLOTHING_ARMOR_MEDIUM
	armor_bullet = CLOTHING_ARMOR_HIGH
	armor_bomb = CLOTHING_ARMOR_MEDIUM
	armor_bio = CLOTHING_ARMOR_HIGH
	armor_rad = CLOTHING_ARMOR_HIGH
	armor_internaldamage = CLOTHING_ARMOR_MEDIUMHIGH
	flags_marine_armor = NO_FLAGS
	flags_atom = NO_NAME_OVERRIDE|NO_SNOW_TYPE
	flags_inventory = BLOCKSHARPOBJ
	flags_armor_protection = BODY_FLAG_CHEST|BODY_FLAG_GROIN
	flags_cold_protection = BODY_FLAG_CHEST|BODY_FLAG_GROIN
	flags_heat_protection = BODY_FLAG_CHEST|BODY_FLAG_GROIN
	uniform_restricted = list(/obj/item/clothing/under/marine/veteran/bionational)
	item_icons = list(
		WEAR_JACKET = 'void-marines/icons/bio_corp.dmi',
	)
	item_state_slots = list(WEAR_JACKET = "armor onmobs")

/obj/item/clothing/gloves/marine/veteran/bionational
	name = "\improper corporate tactical gloves"
	desc = "Designed to protect the user’s hands against contamination whilst working in CBRN environments."
	icon = 'void-marines/icons/bio_corp.dmi'
	icon_state = "gloves obj"
	item_state = "gloves onmobs"
	item_icons = list(
		WEAR_HANDS = 'void-marines/icons/bio_corp.dmi',
	)
	item_state_slots = list(WEAR_HANDS = "gloves onmobs")
	armor_bio = CLOTHING_ARMOR_GIGAHIGHPLUS
	armor_rad = CLOTHING_ARMOR_GIGAHIGHPLUS

/obj/item/clothing/shoes/veteran/pmc/commando/bionational
	name = "\improper corporate tactical boots"
	desc = "Designed to protect the wearer from contact with any possible infection vectors or hazardous substances that may have contaminated the area of operations."
	icon = 'void-marines/icons/bio_corp.dmi'
	icon_state = "boots_obj"
	item_state = "boots_onmobs"
	item_icons = list(
		WEAR_FEET = 'void-marines/icons/bio_corp.dmi',
	)
	item_state_slots = list(WEAR_FEET = "boots_onmobs")
	armor_rad = CLOTHING_ARMOR_GIGAHIGHPLUS
	armor_bio = CLOTHING_ARMOR_GIGAHIGHPLUS

/obj/item/clothing/shoes/veteran/pmc/commando/bionational/Initialize(mapload, ...)
	. = ..()
	stored_item = new /obj/item/attachable/bayonet(src)
	update_icon()

/obj/item/clothing/head/helmet/marine/veteran/bionational
	name = "\improper corporate tactical helmet"
	desc = "A sturdy helmet worn by an unknown PMC group."
	icon = 'void-marines/icons/bio_corp.dmi'
	icon_state = "helmet obj"
	item_state = "helmet onmobs"
	item_icons = list(
		WEAR_HEAD = 'void-marines/icons/bio_corp.dmi',
	)
	item_state_slots = list(WEAR_HEAD = "helmet onmobs")
	flags_armor_protection = BODY_FLAG_HEAD|BODY_FLAG_FACE|BODY_FLAG_EYES
	armor_melee = CLOTHING_ARMOR_MEDIUMHIGH
	armor_bullet = CLOTHING_ARMOR_MEDIUMHIGH
	armor_energy = CLOTHING_ARMOR_MEDIUMLOW
	armor_bomb = CLOTHING_ARMOR_MEDIUM
	armor_bio = CLOTHING_ARMOR_VERYHIGHPLUS
	armor_rad = CLOTHING_ARMOR_VERYHIGHPLUS
	armor_internaldamage = CLOTHING_ARMOR_MEDIUMHIGH
	flags_inventory = COVEREYES|COVERMOUTH|BLOCKSHARPOBJ
	flags_inv_hide = HIDEEARS|HIDEEYES|HIDEFACE|HIDEMASK|HIDEALLHAIR
	flags_marine_helmet = NO_FLAGS

/obj/item/clothing/head/helmet/marine/veteran/bionational/leader
	name = "\improper corporate tactical helmet"
	desc = "A sturdy helmet worn by an unknown PMC group. This one has much better visor."
	icon_state = "leader helmet obj"
	item_state = "leader helmet onmobs"
	item_state_slots = list(WEAR_HEAD = "leader helmet onmobs")
	armor_melee = CLOTHING_ARMOR_HIGHPLUS
	armor_bullet = CLOTHING_ARMOR_HIGHPLUS
	armor_energy = CLOTHING_ARMOR_MEDIUMHIGH
	armor_bomb = CLOTHING_ARMOR_MEDIUM
	armor_bio = CLOTHING_ARMOR_GIGAHIGHPLUS
	armor_rad = CLOTHING_ARMOR_GIGAHIGHPLUS
	armor_internaldamage = CLOTHING_ARMOR_HIGHPLUS

/obj/item/clothing/accessory/patch/bionational
	name = "Lasalle Bionational Spec-Ops patch"
	desc = "A fire-resistant shoulder patch, worn by the men and women of the LB-Corp special task forces."
	icon = 'void-marines/icons/bio_corp.dmi'
	icon_state = "patch"
	item_state = "uniform patch overlay"
	item_icons = list(
		WEAR_BODY = 'void-marines/icons/bio_corp.dmi', WEAR_JACKET = 'void-marines/icons/bio_corp.dmi'
	)
	item_state_slots = list(WEAR_BODY = "uniform patch overlay", WEAR_JACKET = "uniform patch overlay")

/obj/item/storage/backpack/marine/satchel/intel/upgraded
	max_storage_space = 30

/obj/item/clothing/glasses/hud/health/upgraded
	hud_type = MOB_HUD_MEDICAL_OBSERVER


//WEAPONS//
/obj/item/weapon/gun/bionational/laser_rifle
	name = "A-M36 experimental rifle"
	desc = "Experimental thermal weapon, issued only to LBC Spec-Ops."

	icon = 'void-marines/icons/bio_corp.dmi'
	icon_state = "am36"
	item_state = "am36_inhand"
	item_icons = list(
		WEAR_L_HAND = 'void-marines/icons/bio_corp.dmi',
		WEAR_R_HAND = 'void-marines/icons/bio_corp.dmi'
		)

	pickup_sound = "gunequip"
	drop_sound = "gunrustle"
	pickupvol = 7
	dropvol = 15

	w_class = SIZE_LARGE
	force = 10
	flags_atom = NOBLOODY|CONDUCT
	flags_item = TWOHANDED

	current_mag = /obj/item/ammo_magazine/rifle/bionational

	fire_sound = 'sound/weapons/Laser4.ogg'
	reload_sound = 'sound/weapons/handling/m41_reload.ogg'
	unload_sound = 'sound/weapons/handling/m41_unload.ogg'
	cocked_sound = 'sound/weapons/gun_cocked2.ogg'

	movement_onehanded_acc_penalty_mult = 4
	wield_delay = 1 SECONDS
	aim_slowdown = SLOWDOWN_ADS_RIFLE

	flags_gun_features = GUN_AMMO_COUNTER|GUN_ANTIQUE
	gun_category = GUN_CATEGORY_RIFLE

	start_automatic = TRUE
	cock_delay = 4 SECONDS // Cooling batteries

	var/heat_stored = 0 //how much we have currently
	var/heat_max = 500 //how much we need to overheat

	var/heat_gain = 10 //how much heat we gain per shot
	var/overheated = FALSE

	var/heat_loss = 20 //how much heat we lose per second
	var/cooldown_delay = 4 SECONDS //time it takes for minigun to start radiate heat by itself

/obj/item/weapon/gun/bionational/laser_rifle/Initialize(mapload, spawn_empty)
	. = ..()
	if(current_mag && current_mag.current_rounds > 0)
		load_into_chamber()
	START_PROCESSING(SSfastobj, src)

/obj/item/weapon/gun/bionational/laser_rifle/Destroy()
	. = ..()
	STOP_PROCESSING(SSfastobj, src)

/obj/item/weapon/gun/bionational/laser_rifle/get_examine_text(mob/user)
	. = ..()
	. += SPAN_ORANGE("CURRENT HEAT: [heat_stored / heat_max * 100]/100.")

/obj/item/weapon/gun/bionational/laser_rifle/process(mob/user)
	var/cool_delay = last_fired + cooldown_delay
	if(world.time > cool_delay && !overheated)
		heat_stored = max(heat_stored - heat_loss / 2, 0)

	handle_heat_effects()

	if(ismob(loc))
		var/mob/M = loc
		M.update_inv_l_hand()
		M.update_inv_r_hand()

/obj/item/weapon/gun/bionational/laser_rifle/handle_fire(atom/target, mob/living/user, params, reflex = FALSE, dual_wield, check_for_attachment_fire, akimbo, fired_by_akimbo)
	if(overheated)
		to_chat(user, SPAN_LARGE(SPAN_DANGER(SPAN_BOLD("COOL IT DOWN!"))))
		return

	heat_stored = min(heat_stored + heat_gain, heat_max)
	handle_heat_effects()

	if(heat_stored >= heat_max)
		to_chat(user, SPAN_LARGE(SPAN_DANGER(SPAN_BOLD("GUN STOPS DUE TO INTENSE HEAT!"))))
		playsound(loc, 'sound/effects/acid_sizzle4.ogg', 25, TRUE)
		overheated = TRUE
		return

	. = ..()

/obj/item/weapon/gun/bionational/laser_rifle/proc/handle_heat_effects()
	var/heat_coeff = heat_stored / heat_max
	if(!heat_coeff)
		remove_filter("heat_outer")
		remove_filter("heat_inner")
		color = COLOR_WHITE
		return

	add_filter("heat_outer", 1, list("type" = "outline", "color" = "#ff5a00", "size" = 0.1 * heat_coeff))
	add_filter("heat_inner", 1, list("type" = "blur", "size" = heat_coeff - 0.4))
	color = rgb(255, 255 - 130 * heat_coeff, 255 - 200 * heat_coeff)

/obj/item/weapon/gun/bionational/laser_rifle/set_gun_config_values()
	set_fire_delay(FIRE_DELAY_TIER_11)
	accuracy_mult = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_4 + 2*HIT_ACCURACY_MULT_TIER_1
	scatter = SCATTER_AMOUNT_NONE
	burst_scatter_mult = SCATTER_AMOUNT_NONE
	set_burst_amount(BURST_AMOUNT_TIER_1)
	damage_mult = BASE_BULLET_DAMAGE_MULT + BULLET_DAMAGE_MULT_TIER_8
	recoil = RECOIL_OFF

/obj/item/weapon/gun/bionational/laser_rifle/unique_action(mob/user)
	cock(user)

/obj/item/weapon/gun/bionational/laser_rifle/cock(mob/user)
	if(!overheated)
		to_chat(user, SPAN_DANGER("[src] in a somewhat good state! You don't need to cool it manually!"))
		return

	if(cock_cooldown > world.time)
		return

	cock_cooldown = world.time + cock_delay

	if(!do_after(user, cock_delay, INTERRUPT_INCAPACITATED, BUSY_ICON_GENERIC))
		to_chat(user, SPAN_DANGER("Your [src] cooling was interrupted!"))
		return

	user.visible_message(SPAN_NOTICE("[user] opens [src] batteries, giving them some time to cool."),
	SPAN_NOTICE("You open [src] batteries, giving them some time to cool."), null, 4, CHAT_TYPE_COMBAT_ACTION)

	heat_stored -= 100
	overheated = FALSE

	playsound(user, cocked_sound, 25, TRUE)
	handle_heat_effects()

/obj/item/ammo_magazine/rifle/bionational
	name = "\improper A-M36 battery"
	desc = "An energy rifle battery."
	caliber = "energy"
	icon = 'void-marines/icons/bio_corp.dmi'
	icon_state = "battery"
	item_state = "generic_mag"
	w_class = SIZE_SMALL
	default_ammo = /datum/ammo/bullet/rifle/bionational
	max_rounds = 30
	gun_type = /obj/item/weapon/gun/bionational/laser_rifle

/datum/ammo/bullet/rifle/bionational
	name = "thermal pulse"
	icon_state = "laser_new"

	damage_type = BURN
	flags_ammo_behavior = AMMO_ENERGY
	shrapnel_chance = 0
	damage = 30
	accurate_range = 24
	penetration = ARMOR_PENETRATION_TIER_10
	accuracy = HIT_ACCURACY_TIER_10
	scatter = SCATTER_AMOUNT_NONE
	shell_speed = AMMO_SPEED_TIER_2
	effective_range_max = 15
	damage_falloff = DAMAGE_FALLOFF_TIER_1
	max_range = 30

/datum/ammo/bullet/rifle/bionational/set_bullet_traits()
	. = ..()
	LAZYADD(traits_to_give, list(
		BULLET_TRAIT_ENTRY(/datum/element/bullet_trait_incendiary)
	))

/obj/item/weapon/gun/rifle/rmc_f90/bionational
	desc = "The standard issue rifle of Bionational Spec-Ops. Modified version with addition of burst-fire mode and larger magazine."
	current_mag = /obj/item/ammo_magazine/rifle/rmc_f90/pve

/obj/item/ammo_magazine/rifle/rmc_f90/pve
	max_rounds = 60

/obj/item/storage/belt/marine/rmc/rmc_f90_ammo/pve/fill_preset_inventory()
	for(var/i in 1 to storage_slots)
		new /obj/item/ammo_magazine/rifle/rmc_f90/pve(src)

//WEAPONS//

//EQUIPMENT PRESETS//

/datum/equipment_preset/uscm/bionational
	name = "Lasalle Bionational Spec-Ops" //Parent type for easier gear
	assignment = "Agent"
	rank = "Agent"
	role_comm_title = "LBC"
	flags = EQUIPMENT_PRESET_EXTRA
	auto_squad_name = SQUAD_CBRN
	ert_squad = TRUE
	skills = /datum/skills/pmc //More trained than the average rifleman

/datum/equipment_preset/uscm/bionational/New()
	. = ..()
	access = get_access(ACCESS_LIST_UA)

/datum/equipment_preset/uscm/bionational/load_status(mob/living/carbon/human/new_human)
	new_human.nutrition = NUTRITION_NORMAL

/datum/equipment_preset/uscm/bionational/load_gear(mob/living/carbon/human/new_human)
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/marine/satchel/intel/upgraded(new_human), WEAR_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/distress/cbrn(new_human), WEAR_L_EAR)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/under/marine/veteran/bionational(new_human), WEAR_BODY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/marine/veteran/bionational(new_human), WEAR_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/gloves/marine/veteran/bionational(new_human), WEAR_HANDS)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/veteran/pmc/commando/bionational(new_human), WEAR_FEET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/marine/veteran/bionational(new_human), WEAR_HEAD)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/accessory/patch/bionational, WEAR_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/storage/box/MRE(new_human), WEAR_IN_JACKET)

/datum/equipment_preset/uscm/bionational/standard
	name = "Lasalle Bionational Spec-Ops (Agent)"
	role_comm_title = "AGT"

/datum/equipment_preset/uscm/bionational/standard/load_gear(mob/living/carbon/human/new_human)
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

/datum/equipment_preset/uscm/bionational/engineer
	name = "Lasalle Bionational Spec-Ops (Decker)"
	paygrade = "ME4"
	assignment = "Decker"
	rank = "Decker"
	role_comm_title = "DECK"
	minimap_icon = "engi"
	skills = /datum/skills/pmc/engineer

/datum/equipment_preset/uscm/bionational/engineer/load_gear(mob/living/carbon/human/new_human)
	. = ..()

	new_human.equip_to_slot_or_del(new /obj/item/clothing/accessory/storage/tool_webbing/equipped(new_human), WEAR_ACCESSORY)
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
	new_human.equip_to_slot_or_del(new /obj/item/prop/geiger_counter(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/device/black_market_hacking_device(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/reagent_container/spray/cleaner(new_human), WEAR_IN_BACK)

/datum/equipment_preset/uscm/bionational/medic
	name = "Lasalle Bionational Spec-Ops (Corpsman)"
	paygrade = "ME4"
	assignment = "Corpsman"
	rank = "Corpsman"
	role_comm_title = "Corps"
	minimap_icon = "medic"
	skills = /datum/skills/pmc/medic

/datum/equipment_preset/uscm/bionational/medic/load_gear(mob/living/carbon/human/new_human)
	. = ..()

	new_human.equip_to_slot_or_del(new /obj/item/clothing/accessory/storage/webbing/five_slots(new_human), WEAR_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/storage/belt/gun/m4a3/vp70(new_human), WEAR_J_STORE)
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

/datum/equipment_preset/uscm/bionational/leader
	name = "Lasalle Bionational Spec-Ops (Operator)"
	paygrade = "ME5"
	assignment = "Operator"
	rank = "Operator"
	role_comm_title = "OP"
	minimap_icon = "tl"
	skills = /datum/skills/pmc/SL

/datum/equipment_preset/uscm/bionational/leader/load_gear(mob/living/carbon/human/new_human)
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/marine/satchel/intel/upgraded(new_human), WEAR_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/distress/cbrn(new_human), WEAR_L_EAR)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/under/marine/veteran/bionational(new_human), WEAR_BODY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/marine/veteran/bionational(new_human), WEAR_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/gloves/marine/veteran/bionational(new_human), WEAR_HANDS)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/veteran/pmc/commando/bionational(new_human), WEAR_FEET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/marine/veteran/bionational/leader(new_human), WEAR_HEAD)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/accessory/patch/bionational, WEAR_ACCESSORY)

	new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/bionational/laser_rifle(new_human), WEAR_J_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/general/large(new_human), WEAR_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/firstaid/ert(new_human), WEAR_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/accessory/storage/webbing/five_slots(new_human), WEAR_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/glasses/hud/health/upgraded(new_human), WEAR_EYES)
	new_human.equip_to_slot_or_del(new /obj/item/storage/belt/utility/full, WEAR_WAIST)

	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/bionational(new_human), WEAR_IN_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/bionational(new_human), WEAR_IN_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/bionational(new_human), WEAR_IN_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/bionational(new_human), WEAR_IN_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/bionational(new_human), WEAR_IN_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/bionational(new_human), WEAR_IN_L_STORE)

	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/bionational(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/bionational(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/bionational(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/bionational(new_human), WEAR_IN_BACK)

	new_human.equip_to_slot_or_del(new /obj/item/reagent_container/glass/bottle/labeled_black_goo_cure(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/reagent_container/glass/bottle/labeled_black_goo_cure(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/box/syringes(new_human), WEAR_IN_BACK)

	new_human.equip_to_slot_or_del(new /obj/item/device/binoculars(new_human), WEAR_IN_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/explosive/grenade/incendiary(new_human), WEAR_IN_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/explosive/grenade/incendiary(new_human), WEAR_IN_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/explosive/grenade/incendiary(new_human), WEAR_IN_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/explosive/grenade/incendiary(new_human), WEAR_IN_ACCESSORY)

/datum/equipment_preset/uscm/bionational/specialist
	name = "Lasalle Bionational Spec-Ops (Liquidator)"
	paygrade = "O"
	assignment = "Liquidator"
	rank = "Liquidator"
	role_comm_title = "LQ"
	minimap_icon = "spec"
	skills = /datum/skills/commando/deathsquad

/datum/equipment_preset/uscm/bionational/specialist/load_gear(mob/living/carbon/human/new_human)
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/distress/cbrn(new_human), WEAR_L_EAR)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/under/marine/veteran/bionational(new_human), WEAR_BODY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/marine/veteran/bionational(new_human), WEAR_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/gloves/marine/veteran/bionational(new_human), WEAR_HANDS)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/veteran/pmc/commando/bionational(new_human), WEAR_FEET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/marine/veteran/bionational(new_human), WEAR_HEAD)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/accessory/patch/bionational, WEAR_ACCESSORY)

	new_human.equip_to_slot_or_del(new /obj/item/clothing/accessory/storage/webbing/five_slots(new_human), WEAR_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/flamertank(new_human), WEAR_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/flamertank(new_human), WEAR_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/general_belt(new_human), WEAR_WAIST)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/glasses/hud/health/upgraded(new_human), WEAR_EYES)

	new_human.equip_to_slot_or_del(new /obj/item/storage/large_holster/fuelpack(new_human), WEAR_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/flamer/M240T(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/flamer_tank/large/X(new_human), WEAR_IN_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/flamer_tank/large/X(new_human), WEAR_IN_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/flamer_tank/large/B(new_human), WEAR_IN_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/flamer_tank/large/B(new_human), WEAR_IN_R_STORE)

	new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/rifle/rmc_f90/bionational(new_human), WEAR_J_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/rmc_f90/pve(new_human), WEAR_IN_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/rmc_f90/pve(new_human), WEAR_IN_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/rmc_f90/pve(new_human), WEAR_IN_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/rmc_f90/pve(new_human), WEAR_IN_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/rmc_f90/pve(new_human), WEAR_IN_ACCESSORY)

	new_human.equip_to_slot_or_del(new /obj/item/explosive/grenade/incendiary(new_human), WEAR_IN_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/explosive/grenade/incendiary(new_human), WEAR_IN_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/storage/box/MRE(new_human), WEAR_IN_JACKET)
