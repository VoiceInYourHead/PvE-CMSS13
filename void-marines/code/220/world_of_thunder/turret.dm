/obj/item/hardpoint/holder/tank_turret/old
	name = "Tank Turret"
	activatable = FALSE
	ammo = null

	rotation_windup = 15

	accepted_hardpoints = list(
		// primaries
		/obj/item/hardpoint/primary/flamer,
		/obj/item/hardpoint/primary/cannon,
		/obj/item/hardpoint/primary/minigun,
		/obj/item/hardpoint/primary/autocannon,
		// secondaries
		/obj/item/hardpoint/secondary/small_flamer,
		/obj/item/hardpoint/secondary/towlauncher,
		/obj/item/hardpoint/secondary/m56cupola,
		/obj/item/hardpoint/secondary/grenade_launcher,
		// prikol
		/obj/item/hardpoint/primary/old_cannon,
		/obj/item/hardpoint/primary/old_cannon/sherman,
		/obj/item/hardpoint/primary/old_cannon/long,
		/obj/item/hardpoint/primary/old_cannon/t34,
		/obj/item/hardpoint/primary/old_cannon/double,
	)

/obj/item/hardpoint/holder/tank_turret/old/get_tgui_info()
	var/list/data = list()

	for(var/obj/item/hardpoint/H in hardpoints)
		data += list(H.get_tgui_info())

	return data

///SPG turret, no turn
/obj/item/hardpoint/holder/tank_turret/old/no_turn
	name = "SPG Turret"

/obj/item/hardpoint/holder/tank_turret/old/no_turn/toggle_gyro(mob/user)
	to_chat(user, SPAN_NOTICE("какие стабы мы в сау играем"))

/obj/item/hardpoint/holder/tank_turret/old/no_turn/user_rotation(mob/user, deg)
	return
