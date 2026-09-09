local mType = Game.createMonsterType("Lilith")
local monster = {}

monster.description = "a Lilith"
monster.experience = 103200
monster.outfit = {
	lookType = 1663,
	lookHead = 50,
	lookBody = 50,
	lookLegs = 30,
	lookFeet = 150,
	lookAddons = 2,
	lookMount = 0,
}

monster.raceId = 2591
monster.Bestiary = {
	class = "Undead",
	race = BESTY_RACE_UNDEAD,
	toKill = 6000,
	FirstUnlock = 1000,
	SecondUnlock = 3000,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Elden Room, Pits of Eternity.",
}

monster.health = 106000
monster.maxHealth = 106000
monster.race = "undead"
monster.corpse = 111
monster.speed = 800
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
    { text = "Doom approaches on silent wings.", yell = false },
    { text = "The void hungers for your essence.", yell = false },
    { text = "Eternal darkness awaits.", yell = false },
}

monster.loot = {
{ name = "green crystal coin", chance = 100000, minCount = 1, maxCount = 2 }, -- green crystal coin - wartość 10k
    { name = "red crystal coin", chance = 10000, minCount = 1, maxCount = 2 }, -- red crystal coin - wartość 20k
    { name = "crystal coin", chance = 15000, minCount = 1, maxCount = 2 },
	{ id = 21154, chance = 100, minCount = 1, maxCount = 1 }, -- Bounty task item
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1050 },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -798, maxDamage = -1050, range = 3, length = 9, spread = 3, effect = CONST_ME_MORTAREA, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -637, maxDamage = -1050, range = 3, length = 9, spread = 4, effect = CONST_ME_SMALLCLOUDS, target = false },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = 84, maxDamage = -1050, radius = 8, effect = CONST_ME_HITAREA, target = false },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_DEATHDAMAGE, minDamage = -791, maxDamage = -1050, radius = 8, effect = CONST_ME_BLACKSMOKE, target = false },
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
