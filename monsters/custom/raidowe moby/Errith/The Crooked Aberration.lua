local mType = Game.createMonsterType("Arrow-Riddled")
local monster = {}

monster.description = "a Arrow-Riddled"
monster.experience = 355000
monster.outfit = {
	lookType = 1425,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.health = 300000
monster.maxHealth = 300000
monster.race = "blood"
monster.corpse = 5972
monster.speed = 690
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10,
}

monster.strategiesTarget = {
	nearest = 100,
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
	staticAttackChance = 90,
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
	{ name = "melee", interval = 2000, chance = 100, minDamage = -1200, maxDamage = -5000, effect = CONST_ME_DRAWBLOOD },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_DEATHDAMAGE, minDamage = -3500, maxDamage = -7000, radius = 3, effect = CONST_ME_MORTAREA, target = false },
	{ name = "combat", interval = 2000, chance = 50, type = COMBAT_ICEDAMAGE, minDamage = -2150, maxDamage = -4400, length = 4, spread = 0, effect = CONST_ME_ICEATTACK, target = false },
	{ name = "singlecloudchain", interval = 2000, chance = 30, minDamage = -2800, maxDamage = -4450, range = 4, effect = CONST_ME_ENERGYHIT, target = true },
}

monster.defenses = {
	defense = 86,
	armor = 83,
	mitigation = 2.40,
	{ name = "combat", interval = 4000, chance = 40, type = COMBAT_HEALING, minDamage = 200, maxDamage = 5050, effect = CONST_ME_MAGIC_BLUE, target = false },
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
