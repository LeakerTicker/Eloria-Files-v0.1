local mType = Game.createMonsterType("Echo Tidecaller")
local monster = {}

monster.description = "an echo tidecaller"
monster.experience = 2760000
monster.outfit = {
	lookType = 4035,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2690
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


monster.health = 1680000
monster.maxHealth = 1680000
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
	{ text = "THE TIDES OF ECHO WILL DROWN YOU!", yell = true },
	{ text = "YOUR BLOOD FEEDS THE ABYSS!", yell = true },
}

monster.loot = {
	{ name = "red crystal coin",   chance = 50000, minCount = 12, maxCount = 23 },
	{ name = "pink crystal coin",  chance = 15000, minCount = 12, maxCount = 18 },
	{ name = "green crystal coin", chance = 7000,  minCount = 12, maxCount = 26 },
	{ name = "crystal coin",       chance = 12000, minCount = 10, maxCount = 15 },
	{ id = 43898, chance = 7 }, -- grand bag you covet
	{ id = 43895, chance = 13 },  -- Bag you covet - zwykly
   { id = 12675, chance = 100, minCount = 1, maxCount = 1 }, -- Bounty task item 
}

-- Ice & Drown theme — +20% over Fate Demon Lord
monster.attacks = {
	{ name = "melee",   interval = 2000, chance = 100, minDamage = -3120, maxDamage = -8400 },
	-- Ice large radius (Fate Demon Lord style)
	{ name = "combat",  interval = 3000, chance = 35, type = COMBAT_ICEDAMAGE,   minDamage = -5184, maxDamage = -8640, range = 7, radius = 7, shootEffect = CONST_ANI_ICE, effect = 243, target = true },
	-- Drown area (Fate Destroyer style)
	{ name = "combat",  interval = 2000, chance = 30, type = COMBAT_DROWNDAMAGE, minDamage = -5040, maxDamage = -8880, radius = 6, effect = CONST_ME_BUBBLES, target = false },
	-- Drown ranged (Fate Destroyer style)
	{ name = "combat",  interval = 2000, chance = 30, type = COMBAT_DROWNDAMAGE, minDamage = -5520, maxDamage = -9360, range = 6, effect = CONST_ME_BUBBLES, target = false },
	-- Ice small radius (Fate Demon Lord style)
	{ name = "combat",  interval = 2000, chance = 15, type = COMBAT_ICEDAMAGE,   minDamage = -5472, maxDamage = -9360, range = 7, radius = 3, shootEffect = 37, effect = 240, target = true },
	-- Death line (Fate Demon Lord style)
	{ name = "combat",  interval = 2000, chance = 35, type = COMBAT_DEATHDAMAGE, minDamage = -5520, maxDamage = -9360, length = 8, spread = 0, effect = 244, target = false },
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
