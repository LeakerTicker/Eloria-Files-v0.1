local mType = Game.createMonsterType("Fallen Dragon")
local monster = {}

monster.description = "a fallen dragon"
monster.experience = 20000
monster.outfit = {
	lookType = 1683,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2587
monster.Bestiary = {
	class = "Dragon",
	race = BESTY_RACE_DRAGON,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "Elden Hunting Rooms ( Middle )",
}

monster.health = 20000
monster.maxHealth = 20000
monster.race = "undead"
monster.corpse = 44178
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
	{ text = "EMBRACE MY GIFTS!", yell = true },
	{ text = "I WILL FEAST ON YOUR SOUL!", yell = true },
}



monster.loot = {

	{ name = "green crystal coin", chance = 100000, minCount = 1, maxCount = 2 },
	 { id = 44157, chance = 2000 }, -- Fallen Dragon Leather
	{ id = 51473, chance = 100, minCount = 1, maxCount = 1 }, -- Bounty task item
}



monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -651 },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_FIREDAMAGE, minDamage = -280, maxDamage = -644, range = 7, radius = 4, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true },
	{ name = "combat", interval = 1600, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -385, maxDamage = -889, length = 8, spread = 3, effect = CONST_ME_FIREAREA, target = false },
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
