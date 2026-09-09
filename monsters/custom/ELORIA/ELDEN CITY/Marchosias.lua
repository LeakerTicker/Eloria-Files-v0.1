local mType = Game.createMonsterType("Marchosias")
local monster = {}

monster.description = "a Marchosias"
monster.experience = 125200
monster.outfit = {
	lookType = 2021,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2619
monster.Bestiary = {
	class = "Undead",
	race = BESTY_RACE_UNDEAD,
	toKill = 6000,
	FirstUnlock = 500,
	SecondUnlock = 2500,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Elden City Teleports.",
}

monster.health = 139000
monster.maxHealth = 139000
monster.race = "undead"
monster.corpse = 6068
monster.speed = 650
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
	{ text = "Krrrk!", yell = false },
	{ text = "MUHAHAHAHA!", yell = true },
}

monster.loot = {
	{ name = "green crystal coin", chance = 100000, minCount = 1, maxCount = 2 }, -- green crystal coin - wartość 10k
	{ name = "crystal coin", chance = 10000, minCount = 1, maxCount = 4 },
    { id = 51427, chance = 100, minCount = 1, maxCount = 1 }, -- Bounty task item 
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1260 },  -- 1800*0.7=1260
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -1015, maxDamage = -1610, range = 4, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true },  -- 1450*0.7=1015, 2300*0.7=1610
	{ name = "extended fire chain", interval = 2000, chance = 15, minDamage = -1190, maxDamage = -945, range = 7 },  -- 1700*0.7=1190, 1350*0.7=945
	{ name = "combat", interval = 3000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -945, maxDamage = -1610, radius = 3, effect = CONST_ME_FIREAREA, target = false },  -- 1350*0.7=945, 2300*0.7=1610
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = 0, maxDamage = -700, length = 8, spread = 9, effect = CONST_ME_POFF, target = false },  -- 1000*0.7=700
	{ name = "combat", interval = 2000, chance = 100, type = COMBAT_DEATHDAMAGE, minDamage = 0, maxDamage = -700, radius = 3, effect = CONST_ME_MORTAREA, target = false },  -- 1000*0.7=700
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -945, maxDamage = -1610, length = 5, spread = 3, effect = CONST_ME_EXPLOSIONHIT, target = false },  -- 1350*0.7=945, 2300*0.7=1610
	{ name = "combat", interval = 3000, chance = 24, type = COMBAT_DEATHDAMAGE, minDamage = -945, maxDamage = -1610, range = 4, radius = 3, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true },  -- 1350*0.7=945, 2300*0.7=1610
}


monster.defenses = {
	defense = 55,
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
