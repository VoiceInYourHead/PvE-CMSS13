/obj/item/hardpoint/primary/old_cannon
	name = "Battle Cannon"
	desc = "A primary cannon for tanks that shoots explosive rounds"

	icon_state = "ltb_cannon"
	disp_icon = "tank"
	disp_icon_state = "ltb_cannon"
	activation_sounds = list('sound/weapons/vehicles/cannon_fire1.ogg', 'sound/weapons/vehicles/cannon_fire2.ogg')

	health = 2000
	firing_arc = 60

	ammo_type = /obj/item/ammo_magazine/hardpoint/old_cannon
	ammo = new /obj/item/ammo_magazine/hardpoint/old_cannon

	max_clips = 1

	px_offsets = list(
		"1" = list(0, 21),
		"2" = list(0, -32),
		"4" = list(32, 0),
		"8" = list(-32, 0)
	)

	muzzle_flash_pos = list(
		"1" = list(0, 59),
		"2" = list(0, -74),
		"4" = list(89, -4),
		"8" = list(-89, -4)
	)

	scatter = 3
	fire_delay = 1 SECONDS

/obj/item/hardpoint/primary/old_cannon/Initialize()
	. = ..()
	ammo.forceMove(src)

/obj/item/hardpoint/primary/old_cannon/set_bullet_traits()
	..()
	if(prob(50)) // LET'S GO GAMBLING
		LAZYADD(traits_to_give, list(
			BULLET_TRAIT_ENTRY(/datum/element/bullet_trait_iff)
		))

/obj/item/hardpoint/primary/old_cannon/try_add_clip(obj/item/ammo_magazine/A, mob/user)
	if(!ammo)
		to_chat(user, SPAN_WARNING("\The [name] doesn't use ammunition."))
		return FALSE

	if(max_clips == 0)
		to_chat(user, SPAN_WARNING("\The [name] does not have room for additional ammo."))
		return FALSE

	if(LAZYLEN(backup_clips) >= max_clips || (contents.len && contents[1]?:current_rounds))
		to_chat(user, SPAN_WARNING("\The [name]'s reloader is full."))
		return FALSE

	to_chat(user, SPAN_NOTICE("You begin loading \the [A] into \the [name]."))

	if(!do_after(user, 10, INTERRUPT_ALL, BUSY_ICON_FRIENDLY))
		to_chat(user, SPAN_WARNING("Something interrupted you while reloading \the [name]."))
		return FALSE

	if(LAZYLEN(backup_clips) >= max_clips || (contents.len && contents[1]?:current_rounds))
		to_chat(user, SPAN_WARNING("\The [name]'s reloader is full."))
		return FALSE

	user.drop_inv_item_to_loc(A, src)

	playsound(loc, 'sound/machines/hydraulics_2.ogg', 50)
	LAZYADD(backup_clips, A)
	to_chat(user, SPAN_NOTICE("You load \the [A] into \the [name]. Ammo: <b>[SPAN_HELPFUL(ammo.current_rounds)]/[SPAN_HELPFUL(ammo.max_rounds)]</b> | Mags: <b>[SPAN_HELPFUL(LAZYLEN(backup_clips))]/[SPAN_HELPFUL(max_clips)]</b>"))
	return TRUE

/obj/item/hardpoint/primary/old_cannon/sherman
	name = "76mm M1 cannon"

/obj/item/hardpoint/primary/old_cannon/long
	name = "17pdr anti-tank cannon"
	disp_icon_state = "ltb_cannon_long"

/obj/item/hardpoint/primary/old_cannon/t34
	name = "76mm Ф-34 cannon"

/obj/item/hardpoint/primary/old_cannon/double
	name = "Paired 76mm Ф-34 cannon"
	disp_icon_state = "ltb_cannon_double"

	ammo_type = /obj/item/ammo_magazine/hardpoint/twin_cannon
	ammo = new /obj/item/ammo_magazine/hardpoint/twin_cannon

	fire_delay = 0
