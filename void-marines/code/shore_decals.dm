/obj/effect/decal/shore
	name = "water"
	icon = 'void-marines/icons/water_overlay.dmi'
	layer = TURF_LAYER
	anchored = TRUE
	mouse_opacity = MOUSE_OPACITY_TRANSPARENT

/obj/effect/decal/shore/line
	icon_state = "shore1_overlay"

/obj/effect/decal/shore/line/Initialize(mapload, ...)
	. = ..()
	icon_state = "shore[rand(1,3)]_overlay"

/obj/effect/decal/shore/corner
	icon_state = "shore_corner1_overlay"

/obj/effect/decal/shore/corner/Initialize(mapload, ...)
	. = ..()
	icon_state = "shore_corner[rand(1,2)]_overlay"

/obj/effect/decal/shore/edge
	icon_state = "shore_edge1_overlay"

/obj/effect/decal/shore/cave
	icon_state = "shore_caves_overlay"
