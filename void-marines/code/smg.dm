//P90, a classic SMG.

/obj/item/weapon/gun/smg/p90
	name = "\improper FN P90 submachinegun"
	desc = "The FN P90 submachine gun. An archaic design, but still widely used by corporate and mercenary groups, sometimes seen in the hands of civilian populations. This weapon only accepts 5.7×28mm rounds."
	icon = 'void-marines/merge-resolve/guns.dmi'
	icon_state = "p90"
	item_state = "p90"
	item_icons = list(
		WEAR_L_HAND = 'void-marines/merge-resolve/guns_l.dmi',
		WEAR_R_HAND = 'void-marines/merge-resolve/guns_r.dmi'
		)
	fire_sound = 'sound/weapons/p90.ogg'
	current_mag = /obj/item/ammo_magazine/smg/p90
	attachable_allowed = list(
		/obj/item/attachable/suppressor, // Barrel
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/heavy_barrel,
		/obj/item/attachable/compensator,
		/obj/item/attachable/reddot, // Rail
		/obj/item/attachable/reflex,
		/obj/item/attachable/magnetic_harness,
		/obj/item/attachable/scope/mini,
		)

	flags_gun_features = GUN_CAN_POINTBLANK|GUN_ANTIQUE



/obj/item/weapon/gun/smg/p90/set_gun_attachment_offsets()
	attachable_offset = list("muzzle_x" = 30, "muzzle_y" = 17,"rail_x" = 12, "rail_y" = 19, "under_x" = 23, "under_y" = 15, "stock_x" = 28, "stock_y" = 17)

/obj/item/weapon/gun/smg/p90/set_gun_config_values()
	..()
	fire_delay = FIRE_DELAY_TIER_12
	burst_delay = FIRE_DELAY_TIER_12
	burst_amount = BURST_AMOUNT_TIER_3
	accuracy_mult = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_3
	accuracy_mult_unwielded = BASE_ACCURACY_MULT - HIT_ACCURACY_MULT_TIER_5
	scatter = SCATTER_AMOUNT_TIER_6
	burst_scatter_mult = SCATTER_AMOUNT_TIER_4
	scatter_unwielded = SCATTER_AMOUNT_TIER_4
	damage_mult = BASE_BULLET_DAMAGE_MULT + BULLET_DAMAGE_MULT_TIER_4
	recoil_unwielded = RECOIL_AMOUNT_TIER_5

//-------------------------------------------------------

//P90, a classic SMG (TWE version).

/obj/item/weapon/gun/smg/p90/p90_twe
	name = "\improper FN-TWE P90 submachinegun"
	desc = "A variation of the FN P90 submachine gun. Used by mercenaries and royal marines commandos. This weapon only accepts the AP variation of the 5.7×28mm rounds."
	icon = 'icons/obj/items/weapons/guns/guns_by_faction/twe_guns.dmi'
	icon_state = "p90_twe"
	item_state = "p90_twe"

	fire_sound = 'sound/weapons/p90.ogg'
	current_mag = /obj/item/ammo_magazine/smg/p90/p90_twe
	attachable_allowed = list(
		/obj/item/attachable/suppressor, // Barrel
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/heavy_barrel,
		/obj/item/attachable/compensator,
		/obj/item/attachable/reddot, // Rail
		/obj/item/attachable/reflex,
		/obj/item/attachable/magnetic_harness,
		/obj/item/attachable/scope/mini,
		)

	flags_gun_features = GUN_CAN_POINTBLANK|GUN_ANTIQUE



/obj/item/weapon/gun/smg/p90_twe/set_gun_attachment_offsets()
	attachable_offset = list("muzzle_x" = 30, "muzzle_y" = 17,"rail_x" = 12, "rail_y" = 19, "under_x" = 23, "under_y" = 15, "stock_x" = 28, "stock_y" = 17)

/obj/item/weapon/gun/smg/p90_twe/set_gun_config_values()
	..()
	fire_delay = FIRE_DELAY_TIER_12
	burst_delay = FIRE_DELAY_TIER_12
	burst_amount = BURST_AMOUNT_TIER_3
	accuracy_mult = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_3
	accuracy_mult_unwielded = BASE_ACCURACY_MULT - HIT_ACCURACY_MULT_TIER_5
	scatter = SCATTER_AMOUNT_TIER_6
	burst_scatter_mult = SCATTER_AMOUNT_TIER_4
	scatter_unwielded = SCATTER_AMOUNT_TIER_4
	damage_mult = BASE_BULLET_DAMAGE_MULT + BULLET_DAMAGE_MULT_TIER_4
	recoil_unwielded = RECOIL_AMOUNT_TIER_5
