local mType = Game.createMonsterType("Turbulent Elemental")
local monster = {}

monster.description = "a turbulent elemental"
monster.experience = 19360
monster.outfit = {
	lookType = 1314,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 1940
monster.Bestiary = {
	class = "Elemental",
	race = BESTY_RACE_ELEMENTAL,
	toKill = 5000,
	FirstUnlock = 200,
	SecondUnlock = 2000,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Ebb and Flow.",
}



monster.health = 28000
monster.maxHealth = 28000
monster.race = "blood"
monster.corpse = 33905
monster.speed = 180
monster.manaCost = 0

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
	chance = 10,
}

monster.loot = {
	{ name = "crystal coin", chance = 104880 },
	{ name = "gold ingot", chance = 22270 },
    { id = 20139, chance = 100, minCount = 1, maxCount = 1 }, -- Bounty task item
	{ name = "sacred tree amulet", chance = 6160 },
	{ name = "blue gem", chance = 4980 },
	{ name = "springsprout rod", chance = 6270 },
	{ name = "northwind rod", chance = 6320 },
	{ name = "violet gem", chance = 5080 },
	{ name = "glacier amulet", chance = 4840 },
	{ name = "glacier robe", chance = 3900 },
	{ name = "fur armor", chance = 3420 },
	{ name = "wood cape", chance = 1950 },
	{ name = "crystalline armor", chance = 2710 },
	{ name = "rubber cap", chance = 2710 },
	{ id = 34109, chance = 18 }, -- bag you desire

	
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -420 },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -210, maxDamage = -595, range = 7, shootEffect = CONST_ANI_SNOWBALL, effect = CONST_ME_ICEATTACK, target = true },
	{ name = "combat", interval = 3000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -210, maxDamage = -525, range = 7, shootEffect = CONST_ANI_HUNTINGSPEAR, effect = CONST_ME_DRAWBLOOD, target = true },
	{ name = "combat", interval = 4000, chance = 24, type = COMBAT_ICEDAMAGE, minDamage = -315, maxDamage = -532, radius = 4, effect = CONST_ME_ICETORNADO, target = false },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_EARTHDAMAGE, minDamage = -315, maxDamage = -525, length = 5, radius = 2, effect = CONST_ME_GREEN_RINGS, target = false },
	}

monster.defenses = {
	defense = 105,
	armor = 105,
	mitigation = 2.72,
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
