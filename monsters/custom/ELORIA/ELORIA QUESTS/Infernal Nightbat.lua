local mType = Game.createMonsterType("Infernal Nightbat")
local monster = {}

monster.description = "a Infernal Nightbat"
monster.experience = 50000
monster.outfit = {
	lookType = 4026,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}


monster.health = 350000
monster.maxHealth = 350000
monster.race = "undead"
monster.corpse = 8915
monster.speed = 670
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10,
}

monster.strategiesTarget = {
	nearest = 10,
	damage = 90,
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
	canPushCreatures = true,
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = true,
	canWalkOnPoison = true,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.voices = {}

monster.loot = {}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -600, maxDamage = -4450 },
	{ name = "combat", interval = 2000, chance = 45, type = COMBAT_PHYSICALDAMAGE, minDamage = -1235, maxDamage = -2200, range = 7, shootEffect = CONST_ANI_LARGEROCK, target = false },
	{ name = "combat", interval = 2000, chance = 55, type = COMBAT_FIREDAMAGE, minDamage = -3270, maxDamage = -7180, range = 7, shootEffect = CONST_ANI_POISON, target = false },
	{ name = "combat", interval = 2500, chance = 30, type = COMBAT_FIREDAMAGE, minDamage = -1700, maxDamage = -2750, length = 8, spread = 3, effect = CONST_ME_MAGIC_RED, target = false },
}

monster.defenses = {
	defense = 45,
	armor = 50,
	mitigation = 1.74,
	{ name = "speed", interval = 2000, chance = 35, speedChange = 600, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000 },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 30 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = 70 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 0 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = 0 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
