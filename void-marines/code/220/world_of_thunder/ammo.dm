/// BASIC AP ROUND SKILL ISSUE
#define SHANS_PODRYVA_BOEKOMPLEKTA 5
#define SHANS_VOZGARANIYA_DVIGLA 15
#define SHANS_PROBITIYA 25

/obj/item/ammo_magazine/hardpoint/old_cannon
	name = "AP round"
	desc = "A primary armament cannon round"
	caliber = "1488mm"
	icon = 'icons/obj/structures/mortar.dmi'
	icon_state = "mortar_ammo_flr"
	w_class = SIZE_LARGE // TYAZHELO
	default_ammo = /datum/ammo/rocket/old_cannon
	max_rounds = 1
	gun_type = /obj/item/hardpoint/primary/old_cannon

/obj/item/ammo_magazine/hardpoint/old_cannon/update_icon(round_diff)
	if(!current_rounds)
		icon_state = "mortar_ammo_cas"
	if(iscarbon(loc))
		var/mob/living/carbon/C = loc
		if(C.r_hand == src)
			C.update_inv_r_hand()
		else if(C.l_hand == src)
			C.update_inv_l_hand()
	if(ammo_band_color && ammo_band_icon)
		update_ammo_band()

/datum/ammo/rocket/old_cannon
	name = "cannon round"
	icon_state = "ltb"
	flags_ammo_behavior = AMMO_EXPLOSIVE|AMMO_ROCKET//|AMMO_STRIKES_SURFACE

	accuracy = HIT_ACCURACY_TIER_3
	accurate_range = 32
	max_range = 32
	damage = 1500
	shell_speed = AMMO_SPEED_TIER_3

	var/explosion_falloff = 10
	var/explosion_power = 10

/datum/ammo/rocket/old_cannon/on_hit_obj(obj/O, obj/projectile/P)
	cell_explosion(get_turf(O), explosion_power + 20, explosion_falloff, EXPLOSION_FALLOFF_SHAPE_LINEAR, null, P.weapon_cause_data)
	cell_explosion(get_turf(O), explosion_power, explosion_falloff * 2, EXPLOSION_FALLOFF_SHAPE_LINEAR, null, P.weapon_cause_data)

	if(istype(O, /obj/vehicle/multitile))
		var/obj/vehicle/multitile/M = O
		M.next_move = world.time + rand(0, 2 SECONDS)

		var/turf/centre = M.interior.get_middle_turf()
		if(prob(SHANS_VOZGARANIYA_DVIGLA))
			playsound(M, 'sound/effects/meteorimpact.ogg', 35)
			new /obj/flamer_fire(centre, P.weapon_cause_data, new /datum/reagent/fuel(), 5, , FLAMESHAPE_DEFAULT, , , , FIRE_VARIANT_DEFAULT)
			M.next_move += 10 SECONDS
			smoke.set_up(1, 0, get_turf(M), null, 20 SECONDS)
			smoke.start()

		if(prob(SHANS_PODRYVA_BOEKOMPLEKTA))
			playsound(M, 'sound/effects/meteorimpact.ogg', 35)
			create_shrapnel(centre, 64, , ,/datum/ammo/bullet/shrapnel, P.weapon_cause_data)
			cell_explosion(centre, 200, 10, EXPLOSION_FALLOFF_SHAPE_LINEAR, null, P.weapon_cause_data)

		if(prob(SHANS_PROBITIYA))
			playsound(M, 'sound/effects/meteorimpact.ogg', 35)
			create_shrapnel(centre, 16, , ,/datum/ammo/bullet/shrapnel, P.weapon_cause_data)
			cell_explosion(centre, 75, 10, EXPLOSION_FALLOFF_SHAPE_LINEAR, null, P.weapon_cause_data)

/datum/ammo/rocket/old_cannon/on_hit_mob(mob/M, obj/projectile/P)
	cell_explosion(get_turf(M), explosion_power + 20, explosion_falloff, EXPLOSION_FALLOFF_SHAPE_LINEAR, null, P.weapon_cause_data)
	cell_explosion(get_turf(M), explosion_power, explosion_falloff * 2, EXPLOSION_FALLOFF_SHAPE_LINEAR, null, P.weapon_cause_data)

/datum/ammo/rocket/old_cannon/on_hit_turf(turf/T, obj/projectile/P)
	cell_explosion(get_turf(T), explosion_power + 20, explosion_falloff, EXPLOSION_FALLOFF_SHAPE_LINEAR, null, P.weapon_cause_data)
	cell_explosion(get_turf(T), explosion_power, explosion_falloff * 2, EXPLOSION_FALLOFF_SHAPE_LINEAR, null, P.weapon_cause_data)

/datum/ammo/rocket/old_cannon/do_at_max_range(obj/projectile/P)
	cell_explosion(get_turf(P), explosion_power + 20, explosion_falloff, EXPLOSION_FALLOFF_SHAPE_LINEAR, null, P.weapon_cause_data)
	cell_explosion(get_turf(P), explosion_power, explosion_falloff * 2, EXPLOSION_FALLOFF_SHAPE_LINEAR, null, P.weapon_cause_data)

/// HE ROUND ALLAH BABAH
/obj/item/ammo_magazine/hardpoint/old_cannon/APHE
	name = "APHE round"
	icon_state = "mortar_ammo_he"
	default_ammo = /datum/ammo/rocket/old_cannon/APHE

/datum/ammo/rocket/old_cannon/APHE
	explosion_falloff = 50
	explosion_power = 200
	damage = 3000

/// SMOKE ROUND BRITANIA URA URA FOR DA QUEEN
/obj/item/ammo_magazine/hardpoint/old_cannon/smoke
	name = "smoke round"
	icon_state = "mortar_ammo_fsh"
	default_ammo = /datum/ammo/rocket/old_cannon/smoke

/datum/ammo/rocket/old_cannon/smoke
	explosion_power = 1
	damage = 500

/datum/ammo/rocket/old_cannon/smoke/on_hit_obj(obj/O, obj/projectile/P)
	. = ..() // Da, dymovoy snaryad MOJET podorvat' boekomplekt
	smoke.set_up(7, 0, get_turf(O), null, 20 SECONDS)
	smoke.start()

/datum/ammo/rocket/old_cannon/smoke/on_hit_mob(mob/M, obj/projectile/P)
	. = ..()
	smoke.set_up(7, 0, get_turf(M), null, 20 SECONDS)
	smoke.start()

/datum/ammo/rocket/old_cannon/smoke/on_hit_turf(turf/T, obj/projectile/P)
	. = ..()
	smoke.set_up(7, 0, T, null, 20 SECONDS)
	smoke.start()

/datum/ammo/rocket/old_cannon/smoke/do_at_max_range(obj/projectile/P)
	. = ..()
	smoke.set_up(7, 0, get_turf(P), null, 20 SECONDS)
	smoke.start()

/// PREMIUM SNARAD DLYA PROGREVA GOYEV
/obj/item/ammo_magazine/hardpoint/old_cannon/premium
	name = "premium HE round"
	icon_state = "mortar_ammo_frag"
	default_ammo = /datum/ammo/rocket/old_cannon/premium

/datum/ammo/rocket/old_cannon/premium
	explosion_falloff = 200
	explosion_power = 500
	damage = 6000

/datum/ammo/rocket/old_cannon/premium/on_hit_obj(obj/O, obj/projectile/P)
	. = ..()
//	if(istype(O, /obj/vehicle/multitile))
//		var/obj/vehicle/multitile/M = O
//		M.ex_act(1488)

/// TWIN CANNON APHE MAGAZINE BABAH X2
/obj/item/ammo_magazine/hardpoint/twin_cannon
	name = "APHE rounds magazine"
	desc = "A primary armament cannon round"
	icon_state = "ltbcannon_2"
	caliber = "1488mm"
	w_class = SIZE_LARGE
	default_ammo = /datum/ammo/rocket/old_cannon/APHE
	max_rounds = 2
	gun_type = /obj/item/hardpoint/primary/old_cannon/double

/obj/item/ammo_magazine/hardpoint/twin_cannon/update_icon(round_diff = 0)
	icon_state = "ltbcannon_[current_rounds]"
