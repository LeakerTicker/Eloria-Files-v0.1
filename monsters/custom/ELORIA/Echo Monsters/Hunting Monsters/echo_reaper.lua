local mType = Game.createMonsterType("Echo Reaper")
local monster = {}

monster.description = "an echo reaper"
monster.experience = 3220000
monster.outfit = {
	lookType = 4032,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2689
monster.Bestiary = {
	class = "Demon",
	race = BESTY_RACE_DEMON,
	toKill = 25000,
	FirstUnlock = 5000,
	SecondUnlock = 15000,
	CharmsPoints = 750,
	Stars = 5,
	Occurrence = 0,
	Locations = "Echo Huntings",
}

monster.health = 2260000
monster.maxHealth = 2260000
monster.race = "undead"
monster.corpse = 5526
monster.speed = 800
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
	{ text = "I AM THE ECHO OF WAR ITSELF!", yell = true },
	{ text = "CRUSH THEM ALL!", yell = true },
}

monster.loot = {
	{ name = "red crystal coin",   chance = 50000, minCount = 12, maxCount = 23 },
	{ name = "pink crystal coin",  chance = 15000, minCount = 12, maxCount = 18 },
	{ name = "green crystal coin", chance = 7000,  minCount = 12, maxCount = 26 },
	{ name = "crystal coin",       chance = 12000, minCount = 10, maxCount = 15 },
	{ id = 43898, chance = 9 }, -- grand bag you covet
	{ id = 43895, chance = 15 },  -- Bag you covet - zwykly
   { id = 21853, chance = 100, minCount = 1, maxCount = 1 }, -- Bounty task item 
}

-- Fire & Physical brute theme — +40% over Fate Demon Lord
monster.attacks = {
	{ name = "melee",         interval = 2000, chance = 100, minDamage = -3640, maxDamage = -9800 },
	-- Fire area (Fate Destroyer style)
	{ name = "combat",        interval = 2000, chance = 40, type = COMBAT_FIREDAMAGE,  minDamage = -6048, maxDamage = -10080, range = 7, radius = 6, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREATTACK, target = false },
	-- Shaburak wave (Fate Destroyer style)
	{ name = "shaburak wave", interval = 2000, chance = 25, minDamage = -5880, maxDamage = -10360, target = false },
	-- Fire line (Fate Destroyer style)
	{ name = "combat",  interval = 2000, chance = 30, type = COMBAT_DROWNDAMAGE, minDamage = -6520, maxDamage = -11360, range = 6, effect = CONST_ME_BUBBLES, target = false },
	-- Death explosion (Fate Reaper style)
	{ name = "combat",        interval = 2000, chance = 40, type = COMBAT_DEATHDAMAGE, minDamage = -6384, maxDamage = -10920, radius = 4, effect = CONST_ME_MORTAREA, target = true },
	-- Fire spread (Fate Reaper style)
	{ name = "combat",        interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE,  minDamage = -6440, maxDamage = -10920, length = 8, spread = 3, effect = CONST_ME_EXPLOSIONAREA, target = false },
}



monster.defenses = {
	defense = 35,
	armor = 30,
	mitigation = 1.24,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE,   percent = 0 },
	{ type = COMBAT_EARTHDAMAGE,    percent = 0 },
	{ type = COMBAT_FIREDAMAGE,     percent = 0 },
	{ type = COMBAT_LIFEDRAIN,      percent = 0 },
	{ type = COMBAT_MANADRAIN,      percent = 0 },
	{ type = COMBAT_DROWNDAMAGE,    percent = 0 },
	{ type = COMBAT_ICEDAMAGE,      percent = 0 },
	{ type = COMBAT_HOLYDAMAGE,     percent = 0 },
	{ type = COMBAT_DEATHDAMAGE,    percent = 0 },
}

monster.immunities = {
	{ type = "paralyze",  condition = true },
	{ type = "outfit",    condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed",     condition = false },
}

mType:register(monster)
