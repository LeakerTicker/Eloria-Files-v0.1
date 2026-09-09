local mType = Game.createMonsterType("Fallen Mooh'tah Master Ghar")
local monster = {}

monster.description = "Fallen Mooh'Tah Master Ghar"
monster.experience = 44400
monster.outfit = {
	lookType = 1272,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.health = 32000
monster.maxHealth = 32000
monster.race = "blood"
monster.corpse = 32702
monster.speed = 95
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

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "I will finish you!", yell = false },
	{ text = "You are no match for a master of the Mooh'Tha!", yell = false },
	{ text = "I might be fallen but you will fall before me!", yell = false },
}

monster.loot = {}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 600, maxDamage = -1050, condition = { type = CONDITION_POISON, totalDamage = 4, interval = 4000 } },
	{ name = "combat", interval = 2000, chance = 100, type = COMBAT_LIFEDRAIN, minDamage = -500, maxDamage = -1100, effect = CONST_ME_MAGIC_RED, target = true },
	{ name = "combat", interval = 1000, chance = 40, type = COMBAT_PHYSICALDAMAGE, minDamage = -200, maxDamage = -1250, radius = 2, shootEffect = CONST_ANI_SMALLEARTH, effect = CONST_ME_HITBYPOISON, target = false },
	{ name = "drunk", interval = 1000, chance = 70, range = 7, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYAREA, target = false },
	{ name = "strength", interval = 1000, chance = 60, range = 7, shootEffect = CONST_ANI_LARGEROCK, effect = CONST_ME_ENERGYAREA, target = false },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = 0, maxDamage = -900, length = 5, spread = 3, effect = CONST_ME_ENERGYHIT, target = false },
	{ name = "combat", interval = 1000, chance = 34, type = COMBAT_FIREDAMAGE, minDamage = -600, maxDamage = -800, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true },
	{ name = "speed", interval = 3000, chance = 40, speedChange = -700, effect = CONST_ME_MAGIC_RED, target = true, duration = 20000 },
}

monster.defenses = {
	defense = 90,
	armor = 80,
	--	mitigation = ???,
	{ name = "speed", interval = 10000, chance = 40, speedChange = 510, effect = CONST_ME_MAGIC_GREEN, target = false, duration = 20000 },
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
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
