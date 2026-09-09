local mType = Game.createMonsterType("Fireborne Wretch")
local monster = {}

monster.description = "a Fireborne Wretch"
monster.experience = 251200
monster.outfit = {
	lookType = 2031,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2644
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



monster.health = 270000
monster.maxHealth = 270000
monster.race = "undead"
monster.corpse = 8136
monster.speed = 760
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
	{ name = "green crystal coin", chance = 7000, minCount = 1, maxCount = 2 }, -- green crystal coin - wartość 10k
	{ name = "crystal coin", chance = 9000, minCount = 1, maxCount = 4 },
    { id = 4844, chance = 100, minCount = 1, maxCount = 1 }, -- Bounty task item 
}

monster.attacks = {
    { name = "melee", interval = 2000, chance = 100, minDamage = -183, maxDamage = -367 },  -- 262*0.7=183, 524*0.7=367
    { name = "combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -3124, maxDamage = -4513, length = 4, spread = 1, effect = CONST_ME_EXPLOSIONAREA, target = false },  -- 4463*0.7=3124, 6447*0.7=4513
    { name = "combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -3338, maxDamage = -3697, length = 4, effect = CONST_ME_GROUNDSHAKER, spread = 1, target = false },  -- 4769*0.7=3338, 5282*0.7=3697
    { name = "combat", interval = 2000, chance = 10, type = COMBAT_ENERGYDAMAGE, minDamage = -3338, maxDamage = -3697, radius = 4, effect = CONST_ME_GROUNDSHAKER, target = false },  -- 4769*0.7=3338, 5282*0.7=3697
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -3338, maxDamage = -3735, radius = 3, effect = CONST_ME_FIREATTACK, target = false },  -- 4769*0.7=3338, 5335*0.7=3735
    { name = "combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -3345, maxDamage = -3708, range = 7, shootEffect = CONST_ANI_CAKE, effect = CONST_ME_FIREATTACK, target = false },  -- 4779*0.7=3345, 5297*0.7=3708
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
