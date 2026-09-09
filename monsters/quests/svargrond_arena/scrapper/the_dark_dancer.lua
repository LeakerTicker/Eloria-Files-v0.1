local mType = Game.createMonsterType("The Dark Dancer")
local monster = {}

monster.description = "The Dark Dancer"
monster.experience = 5350
monster.outfit = {
	lookType = 1268,
	lookHead = 0,
	lookBody = 95,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.health = 7000
monster.maxHealth = 7000
monster.race = "blood"
monster.corpse = 32610
monster.speed = 85
monster.manaCost = 0

monster.changeTarget = {
	interval = 0,
	chance = 0,
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 95,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.summon = {
	maxSummons = 2,
	summons = {
		{ name = "Elder Mummy", chance = 100, interval = 1000, count = 8 },
	},
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "I hope you like my voice!", yell = false },
	{ text = "Let us dance the dance of death.", yell = false },
}

monster.loot = {}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -45, condition = { type = CONDITION_POISON, totalDamage = 220, interval = 4000 } },
	{ name = "combat", interval = 3000, chance = 70, type = COMBAT_PHYSICALDAMAGE, minDamage = -60, maxDamage = -95, range = 5, radius = 1, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true },
	{ name = "combat", interval = 6000, chance = 90, type = COMBAT_PHYSICALDAMAGE, minDamage = -60, maxDamage = -95, range = 5, radius = 1, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true },
	{ name = "speed", interval = 3500, chance = 35, speedChange = -400, range = 5, radius = 1, effect = CONST_ME_MAGIC_RED, target = true, duration = 10000 },
	{ name = "combat", interval = 4000, chance = 30, type = COMBAT_MANADRAIN, minDamage = -2, maxDamage = -110, range = 5, radius = 1, effect = CONST_ME_MAGIC_RED, target = true },
}

monster.defenses = {
	defense = 12,
	armor = 11,
	--	mitigation = ???,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = 0 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 0 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = 0 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = true },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
