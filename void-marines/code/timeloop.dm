SUBSYSTEM_DEF(timeloop)
	name = "Timeloop"
	wait = 1 SECONDS
	flags = SS_KEEP_TIMING | SS_NO_INIT | SS_NO_FIRE

	var/mainloop_timer_id
	/// How often does the loop happen
	var/looptime = 8 MINUTES
	/// How long after loop ends that the nuke goes off
	var/nukepostloop = 2 MINUTES
	/// Force-stop the looping
	var/forcestop_loop = FALSE

/datum/controller/subsystem/timeloop/stat_entry(msg)
	if(mainloop_timer_id)
		msg = "TIME:[timeleft(mainloop_timer_id)]"
	return ..()

/datum/controller/subsystem/timeloop/proc/start_timeloop()
	var/time = looptime + 35 SECONDS
	mainloop_timer_id = addtimer(CALLBACK(src, PROC_REF(loop)), time, TIMER_UNIQUE|TIMER_OVERRIDE|TIMER_STOPPABLE)

/datum/controller/subsystem/timeloop/proc/loop()
	if(forcestop_loop)
		return

	revert_timeloop()
	mainloop_timer_id = addtimer(CALLBACK(src, PROC_REF(loop)), looptime + 35 SECONDS, TIMER_UNIQUE|TIMER_OVERRIDE|TIMER_STOPPABLE)

// --- \\

/atom/movable/screen/fullscreen/timeloop
	icon_state = "timeloop"


GLOBAL_LIST_EMPTY_TYPED(timeloop_saves, /datum/timeloop_save)
GLOBAL_VAR_INIT(timeloop_power, 1)
GLOBAL_VAR_INIT(nuketimer_started, 0)
GLOBAL_VAR(timeloop_nuke)
GLOBAL_VAR(paradrop_loc)
GLOBAL_VAR_INIT(map_iteration, 1)
GLOBAL_VAR(nuketimer_id)


/datum/timeloop_save
	var/mob/living/carbon/human/relevant_mob

	var/x
	var/y
	var/z

/datum/timeloop_save/Destroy(force, ...)
	relevant_mob = null
	return ..()

/proc/init_timeloop()
	for(var/mob/living/carbon/human/marine in GLOB.alive_human_list)
		var/area/marine_area = get_area(marine)
		if(istype(marine_area, /area/shuttle/midway))
			marine.timeloop_start()

	SStimeloop.start_timeloop()
	paradrooping()

/mob/living/carbon/human/proc/timeloop_start()
	var/datum/timeloop_save/save = new()
	var/turf/marine_turf = get_turf(src)
	save.relevant_mob = src
	// There'll only be one shuttle, so the coordinates will always be the same as long as the shuttle's in the air
	save.x = marine_turf.x
	save.y = marine_turf.y
	save.z = marine_turf.z
	GLOB.timeloop_saves += save
	to_chat(src, SPAN_NOTICE("<i>You feel a shiver go down your spine.</i>"))

/mob/living/carbon/human/proc/timeloop_revert_overlay()
	set waitfor = FALSE

	var/atom/movable/screen/fullscreen/screen = overlay_fullscreen("timeloop", /atom/movable/screen/fullscreen/timeloop)
	sleep(1.1 SECONDS)
	screen.icon_state = "timeloop_perm"

/proc/start_nuketimer()
	//addtimer(CALLBACK(bomb, TYPE_PROC_REF(/obj/structure/machinery/nuclearbomb, explode)), SStimeloop.nukepostloop)
	GLOB.nuketimer_started = TRUE
	GLOB.nuketimer_id = addtimer(CALLBACK(GLOBAL_PROC, GLOBAL_PROC_REF(message_admins), "TIME IS UP. DETONATE THE BOMB."), SStimeloop.nukepostloop, TIMER_UNIQUE|TIMER_OVERRIDE|TIMER_STOPPABLE)

/proc/revert_timeloop()
	if(!GLOB.timeloop_power)
		if(!GLOB.nuketimer_started)
			start_nuketimer()
		return

	GLOB.map_iteration++
	for(var/datum/timeloop_save/save as anything in GLOB.timeloop_saves)
		revert_timeloop_singleton(save)

	paradrooping()

/proc/revert_timeloop_singleton(datum/timeloop_save/save)
	set waitfor = FALSE

	save.relevant_mob.Stun(100)
	save.relevant_mob.timeloop_revert_overlay()
	sleep(1.5 SECONDS)
	playsound_client(save.relevant_mob.client, 'sound/misc/wand_teleport.ogg')
//	save.relevant_mob.forceMove(locate(save.x, save.y, save.z))
	to_chat(save.relevant_mob, SPAN_NOTICE("You suddenly feel yourself pulled to somewhere unknown!"))
//	sleep(1.5 SECONDS)
	save.relevant_mob.SetStun(0)
	save.relevant_mob.clear_fullscreen("timeloop", TRUE)

/proc/paradrooping()
	set waitfor = FALSE
	if(GLOB.map_iteration == 1)
		return 0
	for(var/datum/timeloop_save/save as anything in GLOB.timeloop_saves)
		INVOKE_ASYNC(save.relevant_mob, TYPE_PROC_REF(/atom/movable, handle_paradrop), locate(190, 235, 1 + GLOB.map_iteration), "CMD-Tycoon")

/*	sleep(10 SECONDS)
	var/obj/docking_port/mobile/marine_dropship/midway/midway_port = GLOB.midway_dockingport
	var/area/shuttle/midway/midway_area = get_area(midway_port)
	for(var/datum/timeloop_save/save as anything in GLOB.timeloop_saves)
		shake_camera(save.relevant_mob, 2, 3)
		playsound_client(save.relevant_mob.client, 'sound/effects/powerloss.ogg', vol = 75)
	sleep(5 SECONDS)
	for(var/datum/timeloop_save/save as anything in GLOB.timeloop_saves)
		to_chat(save.relevant_mob, SPAN_WARNING("You feel the dropship's speed decrease as the engines go quieter."))
	sleep(3 SECONDS)
	midway_area.base_lighting_alpha = 0
	midway_area.update_base_lighting()
	announcement_helper("ALERT:\n Unknown energy pulse has hit Dropship Midway, engine power lost. Crash landing likely.", MAIN_AI_SYSTEM, GLOB.human_mob_list, sound('sound/misc/interference.ogg'))
	sleep(2 SECONDS)
	for(var/datum/timeloop_save/save as anything in GLOB.timeloop_saves)
		to_chat(save.relevant_mob, SPAN_WARNING("You feel the dropship's nose begin to pitch downwards as it enters freefall."))
	sleep(6 SECONDS)
	for(var/datum/timeloop_save/save as anything in GLOB.timeloop_saves)
		playsound_client(save.relevant_mob.client, 'sound/effects/dropship_incoming.ogg', vol = 75)
	sleep(7 SECONDS)
	for(var/datum/timeloop_save/save as anything in GLOB.timeloop_saves)
		playsound_client(save.relevant_mob.client, 'sound/effects/metal_crash.ogg', vol = 75)
	sleep(0.1 SECONDS)
	var/turf/T = get_turf(midway_port)

	var/turf/T3 = locate(115, 54, 1 + GLOB.map_iteration) //hardcoded because fuck you

	for(var/datum/timeloop_save/save as anything in GLOB.timeloop_saves)
		var/turf/T2 = get_turf(save.relevant_mob)
		save.relevant_mob.forceMove(locate(T3.x + (T2.x - T.x), T3.y + (T2.y - T.y), 1 + GLOB.map_iteration))
		shake_camera(save.relevant_mob, 8, 8)
		save.relevant_mob.Stun(3)
*/
