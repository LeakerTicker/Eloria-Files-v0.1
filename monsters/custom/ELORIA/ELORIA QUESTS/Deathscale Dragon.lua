local mType = Game.createMonsterType("Toxic Ooze")
local monster = {}

monster.description = "Toxic Ooze"
monster.experience = 66666
monster.outfit = {
	lookType = 1585,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}


monster.health = 350000
monster.maxHealth = 350000
monster.race = "blood"
monster.corpse = 6068
monster.speed = 666
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 5,
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
	rewardBoss = true,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 2000,
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

monster.voices = {}

monster.loot = {}

monster.attacks = {
    { name = "melee", interval = 2000, chance = 100, minDamage = -440, maxDamage = -4510 },
    { name = "combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -1500, maxDamage = -2400, length = 8, spread = 3, effect = CONST_ME_EXPLOSIONAREA, target = false },
    { name = "combat", interval = 2000, chance = 5, type = COMBAT_DEATHDAMAGE, minDamage = -1520, maxDamage = -3300, length = 8, spread = 3, effect = CONST_ME_EXPLOSIONAREA, target = false },
    { name = "combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -1520, maxDamage = -3300, radius = 4, effect = CONST_ME_EXPLOSIONAREA, target = false },
    { name = "combat", interval = 2000, chance = 10, type = COMBAT_EARTHDAMAGE, minDamage = -1966, maxDamage = -2320, length = 8, spread = 2, effect = CONST_ME_CARNIPHILA, target = false },
    { name = "combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -525, maxDamage = -1950, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_SMALLCLOUDS, target = false },
    { name = "speed", interval = 2000, chance = 25, speedChange = -999, range = 7, radius = 4, shootEffect = CONST_ANI_POISON, effect = CONST_ME_GREEN_RINGS, target = true, duration = 25000 },
}

monster.defenses = {
	defense = 45,
	armor = 27,
	--	mitigation = ???,
	{ name = "combat", interval = 2000, chance = 32, type = COMBAT_HEALING, minDamage = 250, maxDamage = 600, effect = CONST_ME_MAGIC_BLUE, target = false },
	{ name = "combat", interval = 2000, chance = 12, type = COMBAT_HEALING, minDamage = 150, maxDamage = 700, radius = 5, effect = CONST_ME_MAGIC_GREEN, target = false },
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
	{ type = COMBAT_DEATHDAMAGE, percent = 100 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
