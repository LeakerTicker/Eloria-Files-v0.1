local mType = Game.createMonsterType("Fate Reaper")
local monster = {}

monster.description = "a fate reaper"
monster.experience = 1500000
monster.outfit = {
	lookType = 4106,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2685
monster.Bestiary = {
	class = "Demon",
	race = BESTY_RACE_DEMON,
	toKill = 25000,
	FirstUnlock = 5000,
	SecondUnlock = 15000,
	CharmsPoints = 750,
	Stars = 5,
	Occurrence = 0,
	Locations = "Fate Huntings",
}

monster.health = 1000000
monster.maxHealth = 1000000
monster.race = "undead"
monster.corpse = 8127
monster.speed = 300
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
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
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 1,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = true,
}

monster.light = {
	level = 4,
	color = 119,
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "I REAP WHAT FATE SOWS!", yell = true },
	{ text = "YOUR SOUL IS MINE!", yell = true },
}

monster.loot = {
 	{ name = "red crystal coin", chance = 50000, minCount = 6, maxCount = 20 }, -- red crystal coin - wartość 20k
	{ name = "pink crystal coin", chance = 15000, minCount = 6, maxCount = 15 }, -- pink crystal coin - wartość 30k
	{ name = "green crystal coin", chance = 7000, minCount = 6, maxCount = 23 }, -- green crystal coin - wartość 10k
	{ name = "crystal coin", chance = 12000, minCount = 4, maxCount = 10 },
    { id = 39546, chance = 10 },  -- Primal Bag
    { id = 12735, chance = 100, minCount = 1, maxCount = 1 }, -- Bounty task item 
}

monster.attacks = {
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -3500, maxDamage = -7400, length = 8, spread = 3, effect = CONST_ME_EXPLOSIONAREA, target = false },
	{ name = "combat", interval = 2000, chance = 27, type = COMBAT_DEATHDAMAGE, minDamage = -4520, maxDamage = -6300, length = 8, spread = 3, effect = CONST_ME_EXPLOSIONAREA, target = false },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_DEATHDAMAGE, minDamage = -4500, maxDamage = -8360, radius = 4, effect = CONST_ME_MORTAREA, target = true },
	{ name = "sulphur spouter wave", interval = 2000, chance = 25, minDamage = -4928, maxDamage = -4620 },
	{ name = "ghastly dragon wave", interval = 2000, chance = 30, minDamage = -4184, maxDamage = -6275, target = false },
}

monster.defenses = {
	defense = 35,
	armor = 30,
	mitigation = 1.24,
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
