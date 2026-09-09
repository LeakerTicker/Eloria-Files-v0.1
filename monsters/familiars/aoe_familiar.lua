local mType = Game.createMonsterType("AoE Familiar")
local monster = {}

monster.description = "an aoe familiar"
monster.experience = 0
monster.outfit = {
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.health = 650000
monster.maxHealth = 650000
monster.race = "undead"
monster.corpse = 0
monster.speed = 154
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 20,
}

monster.strategiesTarget = {
	nearest = 60,
	health = 15,
	damage = 15,
	random = 10,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = false,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = false,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 3,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true,
	familiar = true,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {}

monster.attacks = {
        { name = "melee", interval = 2000, chance = 80, minDamage = 0, maxDamage = -1500 },
        { name = "combat", interval = 2000, chance = 80, type = COMBAT_ICEDAMAGE, minDamage = -1350, maxDamage = -1950, range = 5, radius = 3, effect = CONST_ME_ICEAREA, target = true },
        { name = "combat", interval = 2000, chance = 80, type = COMBAT_FIREDAMAGE, minDamage = -1200, maxDamage = -1650, range = 5, radius = 4, effect = CONST_ME_FIREAREA, target = true },
}

monster.defenses = {
	defense = 55,
	armor = 55,
        { name = "combat", interval = 2000, chance = 100, type = COMBAT_HEALING, minDamage = 1350, maxDamage = 1350, effect = CONST_ME_MAGIC_GREEN, target = false },
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
