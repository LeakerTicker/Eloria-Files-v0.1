local mType = Game.createMonsterType("Glinstone Mage")
local monster = {}

monster.description = "a glinstone mage"
monster.experience = 54000
monster.outfit = {
	lookType = 1660,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}



monster.health = 60000
monster.maxHealth = 60000
monster.race = "blood"
monster.corpse = 43839
monster.speed = 460
monster.manaCost = 0
monster.raceId = 2589
monster.Bestiary = {
	class = "Demon",
	race = BESTY_RACE_DEMON,
	toKill = 5000,
	FirstUnlock = 500,
	SecondUnlock = 3000,
	CharmsPoints = 100,
	Stars = 4,
	Occurrence = 0,
	Locations = "Elden Room Eclipse",
}
monster.changeTarget = {
	interval = 4000,
	chance = 0,
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
	staticAttackChance = 80,
	targetDistance = 1,
	runHealth = 1,
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
	{ text = "The smell of fear follows you.", yell = false },
	{ text = "Your soul will burn.", yell = false },
}

monster.loot = {
	{ name = "green crystal coin", chance = 100000, minCount = 1, maxCount = 2 },
	{ id = 34103, chance = 1300, minCount = 1, maxCount = 2 }, -- Glinstone Eye
	{ name = "crystal coin", chance = 10000, minCount = 1, maxCount = 3 },
    { name = "platinum coin", chance = 100000, minCount = 1, maxCount = 150 },
	{ id = 24964, chance = 100, minCount = 1, maxCount = 1 }, -- Bounty task item
}



monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -350, maxDamage = -931 },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_ENERGYDAMAGE, minDamage = -385, maxDamage = -1316, range = 7, shootEffect = CONST_ANI_ENERGY, target = false },
	{ name = "warlock skill reducer", interval = 2000, chance = 5, range = 5, target = false },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_FIREDAMAGE, minDamage = -399, maxDamage = -966, range = 7, radius = 3, shootEffect = CONST_ANI_BURSTARROW, effect = CONST_ME_FIREAREA, target = true },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -525, maxDamage = -861, length = 8, spread = 3, effect = CONST_ME_BIGCLOUDS, target = false },
}






monster.defenses = {
	defense = 120,
	armor = 120,
	mitigation = 3.33,
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
