local mType = Game.createMonsterType("Elder Voidseer")
local monster = {}

monster.description = "Elder Voidseer"
monster.experience = 125600
monster.outfit = {
	lookType = 845,
	lookHead = 30,
	lookBody = 20,
	lookLegs = 20,
	lookFeet = 20,
	lookAddons = 2,
	lookMount = 0,
}

monster.health = 135000
monster.maxHealth = 135000
monster.race = "undead"
monster.corpse = 111
monster.speed = 750
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

	{ name = "melee", interval = 2000, chance = 100, minDamage = -250, maxDamage = -1333 }, 
	{ name = "combat", interval = 2000, chance = 14, type = COMBAT_DEATHDAMAGE, minDamage = -3500, maxDamage = -6160, length = 4, spread = 1, effect = CONST_ME_EXPLOSIONAREA, target = false },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -3028, maxDamage = -5020, length = 4, effect = CONST_ME_GROUNDSHAKER, spread = 1, target = false },
	{ name = "combat", interval = 2000, chance = 12, type = COMBAT_ENERGYDAMAGE, minDamage = -3028, maxDamage = -5020, radius = 4, effect = CONST_ME_GROUNDSHAKER, target = false },
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
