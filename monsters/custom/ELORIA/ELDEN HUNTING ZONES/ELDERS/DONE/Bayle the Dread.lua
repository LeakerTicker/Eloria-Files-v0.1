local mType = Game.createMonsterType("Bayle the Dread")
local monster = {}

monster.description = "a Bayle the Dread"
monster.experience = 261200
monster.outfit = {
	lookType = 1692,
	lookHead = 1,
	lookBody = 1,
	lookLegs = 1,
	lookFeet = 1,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2602
monster.Bestiary = {
	class = "Undead",
	race = BESTY_RACE_UNDEAD,
	toKill = 7000,
	FirstUnlock = 1000,
	SecondUnlock = 3500,
	CharmsPoints = 150,
	Stars = 5,
	Occurrence = 0,
	Locations = "Elder",
}


monster.health = 270000
monster.maxHealth = 270000
monster.race = "undead"
monster.corpse = 3990
monster.speed = 990
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
	chance = 10,
	{ text = "Behold, the veil of reality is torn, revealing the cosmic absurdity.", yell = false },
	{ text = "Echoes of forgotten prophecies haunt the corridors of fate.", yell = false },
	{ text = "Spectral tendrils of uncertainty grasp at the edges of your perception.", yell = false },
}

monster.loot = {
	{ name = "red crystal coin", chance = 50000, minCount = 1, maxCount = 2 },
	{ name = "pink crystal coin", chance = 15000, minCount = 1, maxCount = 2 },
	{ name = "crystal coin", chance = 15000, minCount = 1, maxCount = 4 },
	{ id = 19065, chance = 100, minCount = 1, maxCount = 1 }, -- Bounty task item
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -840, maxDamage = -1757 },  -- 1200*0.7=840, 2510*0.7=1757
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_EARTHDAMAGE, minDamage = -2469, maxDamage = -2884, range = 7, shootEffect = CONST_ANI_EARTH, effect = CONST_ME_DRAWBLOOD, target = true },  -- 3528*0.7=2469, 4120*0.7=2884
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -2819, maxDamage = -3192, radius = 4, effect = CONST_ME_MORTAREA, target = false },  -- 4028*0.7=2819, 4560*0.7=3192
	{ name = "combat", interval = 2000, chance = 30, type = COMBAT_EARTHDAMAGE, minDamage = -2824, maxDamage = -2879, length = 5, radius = 2, effect = CONST_ME_POISONAREA, target = false },  -- 4035*0.7=2824, 4114*0.7=2879
}


monster.defenses = {
	defense = 66,
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
