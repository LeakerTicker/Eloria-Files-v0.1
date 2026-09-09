local mType = Game.createMonsterType("The Ancient Withering")
local monster = {}

monster.description = "The Ancient Withering"
monster.experience = 125600
monster.outfit = {
	lookType = 965,
	lookHead = 114,
	lookBody = 93,
	lookLegs = 3,
	lookFeet = 83,
	lookAddons = 2,
	lookMount = 0,
}

monster.health = 135000
monster.maxHealth = 135000
monster.race = "undead"
monster.corpse = 5526
monster.speed = 700
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


monster.loot = {
}

monster.attacks = {
    { name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -2265 }, -- 1510 increased by 50%
    { name = "combat", interval = 3000, chance = 10, type = COMBAT_EARTHDAMAGE, minDamage = -4292, maxDamage = -5230, range = 7, shootEffect = CONST_ANI_EARTH, effect = CONST_ME_DRAWBLOOD, target = true }, -- 3528 to 4420 increased by 50%
    { name = "combat", interval = 4000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -5392, maxDamage = -6140, radius = 4, effect = CONST_ME_MORTAREA, target = false }, -- 4928 to 5160 increased by 50%
    { name = "combat", interval = 2000, chance = 10, type = COMBAT_EARTHDAMAGE, minDamage = -5252, maxDamage = -5621, length = 5, radius = 2, effect = CONST_ME_POISONAREA, target = false }, -- 4435 to 4414 increased by 50%
}

monster.defenses = {
	defense = 55,
	armor = 44,
	mitigation = 1.74,
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 180, maxDamage = 1250, effect = CONST_ME_MAGIC_BLUE, target = false },
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
