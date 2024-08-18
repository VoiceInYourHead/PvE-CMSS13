/datum/skills/combat_medic // Мастер в химикатах и поднятии морпехов на ноги
	name = "Combat Medic"
	skills = list(
		SKILL_MEDICAL = SKILL_MEDICAL_DOCTOR,
		SKILL_SURGERY = SKILL_SURGERY_NOVICE,
		SKILL_JTAC = SKILL_JTAC_BEGINNER,
	)

/datum/skills/combat_medic/surgeon // Помощник первого, ставит на ноги после первичной обработки
	name = "Combat Surgeon"
	skills = list(
		SKILL_MEDICAL = SKILL_SURGERY_NOVICE,
		SKILL_SURGERY = SKILL_SURGERY_EXPERT,
		SKILL_JTAC = SKILL_JTAC_BEGINNER,
	)
