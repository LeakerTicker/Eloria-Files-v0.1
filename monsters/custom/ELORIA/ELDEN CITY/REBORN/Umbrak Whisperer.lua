local mType = Game.createMonsterType("Umbrak Whisperer") -- reborn 6
local monster = {}

monster.description = "a Umbrak Whisperer"
monster.experience = 514800
monster.outfit = {
	lookType = 2771,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2652
monster.Bestiary = {
	class = "Undead",
	race = BESTY_RACE_UNDEAD,
	toKill = 10000,
	FirstUnlock = 2000,
	SecondUnlock = 6000,
	CharmsPoints = 250,
	Stars = 5,
	Occurrence = 0,
	Locations = "Reborn - Elden Room.",
}

monster.health = 414000
monster.maxHealth = 414000
monster.race = "undead"
monster.corpse = 5972
monster.speed = 760
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
	canPushCreatures = false,
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
	chance = 20,
	{ text = "Kneel. Your end is deserved.", yell = false },
}

monster.loot = {
	{ name = "red crystal coin", chance = 50000, minCount = 1, maxCount = 6 }, -- red crystal coin - wartość 20k
	{ name = "pink crystal coin", chance = 15000, minCount = 1, maxCount = 6 }, -- pink crystal coin - wartość 30k
	{ name = "green crystal coin", chance = 7000, minCount = 1, maxCount = 6 }, -- green crystal coin - wartość 10k
	{ name = "crystal coin", chance = 12000, minCount = 1, maxCount = 6 },
	{ id = 33926, chance = 1300, minCount = 1, maxCount = 2 }, -- Umbrak Spirit
    { id = 39548, chance = 100, minCount = 1, maxCount = 1 }, -- Bounty task item 
}

monster.attacks = {

	{ name = "melee", interval = 2000, chance = 100, minDamage = -175, maxDamage = -933 }, 
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -2450, maxDamage = -4312, length = 4, spread = 1, effect = CONST_ME_EXPLOSIONAREA, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -2120, maxDamage = -3514, length = 4, effect = CONST_ME_GROUNDSHAKER, spread = 1, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -2120, maxDamage = -3514, radius = 4, effect = CONST_ME_GROUNDSHAKER, target = false },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -2120, maxDamage = -4242, radius = 3, effect = CONST_ME_FIREATTACK, target = false },
	{ name = "combat", interval = 2000, chance = 30, type = COMBAT_FIREDAMAGE, minDamage = -2335, maxDamage = -3521, range = 7, shootEffect = CONST_ANI_CAKE, effect = CONST_ME_FIREATTACK, target = false },
}


monster.defenses = {
	defense = 55,
	armor = 44,
	mitigation = 1.74,
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 180, maxDamage = 1250, effect = CONST_ME_MAGIC_BLUE, target = false },
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
	{ type = "outfit", condition = true },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
