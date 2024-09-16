
//AREAS

/area/shuttle/piercer
	name = "Dropship Piercer"
	icon_state = "shuttlered"
	base_muffle = MUFFLE_HIGH
	soundscape_interval = 30
	is_landing_zone = TRUE
	ceiling = CEILING_REINFORCED_METAL

/area/shuttle/piercer/Enter(atom/movable/O, atom/oldloc)
	if(istype(O, /obj/structure/barricade))
		return FALSE
	return TRUE

//PORT

/datum/map_template/shuttle/piercer
	name = "Piercer"
	shuttle_id = DROPSHIP_PIERCER

/obj/docking_port/mobile/marine_dropship/piercer
	name = "Piercer"
	id = DROPSHIP_PIERCER
	width = 11
	height = 13

	dwidth = 5
	dheight = 6

/obj/structure/machinery/computer/shuttle/dropship/flight/remote_control/piercer
	icon = 'icons/obj/structures/machinery/computer.dmi'
	icon_state = "shuttle"
	shuttleId = DROPSHIP_PIERCER
	is_remote = TRUE
	needs_power = TRUE
