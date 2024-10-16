//basic framework for making resident evil/silent hill -like item picking

/obj/structure/chernozem/inworld_item
	name = "PLACEHOLDER"
	desc = "PLACEHOLDER"
	icon = 'maps/map_files/Chernozem/inworld_items.dmi'
	icon_state = null
	var/stored = null //what kind of item do we have in this entity?

/obj/structure/chernozem/inworld_item/attack_hand(mob/living/carbon/human/user as mob)
	user.balloon_alert_to_viewers("[user] picked up [src]")
	var/stored_item = new stored(get_turf(src))
	user.put_in_hands(stored_item)
	qdel(src)

/obj/structure/chernozem/door_blocker
	name = "BLOCKED ENTRANCE"
	desc = "BLOCKED ENTRANCE."
	icon = 'maps/map_files/Chernozem/quest_objects.dmi'
	icon_state = "blocker"
	density = TRUE
	anchored = TRUE
	var/connected_terminal_id = "test"

/obj/structure/chernozem/access_terminal
	name = "old wall terminal"
	desc = "Used to open and close doors."
	icon = 'maps/map_files/Chernozem/quest_objects.dmi'
	icon_state = "door_access"
	anchored = TRUE
	var/connected_blockers_id = "test"
	var/card_needed = null
	var/opened = FALSE

/obj/structure/chernozem/access_terminal/attackby(obj/item/W, mob/user)
	var/obj/item/chernozem/id_card/card = W
	if(opened)
		user.balloon_alert_to_viewers("[user] swipes [card] trough terminal, but nothing happens!")
		return FALSE
	if(card.type == card_needed)
		if(do_after(user, 5 SECONDS, INTERRUPT_ALL, BUSY_ICON_FRIENDLY))
			user.balloon_alert_to_viewers("[user] swipes [card] trough terminal, and it shows a green light!")
			for(var/obj/structure/chernozem/door_blocker/blocker in orange(10, src))
				if(blocker.connected_terminal_id == connected_blockers_id)
					qdel(blocker)
			opened = TRUE
			return TRUE
	user.balloon_alert_to_viewers("[user] swipes [card] trough terminal, but nothing happens!")
	playsound(src, 'sound/machines/buzz-two.ogg', 15, 1)
	return FALSE

/obj/structure/chernozem/blast
	name = "blast door"
	desc = "An emergency blast door. This one seems broken...without instruments you will not be able to open it."
	icon = 'maps/map_files/Chernozem/quest_objects.dmi'
	icon_state = "blast_closed"
	var/opened = FALSE
	density = TRUE
	opacity = TRUE
	anchored = TRUE

/obj/structure/chernozem/blast/attackby(obj/item/W, mob/user)
	var/obj/item/weapon/chernozem_saw/saw = W
	if(opened)
		to_chat(user, SPAN_DANGER("It's opened already!"))
		return FALSE
	if(saw)
		user.balloon_alert_to_viewers("[user] starts to chop [src] down with [saw]!")
		if(do_after(user, 10 SECONDS, INTERRUPT_ALL, BUSY_ICON_BUILD))
			playsound(loc, 'sound/surgery/saw.ogg', 50, TRUE)
			density = FALSE
			opacity = FALSE
			icon_state = "blast_opened"
			opened = TRUE

/obj/structure/chernozem/inworld_item/fist
	name = "powerfist"
	desc = "Special gauntlet, used by miners to break trough various terrain."
	icon = 'maps/map_files/Chernozem/inworld_items.dmi'
	icon_state = "fist"
	stored = /obj/item/weapon/powerfist

/obj/item/weapon/powerfist
	name = "powerfist"
	desc = "Special gauntlet, used by miners to break trough various terrain."
	icon = 'maps/map_files/Chernozem/real_items.dmi'
	icon_state = "fist"
	item_state = "powerfist"
	item_icons = list(
		WEAR_L_HAND = 'maps/map_files/Chernozem/powerfist_left.dmi',
		WEAR_R_HAND = 'maps/map_files/Chernozem/powerfist_right.dmi'
		)
	force = 60
	var/remove_charge_after = 0
	var/timer_ticking = FALSE
	var/charge_counter = 0
	var/max_charge = 3

/obj/item/weapon/powerfist/Initialize()
	SHOULD_CALL_PARENT(FALSE)
	START_PROCESSING(SSobj, src)

/obj/item/weapon/powerfist/examine(user)
	. = ..()
	to_chat(user, SPAN_ORANGE("It's currently have [charge_counter] charges out of [max_charge]."))

/obj/item/weapon/powerfist/process()

	if(charge_counter > 0)
		src.add_filter("charge", 1, list("type" = "outline", "color" = "#f09712", "size" = 1))

	if(charge_counter >= 1 && timer_ticking == FALSE) //checking if fist even have charge and if we counting something already
		timer_ticking = TRUE
		remove_charge_after += 30
	if(remove_charge_after > 0) //slowly removing timer until it will be lowered to 0
		remove_charge_after -= 1
	if(remove_charge_after == 0 && timer_ticking) //if we at 0 and have working timer - remove charge and start again if needed!
		charge_counter -= 1
		timer_ticking = FALSE
		if(charge_counter == 0)
			src.remove_filter("charge")

/obj/item/weapon/powerfist/attack_self(mob/user)
	SHOULD_CALL_PARENT(FALSE)
	if(charge_counter < max_charge)
		user.balloon_alert_to_viewers("[user] starts to charging the [src]!")
		if(do_after(user, 5 SECONDS, INTERRUPT_INCAPACITATED, BUSY_ICON_BUILD))
			charge_counter += 1

/obj/item/weapon/powerfist/attack(mob/living/carbon/M, mob/living/carbon/user)
	if(charge_counter > 0)
		if(M == user)
			to_chat(user, SPAN_DANGER("You can't punch yourself!"))
			return FALSE
		M.apply_damage(force * charge_counter, BRUTE, user.zone_selected)
		user.balloon_alert_to_viewers("[user] sends [M] into the flight!")
		playsound(loc, 'sound/weapons/genhit2.ogg', 50, TRUE)
		var/atom/throw_target = get_edge_target_turf(M, get_dir(src, get_step_away(M, src)))
		var/throw_distance = 1 + charge_counter
		M.throw_atom(throw_target, throw_distance, SPEED_FAST)
		charge_counter = 0
		src.remove_filter("charge")
		return ..()
	return ..()

/obj/structure/chernozem/inworld_item/key
	name = "key (UNKNOWN)"
	desc = "Just an rusty key, used to open small storages."
	icon_state = "key"
	stored = /obj/item/chernozem/key

/obj/structure/chernozem/inworld_item/paper
	name = "dirty paper"
	desc = "Simple piece of paper with something written over it."
	icon_state = "note"
	stored = /obj/item/paper/chernozem

/mob/living/carbon/human
	var/treated = FALSE

/mob/living/carbon/human/proc/start_counting()
	addtimer(CALLBACK(src, PROC_REF(remove_treated_status)), 20 SECONDS)

/mob/living/carbon/human/proc/remove_treated_status()
	treated = FALSE

/obj/structure/chernozem/inworld_item/medkit
	name = "medical kit"
	desc = "Use it to quickly patch minor damage. IT MAY TAKE SOME TIME!"
	icon = 'maps/map_files/Chernozem/inworld_items.dmi'
	icon_state = "medkit"
	stored = /obj/item/chernozem/medkit

/obj/item/chernozem/medkit
	name = "medical kit"
	desc = "Use it to quickly patch minor damage. IT MAY TAKE SOME TIME!"
	icon = 'maps/map_files/Chernozem/real_items.dmi'
	icon_state = "medkit"

/obj/item/chernozem/medkit/attack_self(mob/living/carbon/human/user)
	SHOULD_CALL_PARENT(FALSE)
	if(user.treated)
		to_chat(user, SPAN_DANGER("You recieved medical help not long ago! Your wounds need time to recover!"))
	user.balloon_alert_to_viewers("[user] starts to bandage his wounds!")
	if(do_after(user, 10 SECONDS, INTERRUPT_ALL, BUSY_ICON_MEDICAL))
		user.balloon_alert_to_viewers("[user] fully healed himself!")
		user.revive(FALSE)
		user.treated = TRUE
		user.start_counting()
		qdel(src)

/obj/item/chernozem/medkit/afterattack(atom/A, mob/user as mob, proximity)
	var/mob/living/carbon/human/target = A
	if(target)
		if(target.treated)
			to_chat(user, SPAN_DANGER("[target] recieved medical help not so long ago! His wounds need time to recover!"))
			return FALSE
		user.balloon_alert_to_viewers("[user] starts to bandage [target]'s wounds!")
		if(do_after(user, 10 SECONDS, INTERRUPT_ALL, BUSY_ICON_MEDICAL))
			user.balloon_alert_to_viewers("[user] fully healed [target]!")
			target.revive(FALSE)
			target.treated = TRUE
			target.start_counting()
			qdel(src)
