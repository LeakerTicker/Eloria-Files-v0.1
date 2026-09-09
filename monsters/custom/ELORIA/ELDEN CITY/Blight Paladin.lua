local mType = Game.createMonsterType("Blight Paladin")
local monster = {}

monster.description = "a Blight Paladin"
monster.experience = 181200
monster.outfit = {
	lookType = 1987,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2625
monster.Bestiary = {
	class = "Undead",
	race = BESTY_RACE_UNDEAD,
	toKill = 6000,
	FirstUnlock = 1000,
	SecondUnlock = 3000,
	CharmsPoints = 150,
	Stars = 5,
	Occurrence = 0,
	Locations = "Elden City teleports.",
}


monster.health = 200000
monster.maxHealth = 200000
monster.race = "undead"
monster.corpse = 6068
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



monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "You cannot kill what death itself serves.", yell = false },
	{ text = "The void! Remembers your name...", yell = false },
	{ text = "From ash... I shall rise again!", yell = false },
}

monster.loot = {
	{ name = "green crystal coin", chance = 50000, minCount = 1, maxCount = 2 }, -- green crystal coin - wartość 10k
	{ name = "green crystal coin", chance = 5000, minCount = 1, maxCount = 2 }, -- green crystal coin - wartość 10k
	{ name = "crystal coin", chance = 15000, minCount = 1, maxCount = 4 },
	{ id = 31204, chance = 1300, minCount = 1, maxCount = 2 }, -- Remains of a Blight Paladin
    { id = 9221, chance = 100, minCount = 1, maxCount = 1 }, -- Bounty task item 
}




monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1057 },  -- 1510*0.7=1057
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -1750, maxDamage = -3080, length = 8, spread = 3, effect = CONST_ME_EXPLOSIONAREA, target = false },  -- 2500*0.7=1750, 4400*0.7=3080
	{ name = "combat", interval = 2000, chance = 7, type = COMBAT_DEATHDAMAGE, minDamage = -2464, maxDamage = -2310, length = 8, spread = 3, effect = CONST_ME_EXPLOSIONAREA, target = false },  -- 3520*0.7=2464, 3300*0.7=2310
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -1764, maxDamage = -3010, radius = 4, effect = CONST_ME_EXPLOSIONAREA, target = false },  -- 2520*0.7=1764, 4300*0.7=3010
	{ name = "fury skill reducer", interval = 2000, chance = 5, target = false },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -2464, maxDamage = -2730, radius = 3, effect = CONST_ME_HITAREA, target = false },  -- 3520*0.7=2464, 3900*0.7=2730
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -2468, maxDamage = -2765, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_SMALLCLOUDS, target = false },  -- 3525*0.7=2468, 3950*0.7=2765
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
