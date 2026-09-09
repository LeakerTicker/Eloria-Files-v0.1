local mType = Game.createMonsterType("Echo Monolith")
local monster = {}

monster.description = "an echo monolith"
monster.experience = 3680000
monster.outfit = {
	lookType = 4033,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2688
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


monster.health = 3000000
monster.maxHealth = 3000000
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
	{ text = "I SEE ALL. I DESTROY ALL.", yell = true },
	{ text = "THE ECHO NEVER FADES!", yell = true },
}

monster.loot = {
	{ name = "red crystal coin",   chance = 50000, minCount = 12, maxCount = 23 },
	{ name = "pink crystal coin",  chance = 15000, minCount = 12, maxCount = 18 },
	{ name = "green crystal coin", chance = 7000,  minCount = 12, maxCount = 26 },
	{ name = "crystal coin",       chance = 12000, minCount = 10, maxCount = 15 },
	{ id = 43898, chance = 11 }, -- grand bag you covet
   { id = 20047, chance = 100, minCount = 1, maxCount = 1 }, -- Bounty task item 
	{ id = 43895, chance = 15 },  -- Bag you covet - zwykly
}

-- Death & Energy heavy hitter theme — +60% over Fate Demon Lord
monster.attacks = {
	{ name = "melee",               interval = 2000, chance = 100, minDamage = -4160, maxDamage = -11200 },
	-- Death ranged single target (Fate Warden style)
	{ name = "combat",              interval = 2000, chance = 45, type = COMBAT_DEATHDAMAGE, minDamage = -8112, maxDamage = -11520, range = 7, radius = 1, shootEffect = CONST_ANI_DEATH, effect = CONST_ME_SMALLCLOUDS, target = true },
	-- Energy line (Fate Warden style)
	{ name = "combat",              interval = 2000, chance = 40, type = COMBAT_ENERGYDAMAGE, minDamage = -8720, maxDamage = -11840, length = 8, spread = 0, effect = CONST_ME_MORTAREA, target = false },
	-- Death explosion radius (Fate Reaper style)
	{ name = "combat",  interval = 2000, chance = 30, type = COMBAT_DROWNDAMAGE, minDamage = -9520, maxDamage = -13360, range = 6, effect = CONST_ME_BUBBLES, target = false },
	-- Ghastly dragon wave (Fate Warden/Reaper style)
	{ name = "ghastly dragon wave", interval = 2000, chance = 30, minDamage = -8596, maxDamage = -12480, target = false },
	-- Death long line (Fate Warden style)
	{ name = "combat",              interval = 2000, chance = 35, type = COMBAT_DEATHDAMAGE, minDamage = -8360, maxDamage = -12480, length = 9, spread = 0, effect = CONST_ME_MORTAREA, target = false },
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
