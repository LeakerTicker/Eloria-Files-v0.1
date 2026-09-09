local mType = Game.createMonsterType("Pooka")
local monster = {}

monster.description = "a pooka"
monster.experience = 500
monster.outfit = {
	lookType = 977,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 1435
monster.Bestiary = {
	class = "Fey",
	race = BESTY_RACE_FEY,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "Feyrist (daytime).",
}

monster.health = 500
monster.maxHealth = 500
monster.race = "blood"
monster.corpse = 25823
monster.speed = 115
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
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
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 20,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "This was the initial trick, but the second follows quick!", yell = false },
	{ text = "Hoppel-di-hopp!", yell = false },
	{ text = "Jinx!", yell = false },
}

monster.loot = {
	{ name = "dream blossom staff", chance = 20 },
	{ name = "small stone", chance = 200, maxCount = 5 },
	{ name = "gold coin", chance = 30000, maxCount = 100 },
	{ name = "shimmering beetles", chance = 591 },
	{ name = "rainbow quartz", chance = 5800 },
    { id = 19206, chance = 100, minCount = 1, maxCount = 1 }, -- Bounty task item
	{ name = "small enchanted ruby", chance = 3400, maxCount = 2 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -120 },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = 0, maxDamage = -50, range = 4, shootEffect = CONST_ANI_SMALLSTONE, effect = CONST_ME_STONES, target = true },
}

monster.defenses = {
	defense = 38,
	armor = 38,
	mitigation = 0.99,
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_HEALING, minDamage = 40, maxDamage = 60, effect = CONST_ME_MAGIC_GREEN, target = false },
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
