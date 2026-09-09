local mType = Game.createMonsterType("Arachmourne")
local monster = {}

monster.description = "a Arachmourne"
monster.experience = 323200
monster.outfit = {
	lookType = 1954,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2617
monster.Bestiary = {
	class = "Undead",
	race = BESTY_RACE_UNDEAD,
	toKill = 10000,
	FirstUnlock = 2000,
	SecondUnlock = 6000,
	CharmsPoints = 250,
	Stars = 5,
	Occurrence = 0,
	Locations = "Elder",
}



monster.health = 330000
monster.maxHealth = 330000
monster.race = "undead"
monster.corpse = 6068
monster.speed = 800
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
	chance = 20,
	{ text = "Kneel. Your end is deserved.", yell = false },
	{ text = "You fight, yet death clings to you like a shadow.", yell = false },
	{ text = "The light abandoned you long ago. Only I remain.", yell = false },
}

monster.loot = {
	{ name = "red crystal coin", chance = 50000, minCount = 1, maxCount = 2 }, -- red crystal coin - wartość 20k
	{ name = "pink crystal coin", chance = 15000, minCount = 1, maxCount = 2 }, -- pink crystal coin - wartość 30k
	{ name = "crystal coin", chance = 12000, minCount = 1, maxCount = 6 },
    { name = "Arachmourne Silk", chance = 2000, minCount = 1, maxCount = 2 },
    { id = 21841, chance = 100, minCount = 1, maxCount = 1 }, -- Bounty task item 
}

monster.attacks = {
    { name = "melee", interval = 2000, chance = 100, minDamage = -1575, maxDamage = -2635 },  -- 2250*0.7=1575, 3765*0.7=2635
    { name = "combat", interval = 2000, chance = 10, type = COMBAT_ENERGYDAMAGE, minDamage = -2819, maxDamage = -3514, radius = 4, effect = CONST_ME_GROUNDSHAKER, target = false },  -- 4028*0.7=2819, 5020*0.7=3514
    { name = "combat", interval = 2000, chance = 25, type = COMBAT_ICEDAMAGE, minDamage = -3116, maxDamage = -4201, range = 7, shootEffect = CONST_ANI_ICE, effect = CONST_ME_GIANTICE, target = false },  -- 4452*0.7=3116, 6001*0.7=4201
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
