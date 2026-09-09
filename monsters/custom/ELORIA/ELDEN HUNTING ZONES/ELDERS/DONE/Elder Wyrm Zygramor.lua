local mType = Game.createMonsterType("Elder Wyrm Zygramor")
local monster = {}

monster.description = "a Elder Wyrm Zygramor"
monster.experience = 261200
monster.outfit = {
	lookType = 1707,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2605
monster.Bestiary = {
	class = "Undead",
	race = BESTY_RACE_UNDEAD,
	toKill = 7000,
	FirstUnlock = 1000,
	SecondUnlock = 3500,
	CharmsPoints = 150,
	Stars = 5,
	Occurrence = 0,
	Locations = "Elder",
}



monster.health = 270000
monster.maxHealth = 270000
monster.race = "undead"
monster.corpse = 44651
monster.speed = 960
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
	{ text = "Behold, the veil of reality is torn, revealing the cosmic absurdity.", yell = false },
	{ text = "Echoes of forgotten prophecies haunt the corridors of fate.", yell = false },
	{ text = "Spectral tendrils of uncertainty grasp at the edges of your perception.", yell = false },
}

monster.loot = {
	{ name = "red crystal coin", chance = 50000, minCount = 1, maxCount = 2 }, -- red crystal coin - wartość 20k
	{ name = "pink crystal coin", chance = 15000, minCount = 1, maxCount = 2 }, -- pink crystal coin - wartość 30k
	{ name = "crystal coin", chance = 12000, minCount = 1, maxCount = 2 },
	{ name = "crystal coin", chance = 9000, minCount = 1, maxCount = 2 },
	{ name = "Zygramor Scale", chance = 1300, minCount = 1, maxCount = 2 },
    { id = 22660, chance = 100, minCount = 1, maxCount = 1 }, -- Bounty task item 
}

monster.attacks = {

	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1633 }, 
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_DEATHDAMAGE, minDamage = -2450, maxDamage = -3612, length = 4, spread = 1, effect = CONST_ME_EXPLOSIONAREA, target = false },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_DEATHDAMAGE, minDamage = -2120, maxDamage = -2814, length = 4, effect = CONST_ME_GROUNDSHAKER, spread = 1, target = false },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_ENERGYDAMAGE, minDamage = -2120, maxDamage = -2814, radius = 4, effect = CONST_ME_GROUNDSHAKER, target = false },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_FIREDAMAGE, minDamage = -2120, maxDamage = -3542, radius = 3, effect = CONST_ME_FIREATTACK, target = false },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_FIREDAMAGE, minDamage = -2124, maxDamage = -2821, range = 7, shootEffect = CONST_ANI_CAKE, effect = CONST_ME_FIREATTACK, target = false },
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
