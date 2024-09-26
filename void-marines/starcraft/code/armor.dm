
// helmet

/obj/item/clothing/head/helmet/marine/veteran/trooper
	name = "\improper corporate tactical helmet"
	desc = "The CMO Mk. VI Powered Combat Helmet is an integral part of the Marine's combat suit, offering advanced protection and critical combat support systems."
	icon = 'void-marines/starcraft/icons/armor.dmi'
	icon_state = "trooper_helmet_obj"
	item_state = "trooper_helmet_onmob"
	item_icons = list(
		WEAR_HEAD = 'void-marines/starcraft/icons/armor.dmi',
	)
	item_state_slots = list(WEAR_HEAD = "trooper_helmet_onmob")
	flags_armor_protection = BODY_FLAG_HEAD|BODY_FLAG_FACE|BODY_FLAG_EYES
	armor_laser = CLOTHING_ARMOR_MEDIUM
	armor_bomb = CLOTHING_ARMOR_MEDIUM
	armor_rad = CLOTHING_ARMOR_MEDIUM
	armor_bullet = CLOTHING_ARMOR_HIGH
	armor_melee = CLOTHING_ARMOR_HIGH
	armor_internaldamage = CLOTHING_ARMOR_MEDIUMHIGH
	armor_internaldamage = CLOTHING_ARMOR_MEDIUMHIGH
	flags_inventory = BLOCKSHARPOBJ
	flags_inv_hide = HIDEALLHAIR
	flags_marine_helmet = NO_FLAGS

// armor

/obj/item/clothing/suit/storage/marine/veteran/trooper
	name = "\improper CMO Mk. VI Powered Combat Suit"
	desc = "The CMO Mk. VI Powered Combat Suit is a standard-issue armor for Terran Marines, designed to provide enhanced protection and combat effectiveness on the battlefield. This suit features a powered exoskeleton that amplifies the wearer's strength and endurance, allowing for extended operations in hostile environments and enabling the use of heavy weaponry."
	icon = 'void-marines/starcraft/icons/armor.dmi'
	icon_state = "trooper_obj"
	item_state = "trooper_armor_onmob"
	item_icons = list(
		WEAR_JACKET = 'void-marines/starcraft/icons/armor.dmi'
	)
	item_state_slots = list(WEAR_JACKET = "trooper_armor_onmob")
	armor_laser = CLOTHING_ARMOR_MEDIUM
	armor_bomb = CLOTHING_ARMOR_MEDIUM
	armor_rad = CLOTHING_ARMOR_MEDIUM
	armor_bullet = CLOTHING_ARMOR_HIGH
	armor_melee = CLOTHING_ARMOR_HIGH
	armor_internaldamage = CLOTHING_ARMOR_MEDIUMHIGH
	flags_marine_armor = NO_FLAGS
	storage_slots = 2
	slowdown = SLOWDOWN_ARMOR_LIGHT
	flags_inventory = BLOCKSHARPOBJ
	flags_atom = NO_NAME_OVERRIDE|NO_SNOW_TYPE
	flags_armor_protection = BODY_FLAG_ALL_BUT_HEAD
	flags_cold_protection = BODY_FLAG_ALL_BUT_HEAD
	flags_heat_protection = BODY_FLAG_ALL_BUT_HEAD
	allowed = list(
		/obj/item/device/flashlight,
		/obj/item/ammo_magazine,
		/obj/item/attachable/bayonet,
		/obj/item/storage/backpack/general_belt,
		/obj/item/device/motiondetector,
		/obj/item/device/walkman,
	)
	var/list/smartgun_back = list(
		/obj/item/storage/large_holster/machete,
	)

/obj/item/clothing/suit/storage/marine/veteran/trooper/mob_can_equip(mob/equipping_mob, slot, disable_warning = FALSE)
	. = ..()

	if(equipping_mob.back && !(equipping_mob.back.flags_item & SMARTGUNNER_BACKPACK_OVERRIDE))
		to_chat(equipping_mob, SPAN_WARNING("You can't equip [src] while wearing a backpack."))
		return FALSE

/obj/item/clothing/suit/storage/marine/veteran/trooper/equipped(mob/user, slot, silent)
	. = ..()

	if(slot == WEAR_JACKET)
		RegisterSignal(user, COMSIG_HUMAN_ATTEMPTING_EQUIP, PROC_REF(check_equipping))

/obj/item/clothing/suit/storage/marine/veteran/trooper/proc/check_equipping(mob/living/carbon/human/equipping_human, obj/item/equipping_item, slot)
	SIGNAL_HANDLER

	if(slot != WEAR_BACK)
		return

	if(equipping_item.flags_item & SMARTGUNNER_BACKPACK_OVERRIDE || is_type_in_list(equipping_item, smartgun_back))
		return

	. = COMPONENT_HUMAN_CANCEL_ATTEMPT_EQUIP

	if(equipping_item.flags_equip_slot == SLOT_BACK)
		to_chat(equipping_human, SPAN_WARNING("You can't equip [equipping_item] on your back while wearing [src]."))
		return

/obj/item/clothing/suit/storage/marine/veteran/trooper/unequipped(mob/user, slot)
	. = ..()

	UnregisterSignal(user, COMSIG_HUMAN_ATTEMPTING_EQUIP)
