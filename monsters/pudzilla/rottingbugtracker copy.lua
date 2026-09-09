local mType = Game.createMonsterType("Rootthing Bug Tracker")
local monster = {}

monster.description = "a rootthing bug tracker"
monster.experience = 9650
monster.outfit = {
	lookType = 1763,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2538
monster.Bestiary = {
	class = "Plant",
	race = BESTY_RACE_PLANT,
	toKill = 2500,
	FirstUnlock = 200,
	SecondUnlock = 2500,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 1,
	Locations = "Podzilla Stalk.",
}

monster.health = 11500
monster.maxHealth = 11500
monster.race = "undead"
monster.corpse = 49148
monster.speed = 195
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 0,
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
	canPushCreatures = false,
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
	{ text = "Ktsktskts!", yell = false },
	{ text = "BRRRRN!!!", yell = false },
	{ text = "FRRRRR!!!", yell = false },
}

monster.loot = {
    { name = "platinum coin",    chance =  7063, maxCount = 44 },

    { id = 3038,  chance =  1730 },  -- Green Gem
    { id = 48510, chance =  2730 },  -- Demon Root
    { id = 48511, chance =  2230 },  -- Resin Parasite
    { id = 3032,  chance =  2730 },  -- Small Emerald
    { id = 3575,  chance =  2730 },  -- Wood Cape
    { id = 8084,  chance =  2230 },  -- Springsprout Rod
    { id = 3364,  chance =  1250 },  -- Golden Legs
    { id = 8027,  chance =   730 },  -- Composite Hornbow

    { id = 45652, chance =   250 },  -- Preserved Pink Seed
    { id = 45653, chance =   230 },  -- Preserved Red Seed
    { id = 45657, chance =   230 },  -- Preserved Yellow Seed
}

monster.attacks = {
		{ name = "melee", interval = 2000, chance = 100, minDamage = -310, maxDamage = -1093 },
		{ name = "combat", interval = 4000, chance = 25, type = COMBAT_EARTHDAMAGE, minDamage = -490, maxDamage = -7025, length = 10, spread = 3, effect = CONST_ME_CARNIPHILA, target = false },
		{ name = "combat", interval = 2000, chance = 24, type = COMBAT_HOLYDAMAGE, minDamage = -333, maxDamage = -588, range = 7, radius = 3, shootEffect = CONST_ANI_SMALLHOLY, effect = CONST_ME_YELLOW_ENERGY_SPARK, target = true },
		{ name = "combat", interval = 5000, chance = 25, type = COMBAT_EARTHDAMAGE, effect = CONST_ME_EARTHHIT, minDamage = -425, maxDamage = -875, range = 4, target = false },
		{ name = "combat", interval = 2700, chance = 35, type = COMBAT_EARTHDAMAGE, shootEffect = CONST_ANI_POISON, effect = CONST_ANI_EARTH, minDamage = -290, maxDamage = -820, range = 4, target = true },
}

monster.defenses = {
	defense = 92,
	armor = 92,
	mitigation = 2.51,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 15 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 25 },
	{ type = COMBAT_EARTHDAMAGE, percent = 100 },
	{ type = COMBAT_FIREDAMAGE, percent = -15 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -5 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = -5 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = true },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
