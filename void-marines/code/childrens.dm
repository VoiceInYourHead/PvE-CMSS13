/datum/species/human/child //Oh lord here we go.
	name = "Child"
	name_plural = "Children"
	total_health = 150 //Kids are weaker than adults.
//	icon_template = 'void-marines/wh40k/icons/species/r_template_tall.dmi'
	icobase = 'void-marines/icons/children/r_child.dmi'
	deform = 'void-marines/icons/children/r_child.dmi'
	uses_skin_color = FALSE
	special_body_types = FALSE

/mob/living/carbon/human/child
	desc = "Some spooky like black humanoid creature... Looks like a child?"
	var/spookymod = 0

/mob/living/carbon/human/child/proc/spooky()
	if(!spookymod)
		to_chat(src, "You now SPOOKY")
		spookymod = 1
	else
		to_chat(src, "Not so Spooky now, huh?")
		spookymod = 0

/mob/living/carbon/human/child/get_examine_text(mob/user)
	if(spookymod)
		return list(desc)

	. = ..()

/mob/living/carbon/human/child/Initialize(mapload)
	. = ..(mapload, new_species = "Child")
//	pixel_y = 5
	undershirt = null
	underwear = null

/obj/item/clothing/under/child_jumpsuit
	name = "grey children's jumpsuit"
	desc = "Fitted just for kids."
	icon_state = "child_grey"
	worn_state = "child_grey"
	item_state = "child_grey"
	icon = 'void-marines/icons/children/uniform.dmi'
	item_icons = list(
		WEAR_BODY = 'void-marines/icons/children/uniform.dmi'
	)

/obj/item/clothing/shoes/child_shoes
	name = "black children's shoes"
	desc = "Shoes for the little ones."
	icon_state = "child_black"
	item_state = "child_black"
	item_icons = list(
		WEAR_FEET = 'void-marines/icons/children/feet.dmi'
	)
	icon = 'void-marines/icons/children/feet.dmi'

/obj/item/clothing/suit/child_suit
	name = "black suit"
	desc = "Look a little bit too big for kids"
	icon_state = "child_redcoat"
	item_state = "child_redcoat"
	item_icons = list(
		WEAR_JACKET = 'void-marines/icons/children/suit.dmi'
	)
	icon = 'void-marines/icons/children/suit.dmi'
