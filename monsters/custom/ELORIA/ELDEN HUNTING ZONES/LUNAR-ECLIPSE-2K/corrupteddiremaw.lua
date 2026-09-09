local mType = Game.createMonsterType("Corrupted Diremaw")
local monster = {}

monster.description = "a corrupted diremaw"
monster.experience = 19000
monster.outfit = {
	lookType = 1397,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}


monster.raceId = 2585
monster.Bestiary = {
	class = "Vermin",
	race = BESTY_RACE_VERMIN,
	toKill = 4000,
	FirstUnlock = 500,
	SecondUnlock = 2000,
	CharmsPoints = 60,
	Stars = 4,
	Occurrence = 0,
	Locations = "Elden Room Lunar",
}


monster.health = 22000
monster.maxHealth = 22000
monster.race = "blood"
monster.corpse = 36688
monster.speed = 150
monster.manaCost = 0


monster.changeTarget = {
	interval = 5000,
	chance = 10,
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
}

monster.loot = {
	{ name = "green crystal coin", chance = 100000, minCount = 1, maxCount = 2 },
	{ name = "crystal coin", chance = 15000, minCount = 1, maxCount = 2 },
    { name = "platinum coin", chance = 100000, maxCount = 150 },
	{ id = 31336, chance = 100, minCount = 1, maxCount = 1 }, -- Bounty task item
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -490, maxDamage = -700 },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_EARTHDAMAGE, minDamage = -280, maxDamage = -840, range = 7, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = false },
	{ name = "combat", interval = 2000, chance = 35, type = COMBAT_EARTHDAMAGE, minDamage = -315, maxDamage = -777, range = 7, radius = 4, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POFF, target = true },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -294, maxDamage = -420, radius = 7, effect = CONST_ME_BIGCLOUDS, target = false },
	{ name = "condition", type = CONDITION_POISON, interval = 2000, chance = 21, minDamage = -210, maxDamage = -777, radius = 4, effect = CONST_ME_GREEN_RINGS, target = false },
}


monster.defenses = {
	defense = 5,
	armor = 71,
	mitigation = 1.94,
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
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
