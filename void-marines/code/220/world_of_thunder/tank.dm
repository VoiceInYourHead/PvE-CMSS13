/obj/vehicle/multitile/tank/old
	icon = 'icons/obj/vehicles/tank.dmi'
	icon_state = "tank_base"

	interior_map = /datum/map_template/interior/tank

	passengers_slots = 6
	//this is done in case VCs die inside the tank, so that someone else can come in and take them out.
	revivable_dead_slots = 2
	xenos_slots = 6

	movement_sound = 'sound/vehicles/tank_driving.ogg'
	honk_sound = 'sound/vehicles/honk_3_ambulence.ogg'

	vehicle_flags = VEHICLE_CLASS_MEDIUM

	move_max_momentum = 3
	move_momentum_build_factor = 1.8
	move_turn_momentum_loss_factor = 0.6

	light_range = 4

	// Rest (all the guns) is handled by the tank turret hardpoint
	hardpoints_allowed = list(
		/obj/item/hardpoint/holder/tank_turret/old,
		/obj/item/hardpoint/holder/tank_turret/old/no_turn,
		/obj/item/hardpoint/support/weapons_sensor,
		/obj/item/hardpoint/support/overdrive_enhancer,
		/obj/item/hardpoint/support/artillery_module,
		/obj/item/hardpoint/support/artillery_module/large,
		/obj/item/hardpoint/locomotion/treads,
		/obj/item/hardpoint/locomotion/treads/robust,
		/obj/item/hardpoint/locomotion/treads/old,
		/obj/item/hardpoint/locomotion/treads/robust/old,
	)

	dmg_multipliers = list(
		"all" = 3,
		"acid" = 0.5,
		"slash" = 1.2,
		"bullet" = 0.4,
		"explosive" = 1.2,
		"blunt" = 0.8,
		"abstract" = 1
	)

/obj/vehicle/multitile/tank/old/ex_act(severity)
	. = ..()
	interior_crash_effect(TRUE)

/obj/vehicle/multitile/tank/old/name_vehicle()
	to_chat(usr, SPAN_WARNING("ты чё какие имена у нас реалистичная игра"))
	return
