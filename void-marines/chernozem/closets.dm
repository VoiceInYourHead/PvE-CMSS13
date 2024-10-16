/obj/structure/chernozem/closet
	name = "old rusty closet"
	desc = "It stores items!"
	icon = 'maps/map_files/Chernozem/closets.dmi'
	icon_state = "closet_st"
	anchored = TRUE
	density = TRUE
	var/key_needed = null
	var/list/stored_in = list()
	var/opened = FALSE

/obj/structure/chernozem/closet/Initialize()
	. = ..()
	if(stored_in.len)
		for(var/s in stored_in)
			var/amount = stored_in[s]
			for(var/i = 1, i <= amount, i++)
				new s (src)

/obj/structure/chernozem/closet/attackby(obj/item/W, mob/user)
	var/turf/current_turf = get_turf(src) // Get the turf the crate is on
	var/obj/item/chernozem/key = W
	if(opened)
		to_chat(user, SPAN_DANGER("It's opened already!"))
		return FALSE
	if(key.type == key_needed)
		if(do_after(user, 5 SECONDS, INTERRUPT_ALL, BUSY_ICON_FRIENDLY))
			user.balloon_alert_to_viewers("[user] poking [key] into closet terminal, and it shows a green light!")
			icon_state = "[initial(icon_state)]_opened"
			opened = TRUE
			density = FALSE
			// Move the objects back to the turf, above the closet
			for(var/atom/movable/moving_atom as anything in contents)
				moving_atom.forceMove(current_turf)
			return TRUE
	user.balloon_alert_to_viewers("[user] poking [key] into closet terminal, but nothing happens!")
	playsound(src, 'sound/machines/buzz-two.ogg', 15, 1)
	return FALSE

/obj/structure/chernozem/closet/oneal
	name = "old rusty closet"
	desc = "It stores items! This one has an owner - \"O'Neal\"."
	key_needed = /obj/item/chernozem/key/oneal
	stored_in = list() //FILL
