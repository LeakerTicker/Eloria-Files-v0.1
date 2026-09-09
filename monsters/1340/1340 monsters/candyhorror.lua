local mType = Game.createMonsterType("Candy Horror")
local monster = {}

monster.description = "a candy horror"
monster.experience = 3000
monster.outfit = {
	lookType = 1739,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2535
monster.Bestiary = {
	class = "Magical",
	race = BESTY_RACE_MAGICAL,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Chocolate Mines.",
}

monster.health = 3100
monster.maxHealth = 3100
monster.race = "blood"
monster.corpse = 48267
monster.speed = 200
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10,
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

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "We will devour you ...", yell = false },
	{ text = "Wait for us, little treat ...", yell = false },
	{ text = "Horrraa!", yell = false },
}

monster.loot = {
	{ name = "gold coin", chance = 100000, maxCount = 100 },
	{ name = "platinum coin", chance = 100000, maxCount = 5 },
	{ name = "Energy Bar", chance = 5000, maxCount = 2 },
	{ name = "Brigadeiro", chance = 5000, },
	{ name = "gummy rotworm", chance = 5000, maxCount = 2 },
    { id = 19206, chance = 100, minCount = 1, maxCount = 1 }, -- Bounty task item
	{ name = "dark chocolate coin", chance = 5000, maxCount = 4 },
	{ name = "Black Shield", chance = 5000 },
	{ name = "Wand of Decay", chance = 5000 },
	{ name = "dreaded cleaver", chance = 5000, maxCount = 1 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -387 },
	{ name = "combat", interval = 3300, chance = 10, type = COMBAT_MANADRAIN, minDamage = 0, maxDamage = -70, range = 7, target = true },
	{ name = "combat", interval = 3700, chance = 17, type = COMBAT_ENERGYDAMAGE, minDamage = -150, maxDamage = -200, length = 5, spread = 0, effect = CONST_ME_PURPLEENERGY, target = false },
	{ name = "combat", interval = 4100, chance = 27, type = COMBAT_DEATHDAMAGE, minDamage = -150, maxDamage = -300, length = 8, spread = 0, effect = CONST_ME_MORTAREA, target = false },
	{ name = "combat", interval = 2700, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -50, maxDamage = -200, range = 5, shootEffect = CONST_ANI_SUDDENDEATH, target = true },
	{ name = "combat", interval = 3100, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -50, maxDamage = -100, range = 1, shootEffect = CONST_ANI_ENERGY, target = true },
}

monster.defenses = {
	defense = 38,
	armor = 74,
	mitigation = 2.31,
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
