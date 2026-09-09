local mType = Game.createMonsterType("Zyr Naal")
local monster = {}

monster.description = "a Zyr Naal"
monster.experience = 192000
monster.outfit = {
	lookType = 1988,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2618
monster.Bestiary = {
	class = "Undead",
	race = BESTY_RACE_UNDEAD,
	toKill = 10000,
	FirstUnlock = 2000,
	SecondUnlock = 6000,
	CharmsPoints = 250,
	Stars = 5,
	Occurrence = 0,
	Locations = "Elder",
}



monster.health = 200000
monster.maxHealth = 200000
monster.race = "undead"
monster.corpse = 5972
monster.speed = 650
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
	chance = 20,
	{ text = "Kneel. Your end is deserved.", yell = false },
	{ text = "You fight, yet death clings to you like a shadow.", yell = false },
	{ text = "The light abandoned you long ago. Only I remain.", yell = false },
}

monster.loot = {
	{ name = "green crystal coin", chance = 50000, minCount = 1, maxCount = 2 }, -- green crystal coin - wartość 10k
	{ name = "crystal coin", chance = 15000, minCount = 1, maxCount = 4 },
    { id = 26074, chance = 100, minCount = 1, maxCount = 1 }, -- Bounty task item 
}

monster.attacks = {

	{ name = "melee", interval = 2000, chance = 100, minDamage = -175, maxDamage = -933 },  -- 250*0.7=175, 1333*0.7=933
	{ name = "combat", interval = 2000, chance = 14, type = COMBAT_DEATHDAMAGE, minDamage = -2450, maxDamage = -3312, length = 4, spread = 1, effect = CONST_ME_EXPLOSIONAREA, target = false },  -- 3500*0.7=2450, 6160*0.7=4312
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -2120, maxDamage = -2514, length = 4, effect = CONST_ME_GROUNDSHAKER, spread = 1, target = false },  -- 3028*0.7=2120, 5020*0.7=3514
	{ name = "combat", interval = 2000, chance = 12, type = COMBAT_ENERGYDAMAGE, minDamage = -2120, maxDamage = -3514, radius = 4, effect = CONST_ME_GROUNDSHAKER, target = false },  -- 3028*0.7=2120, 5020*0.7=3514
	{ name = "combat", interval = 2000, chance = 19, type = COMBAT_FIREDAMAGE, minDamage = -2120, maxDamage = -3242, radius = 3, effect = CONST_ME_FIREATTACK, target = false },  -- 3028*0.7=2120, 6060*0.7=4242
	{ name = "combat", interval = 2000, chance = 11, type = COMBAT_FIREDAMAGE, minDamage = -2334, maxDamage = -3521, range = 7, shootEffect = CONST_ANI_CAKE, effect = CONST_ME_FIREATTACK, target = false },  -- 3335*0.7=2334, 5030*0.7=3521
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
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
