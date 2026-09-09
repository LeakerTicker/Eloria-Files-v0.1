local mType = Game.createMonsterType("Ashen Lord Vytherion")
local monster = {}

monster.description = "a Ashen Lord Vytherion"
monster.experience = 261200
monster.outfit = {
	lookType = 1703,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2601

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
monster.race = "blood"
monster.corpse = 6068
monster.speed = 900
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



monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "Behold, the veil of reality is torn, revealing the cosmic absurdity.", yell = false },
	{ text = "Echoes of forgotten prophecies haunt the corridors of fate.", yell = false },
	{ text = "Spectral tendrils of uncertainty grasp at the edges of your perception.", yell = false },
}

monster.loot = {
	{ name = "red crystal coin", chance = 50000, minCount = 1, maxCount = 2 }, -- red crystal coin - wartość 20k
	{ name = "pink crystal coin", chance = 15000, minCount = 1, maxCount = 2 }, -- pink crystal coin - wartość 30k
	{ name = "crystal coin", chance = 12000, minCount = 1, maxCount = 2 },
	{ name = "crystal coin", chance = 9000, minCount = 1, maxCount = 2 },
	{ name = "Ashen dust", chance = 1300, minCount = 1, maxCount = 2 },
    { id = 22660, chance = 100, minCount = 1, maxCount = 1 }, -- Bounty task item 
}




monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -777, maxDamage = -1757 }, -- 1110*0.7=777, 2510*0.7=1757
	{ name = "combat", interval = 2000, chance = 30, type = COMBAT_ICEDAMAGE, minDamage = -2469, maxDamage = -2884, range = 4, shootEffect = CONST_ANI_ICE, effect = CONST_ME_ICEATTACK, target = true }, -- 3528*0.7=2469, 4120*0.7=2884
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_DEATHDAMAGE, minDamage = -2450, maxDamage = -3052, radius = 4, effect = CONST_ME_MORTAREA, target = true }, -- 3500*0.7=2450, 4360*0.7=3052
	{ name = "sulphur spouter wave", interval = 2000, chance = 25, minDamage = -3450, maxDamage = -3234 }, -- 4928*0.7=3450, 4620*0.7=3234
}




monster.defenses = {
	defense = 76,
	armor = 76,
	mitigation = 1.96,
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
