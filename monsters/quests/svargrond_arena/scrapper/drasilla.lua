local mType = Game.createMonsterType("Drasilla")
local monster = {}

monster.description = "Drasilla"
monster.experience = 18700
monster.outfit = {
	lookType = 947,
	lookHead = 5,
	lookBody = 5,
	lookLegs = 8,
	lookFeet = 8,
	lookAddons = 0,
	lookMount = 0,
}

monster.health = 20000
monster.maxHealth = 20000
monster.race = "blood"
monster.corpse = 25186
monster.speed = 160
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
	runHealth = 100,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = true,
	canWalkOnPoison = false,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "FCHHHHHHHH", yell = true },
	{ text = "GROOOOAAAAAAAAR", yell = true },
	{ text = "DIRTY LITTLE HUMANS", yell = true },
	{ text = "YOU CAN'T KEEP ME HERE FOREVER", yell = true },
}

monster.loot = {}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -500, condition = { type = CONDITION_FREEZING, totalDamage = 400, interval = 4000 } },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = 0, maxDamage = -250, range = 7, target = false },
	{ name = "combat", interval = 1000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -550, maxDamage = -780, length = 8, spread = 0, effect = CONST_ME_ICETORNADO, target = false },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -100, maxDamage = -1300, length = 8, spread = 0, effect = CONST_ME_PURPLEENERGY, target = false },
	{ name = "speed", interval = 2000, chance = 15, speedChange = -100, radius = 1, effect = CONST_ME_MAGIC_RED, target = true, duration = 30000 },
}

monster.defenses = {
	defense = 55,
	armor = 72,
	mitigation = 2.11,
	{ name = "combat", interval = 2000, chance = 1, type = COMBAT_HEALING, minDamage = 50, maxDamage = 100, effect = CONST_ME_MAGIC_BLUE, target = false },
	{ name = "speed", interval = 2000, chance = 15, speedChange = 320, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000 },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = 0 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -1 },
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
