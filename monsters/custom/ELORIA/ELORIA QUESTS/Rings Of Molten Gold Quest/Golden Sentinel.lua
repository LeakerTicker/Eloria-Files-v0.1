local mType = Game.createMonsterType("Golden Sentinel")
local monster = {}

monster.description = "a Golden Sentinel"
monster.experience = 11600
monster.outfit = {
	lookType = 1457,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 2,
	lookMount = 0,
}

monster.health = 150000
monster.maxHealth = 150000
monster.race = "undead"
monster.corpse = 8909
monster.speed = 650
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 20,
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
	canPushCreatures = true,
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true,
}

monster.light = {
	level = 0,
	color = 0,
}



monster.voices = {
	interval = 5000,
	chance = 30,
	{ text = "Shiny coins, hiding in the dark…", yell = false },
	{ text = "Hiss… shine blinds you, yet I strike without mercy.", yell = false },
}

monster.loot = {
	{ name = "green crystal coin", chance = 100000 }, -- green crystal coin - wartość 10k
	{ name = "green crystal coin", chance = 7000 }, -- green crystal coin - wartość 10k
	{ name = "red crystal coin", chance = 20000 }, -- red crystal coin - wartość 20k
}




monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1510 },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -2500, maxDamage = -4400, length = 8, spread = 3, effect = CONST_ME_EXPLOSIONAREA, target = false },
	{ name = "fury skill reducer", interval = 2000, chance = 5, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_HOLYDAMAGE, minDamage = -2525, maxDamage = -3950, range = 7, radius = 4, effect = CONST_ME_HOLYAREA, target = true },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_HOLYDAMAGE, minDamage = -2520, maxDamage = -3900, range = 7, effect = CONST_ME_HOLYDAMAGE, target = true },
	{ name = "combat", interval = 3000, chance = 30, type = COMBAT_HOLYDAMAGE, minDamage = -1736, maxDamage = -5784, range = 5, radius = 5, shootEffect = CONST_ANI_HOLY, effect = CONST_ME_HOLYAREA, target = true },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_HOLYDAMAGE, minDamage = -1520, maxDamage = -4300, length = 8, spread = 0, effect = CONST_ME_HOLYAREA, target = false },
}

monster.defenses = {
	defense = 55,
	armor = 44,
	mitigation = 1.74,
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 180, maxDamage = 250, effect = CONST_ME_MAGIC_BLUE, target = false },
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
	{ type = COMBAT_ICEDAMAGE, percent = 0 },
	{ type = COMBAT_HOLYDAMAGE, percent = 50 },
	{ type = COMBAT_DEATHDAMAGE, percent = 0 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
