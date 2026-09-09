local mType = Game.createMonsterType("Fate Destroyer")
local monster = {}

monster.description = "a fate destroyer"
monster.experience = 1700000
monster.outfit = {
	lookType = 4107,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2686
monster.Bestiary = {
	class = "Demon",
	race = BESTY_RACE_DEMON,
	toKill = 40000,
	FirstUnlock = 15000,
	SecondUnlock = 25000,
	CharmsPoints = 900,
	Stars = 5,
	Occurrence = 0,
	Locations = "Fate Huntings",
}

monster.health = 1200000
monster.maxHealth = 1200000
monster.race = "undead"
monster.corpse = 6319
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
	{ text = "I WILL DESTROY EVERYTHING!", yell = true },
	{ text = "NOTHING CAN STOP FATE'S WRATH!", yell = true },
}

monster.loot = {
 	{ name = "red crystal coin", chance = 50000, minCount = 9, maxCount = 23 }, -- red crystal coin - wartość 20k
	{ name = "pink crystal coin", chance = 15000, minCount = 9, maxCount = 18 }, -- pink crystal coin - wartość 30k
	{ name = "green crystal coin", chance = 7000, minCount = 9, maxCount = 26 }, -- green crystal coin - wartość 10k
	{ name = "crystal coin", chance = 12000, minCount = 7, maxCount = 12 },
    { id = 43895, chance = 10 },  -- Bag you covet - zwykly
    { id = 24969, chance = 100, minCount = 1, maxCount = 1 }, -- Bounty task item 
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -2000, maxDamage = -7113 },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_FIREDAMAGE, minDamage = -4020, maxDamage = -6060, range = 7, radius = 6, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREATTACK, target = false },
	{ name = "shaburak wave", interval = 2000, chance = 25, minDamage = -4270, maxDamage = -5140, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -5130, maxDamage = -7170, length = 4, spread = 0, effect = CONST_ME_FIREATTACK, target = false },
	{ name = "combat", interval = 2000, chance = 30, type = COMBAT_DROWNDAMAGE, minDamage = -4260, maxDamage = -7320, radius = 6, effect = CONST_ME_BUBBLES, target = false },
	{ name = "combat", interval = 2000, chance = 30, type = COMBAT_DROWNDAMAGE, minDamage = -3160, maxDamage = -5320, range = 6, effect = CONST_ME_BUBBLES, target = false },
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
