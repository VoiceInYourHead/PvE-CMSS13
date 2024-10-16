
/obj/item/paper/chernozem
	icon = 'maps/map_files/Chernozem/real_items.dmi'
	icon_state = "note"

/obj/item/paper/chernozem/update_icon()
	icon_state = initial(icon_state)

/obj/item/chernozem/id_card
	name = "ID card (UNKNOWN)"
	desc = "Just an ID of some worker."
	icon = 'maps/map_files/Chernozem/real_items.dmi'
	icon_state = "doctor_card"

/obj/item/chernozem/key
	name = "key (UNKNOWN)"
	desc = "Just an rusty key, used to open small storages."
	icon = 'maps/map_files/Chernozem/real_items.dmi'
	icon_state = "key"

/obj/item/weapon/chernozem_saw
	name = "working saw"
	desc = "Saw, used on building sites and in mineshafts to do various things."
	icon = 'maps/map_files/Chernozem/real_items.dmi'
	icon_state = "saw"
	item_state = "saw3"
	force = 35

/obj/structure/chernozem/inworld_item/saw
	name = "working saw"
	desc = "Saw, used on building sites and in mineshafts to do various things."
	icon_state = "saw"
	stored = /obj/item/weapon/chernozem_saw

//HOSPITAL

/obj/item/chernozem/id_card/hospital
	name = "ID card (Dr. Angelica)"
	desc = "ID, which belongs to one of the hospital nurses."

/obj/structure/chernozem/inworld_item/hospital_card
	name = "ID card (Dr. Angelica)"
	desc = "ID, which belongs to one of the hospital nurses."
	icon_state = "doctor_card"
	stored = /obj/item/chernozem/id_card/hospital

/obj/structure/chernozem/access_terminal/hospital
	connected_blockers_id = "hospital"
	card_needed = /obj/item/chernozem/id_card/hospital

/obj/structure/chernozem/door_blocker/hospital
	connected_terminal_id = "hospital"

//HOSPITAL

//WORKERS CLOSETS

/obj/structure/chernozem/inworld_item/paper/oneal
	name = "piece of journal"
	desc = "The torn sheet of someone's writing journal."
	icon_state = "note"
	stored = /obj/item/paper/chernozem/oneal

/obj/item/paper/chernozem/oneal
	name = "piece of Brooks journal"
	info = "<i>Я проснулся от его крика. Одна из этих тварей утащила О'Нила прямо через дыру в стене. <BR> Идиот, судя по-всему, не нашёл идеи лучше, нежели сунуть туда свою голову, или выкинул ещё что-то на подобии...когда они вообще успели её прорыть? Нет, вообще, КАК они это сделали? <BR> Мне страшно представить, на что ещё они способны, если даже слой пластали - для них не проблема. И ещё страшнее осознавать то, что моя импровизированная баррикада не сделает им вообще ничего. <BR> Нет, так точно не пойдёт. Я не собираюсь просто сидеть и ждать, пока чернозадые скотины придут и за мной - я САМ залезу в эту сраную дыру. Закончим всё на моих условиях. <BR>  - Брукс</i>"

/obj/structure/chernozem/inworld_item/key/oneal
	name = "key (O'Neal)"
	desc = "Just an rusty key, used to open small storages. This one has an owner - \"O'Neal\"."
	stored = /obj/item/chernozem/key/oneal

/obj/item/chernozem/key/oneal
	name = "key (O'Neal)"
	desc = "Just an rusty key, used to open small storages. This one has an owner - \"O'Neal\"."
	icon = 'maps/map_files/Chernozem/real_items.dmi'
	icon_state = "key_yellow"
