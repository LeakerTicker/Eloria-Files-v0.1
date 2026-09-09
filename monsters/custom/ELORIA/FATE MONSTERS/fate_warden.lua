local mType = Game.createMonsterType("Fate Warden")
local monster = {}

monster.description = "a fate warden"
monster.experience = 1197000
monster.outfit = {
	lookType = 4104,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2683
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

monster.health = 765000
monster.maxHealth = 765000
monster.race = "undead"
monster.corpse = 5972
monster.speed = 750
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
	{ text = "EMBRACE MY GIFTS!", yell = true },
	{ text = "I WILL FEAST ON YOUR SOUL!", yell = true },
}

monster.loot = {
 	{ name = "red crystal coin", chance = 50000, minCount = 3, maxCount = 13 }, -- red crystal coin - wartość 20k
	{ name = "pink crystal coin", chance = 15000, minCount = 3, maxCount = 10 }, -- pink crystal coin - wartość 30k
	{ name = "green crystal coin", chance = 7000, minCount = 3, maxCount = 20 }, -- green crystal coin - wartość 10k
	{ name = "crystal coin", chance = 12000, minCount = 1, maxCount = 10 },
	{ name = "bag you desire", chance = 10 },
   { id = 9611, chance = 100, minCount = 1, maxCount = 1 }, -- Bounty task item 
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -2700, maxDamage = -6757 },
	{ name = "combat", interval = 2000, chance = 45, type = COMBAT_DEATHDAMAGE, minDamage = -3750, maxDamage = -5312, range = 7, radius = 1, shootEffect = CONST_ANI_DEATH, effect = CONST_ME_SMALLCLOUDS, target = true },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_ENERGYDAMAGE, minDamage = -4100, maxDamage = -6800, length = 8, spread = 0, effect = CONST_ME_MORTAREA, target = false },
	{ name = "combat", interval = 2000, chance = 35, type = COMBAT_ICEDAMAGE, minDamage = -2900, maxDamage = -6100, range = 7, radius = 7, shootEffect = CONST_ANI_ICE, effect = CONST_ME_ICEAREA, target = true },
	{ name = "ghastly dragon wave", interval = 2000, chance = 10, minDamage = -4184, maxDamage = -6275, target = false },
	{ name = "combat", interval = 2000, chance = 35, type = COMBAT_DEATHDAMAGE, minDamage = -3400, maxDamage = -5700, length = 9, spread = 0, effect = CONST_ME_MORTAREA, target = false },
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
