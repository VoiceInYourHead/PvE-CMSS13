/obj/effect/vehicle_spawner/tank/fixed/old/spawn_vehicle()
	var/obj/vehicle/multitile/tank/old/TANK = new (loc)

	load_misc(TANK)
	load_hardpoints(TANK)
	handle_direction(TANK)
	TANK.update_icon()

///SHERMAN
/obj/effect/vehicle_spawner/tank/fixed/old/sherman/load_hardpoints(obj/vehicle/multitile/tank/V)
	V.name = "M4 Sherman"
	V.desc = "The M4 Sherman, officially medium tank, M4, was the most widely used medium tank by the United States and Western Allies in World War II. The M4 Sherman proved to be reliable, relatively cheap to produce, and available in great numbers. It was also the basis of several other armored fighting vehicles including self-propelled artillery, tank destroyers, and armored recovery vehicles. Tens of thousands were distributed through the Lend-Lease program to the British Commonwealth, Soviet Union, and other Allied Nations. The tank was named by the British after the American Civil War General William Tecumseh Sherman."
	V.icon_state = "tank_base_britain"

	var/obj/item/hardpoint/turret = new /obj/item/hardpoint/holder/tank_turret/old
	turret.disp_icon_state = "tank_turret_britain"
	turret.icon_state = "tank_turret_britain_0"
	V.add_hardpoint(turret)

	V.add_hardpoint(new /obj/item/hardpoint/support/artillery_module)
	V.add_hardpoint(new /obj/item/hardpoint/armor/ballistic)
	V.add_hardpoint(new /obj/item/hardpoint/locomotion/treads/old)
	for(var/obj/item/hardpoint/holder/tank_turret/TT in V.hardpoints)
		TT.add_hardpoint(new /obj/item/hardpoint/primary/old_cannon/sherman)
		TT.add_hardpoint(new /obj/item/hardpoint/secondary/m56cupola)
		break

///ARCHER SPG
/obj/effect/vehicle_spawner/tank/fixed/old/archer/load_hardpoints(obj/vehicle/multitile/tank/V)
	V.name = "Archer Mk I Valentine"
	V.desc = "The Self Propelled 17pdr, Valentine, Mk I, Archer was a British tank destroyer of the Second World War based on the Valentine infantry tank chassis fitted with an Ordnance QF 17 pounder gun. Designed and manufactured by Vickers-Armstrongs, 655 were produced between March 1943 and May 1945. It was used in north-west Europe and Italy during the war; post-war, it served with the Egyptian Army. This vehicle was unusual in that its gun faced the rear of the chassis instead of the front."
	V.icon_state = "tank_base_britain"

	var/obj/item/hardpoint/turret = new /obj/item/hardpoint/holder/tank_turret/old/no_turn // У НЕЁ НЕТ ПОВОРОТА ЭТО ВАЖНО
	turret.disp_icon_state = "tank_turret_britain"
	turret.icon_state = "tank_turret_britain_0"
	V.add_hardpoint(turret)

	V.add_hardpoint(new /obj/item/hardpoint/support/artillery_module/large)
	V.add_hardpoint(new /obj/item/hardpoint/armor/ballistic)
	V.add_hardpoint(new /obj/item/hardpoint/locomotion/treads/robust/old)
	for(var/obj/item/hardpoint/holder/tank_turret/TT in V.hardpoints)
		TT.add_hardpoint(new /obj/item/hardpoint/primary/old_cannon/long)
		TT.add_hardpoint(new /obj/item/hardpoint/secondary/m56cupola)
		//dylo na zhope
		TT.rotate(90, TRUE)
		TT.rotate(90, TRUE)
		TT.update_icon()
		break

///AUTOCANNON BRI'ISH ANTI AIR
/obj/effect/vehicle_spawner/tank/fixed/old/britain_ystervark/load_hardpoints(obj/vehicle/multitile/tank/V)
	V.name = "Ystervark"
	V.desc = "The Ystervark is a self-propelled anti-aircraft (SPAA) vehicle operated by the South African Defence Force (SADF). Taking its name from the South African cape porcupine, an animal with a powerful physique protected by an astonishing array of spines to defend itself against predatory animals, a vehicle named after this species should represent those attributes. The Ystervark SPAA is a solid and robust vehicle designed to withstand the harsh South African environment. The Ystervark SPAA was developed in the 1980s in response to a mobile and mine-protected anti-air platform request. It is based on another project, Project Sireb, which produced three mine-resistant vehicles as potential replacements for the Buffel armoured personal carrier (APC). One of the three prototypes, nicknamed the 'Bulldog,' would serve as the foundation for the Ystervark SPAA by removing the passenger tub and replacing it with the weapons platform."

	V.icon = 'icons/obj/vehicles/arc.dmi'
	V.icon_state = "arc_base"
	V.vehicle_flags = VEHICLE_CLASS_LIGHT

	V.add_hardpoint(new /obj/item/hardpoint/locomotion/treads/old)
	V.add_hardpoint(new /obj/item/hardpoint/holder/tank_turret/old)
	for(var/obj/item/hardpoint/holder/tank_turret/TT in V.hardpoints)
		TT.add_hardpoint(new /obj/item/hardpoint/primary/autocannon)
		break

///T-34
/obj/effect/vehicle_spawner/tank/fixed/old/t34/load_hardpoints(obj/vehicle/multitile/tank/V)
	V.name = "T-34 Tank"
	V.desc = "The T-34 is a Soviet medium tank from World War II. When introduced, its 76.2 mm tank gun was more powerful than many of its contemporaries, and its 60-degree sloped armour provided good protection against anti-tank weapons. The T-34 had a profound effect on the conflict on the Eastern Front, and had a long-lasting impact on tank design. The tank was praised by multiple German generals when encountered during Operation Barbarossa, although its armour and armament were surpassed later in the war. Its main strength was its cost and production time, meaning that German panzer forces would often fight against Soviet tank forces several times their own size. The T-34 is also a critical part of the mechanized divisions that form the backbone of the Deep Battle Strategy."
	V.icon_state = "tank_base_upp"

	V.add_hardpoint(new /obj/item/hardpoint/support/artillery_module)
	V.add_hardpoint(new /obj/item/hardpoint/armor/ballistic)
	V.add_hardpoint(new /obj/item/hardpoint/locomotion/treads/old)

	var/obj/item/hardpoint/turret = new /obj/item/hardpoint/holder/tank_turret/old
	turret.disp_icon_state = "tank_turret_upp"
	turret.icon_state = "tank_turret_upp_0"
	V.add_hardpoint(turret)

	for(var/obj/item/hardpoint/holder/tank_turret/TT in V.hardpoints)
		TT.add_hardpoint(new /obj/item/hardpoint/primary/old_cannon/t34)
		TT.add_hardpoint(new /obj/item/hardpoint/secondary/m56cupola)
		break

///T-68, like T-34 but paired gun
/obj/effect/vehicle_spawner/tank/fixed/old/t34_paired/load_hardpoints(obj/vehicle/multitile/tank/V)
	V.name = "T-68 Apocalypse"
	V.desc = "чё смотришь, у меня нет времени выдумывать вики статью про танк из ред алёрта"
	V.icon_state = "tank_base_upp"

	V.add_hardpoint(new /obj/item/hardpoint/support/artillery_module)
	V.add_hardpoint(new /obj/item/hardpoint/armor/ballistic)
	V.add_hardpoint(new /obj/item/hardpoint/locomotion/treads/robust/old)

	var/obj/item/hardpoint/turret = new /obj/item/hardpoint/holder/tank_turret/old
	turret.disp_icon_state = "tank_turret_upp"
	turret.icon_state = "tank_turret_upp_0"
	V.add_hardpoint(turret)

	for(var/obj/item/hardpoint/holder/tank_turret/TT in V.hardpoints)
		TT.add_hardpoint(new /obj/item/hardpoint/primary/old_cannon/double)
		TT.add_hardpoint(new /obj/item/hardpoint/secondary/m56cupola)
		break

///Zenitka UPP
/obj/effect/vehicle_spawner/tank/fixed/old/zsu_20_6/load_hardpoints(obj/vehicle/multitile/tank/V)
	V.name = "ZSU-20-6 Annihilation Tank"
	V.desc = "Jin qian kan qi xiang shang xie zhou qin xiang lian na san shi er sui na zhuang gao dang chao fu ma lang ta qi jun wang a man huang shang na hui hun nan er zhao dong chuang."
	V.icon_state = "tank_base_upp"

	V.add_hardpoint(new /obj/item/hardpoint/locomotion/treads/old)

	var/obj/item/hardpoint/turret = new /obj/item/hardpoint/holder/tank_turret/old
	turret.disp_icon_state = "tank_turret_upp"
	turret.icon_state = "tank_turret_upp_0"
	V.add_hardpoint(turret)

	for(var/obj/item/hardpoint/holder/tank_turret/TT in V.hardpoints)
		TT.add_hardpoint(new /obj/item/hardpoint/primary/minigun)
		break

///PREMIUM ARMATA
/obj/effect/vehicle_spawner/tank/fixed/armata/load_hardpoints(obj/vehicle/multitile/tank/V)
	V.name = "Танк Т-14 \"Армата\""
	V.desc = "Принятый на вооружение в 2022 году танк Т-14 Армата впоследствии неоднократно совершенствовался по направлениям защиты и огневой мощи. Премиумный Т-14 Армата - это СВО версия 2024 года, оснащенная всеми возможными модификациями, а также модификацией с тепловизором высокого разрешения для наводчика и командира. Бронирование танка также было усилено защитой 'Стелс технология', которая обеспечила повышение защиты от  боеприпасов и повысила выживаемость экипажа. Вооружен танк мощным 125-мм орудием 2А82М с двухплоскостной стабилизацией и спаренным пулеметом калибра 7,62 мм, а также оснащен 12,7-мм зенитным пулеметом и дымовым гранатометом калибра 81-мм с боезапасом 8 гранат - на четыре залпа по 2 гранаты. Двигатель мощностью 780 л.с. позволяет танку развивать максимальную скорость до 60 км/ч. \n Купите всего за 4199 ₽ - переведите на сбербанк по номеру телефона +7 904 474 9493 (Для танкистов из Украины транзакция недоступна)"

	V.add_hardpoint(new /obj/item/hardpoint/support/artillery_module/large)
	V.add_hardpoint(new /obj/item/hardpoint/armor/paladin)
	V.add_hardpoint(new /obj/item/hardpoint/locomotion/treads/robust)
	V.add_hardpoint(new /obj/item/hardpoint/holder/tank_turret/old)
	for(var/obj/item/hardpoint/holder/tank_turret/TT in V.hardpoints)
		TT.add_hardpoint(new /obj/item/hardpoint/primary/old_cannon)
		TT.add_hardpoint(new /obj/item/hardpoint/secondary/m56cupola)
		break
