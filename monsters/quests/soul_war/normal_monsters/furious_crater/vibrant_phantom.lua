local mType = Game.createMonsterType("Vibrant Phantom")
local monster = {}

monster.description = "a vibrant phantom"
monster.experience = 19700
monster.outfit = {
	lookType = 1298,
	lookHead = 85,
	lookBody = 85,
	lookLegs = 88,
	lookFeet = 91,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 1929
monster.Bestiary = {
	class = "Undead",
	race = BESTY_RACE_UNDEAD,
	toKill = 5000,
	FirstUnlock = 200,
	SecondUnlock = 2000,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Furious Crater.",
}



monster.health = 27000
monster.maxHealth = 27000
monster.race = "undead"
monster.corpse = 33813
monster.speed = 230
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
	targetDistance = 4,
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
	{ text = "All this beautiful lightning.", yell = false },
	{ text = "Feel the vibration!", yell = false },
}

monster.loot = {
	{ name = "crystal coin", chance = 106670 },
	{ name = "terra rod", chance = 13980 },
	{ name = "violet gem", chance = 8600 },
	{ name = "vibrant heart", chance = 6450 },
	{ id = 281, chance = 6450 }, -- giant shimmering pearl
	{ name = "gold ingot", chance = 4300 },
	{ name = "blue crystal shard", chance = 4300 },
	{ name = "vibrant robe", chance = 5230 },
	{ name = "springsprout rod", chance = 5230 },
	{ name = "blue gem", chance = 5230 },
	{ name = "hailstorm rod", chance = 5230 },
    { id = 20139, chance = 100, minCount = 1, maxCount = 1 }, -- Bounty task item
	{ name = "underworld rod", chance = 4150 },
	{ id = 61728, chance = 2470 }, -- ring of orange plasma
	{ id = 61726, chance = 2470 }, -- collar of orange plasma
	{ name = "violet crystal shard", chance = 3080 },
	{ id = 23529, chance = 3080 }, -- ring of blue plasma
	{ name = "green gem", chance = 3080 },
		{ id = 34109, chance = 18 }, -- bag you desire
	{ name = "brooch of embracement", chance = 3500 },

}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -455 },
	{ name = "extended energy chain", interval = 2000, chance = 15, minDamage = -266, maxDamage = -385, range = 7 },
	{ name = "combat", interval = 3000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -350, maxDamage = -560, range = 7, radius = 4, effect = CONST_ME_ENERGYAREA, target = false },
	{ name = "combat", interval = 3000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -420, maxDamage = -560, range = 7, radius = 4, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYAREA, target = true },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_HOLYDAMAGE, minDamage = -455, maxDamage = -630, range = 7, shootEffect = CONST_ANI_SMALLHOLY, effect = CONST_ME_HOLYDAMAGE, target = true },
	{ name = "extended holy chain", interval = 2000, chance = 15, minDamage = -441, maxDamage = -560, range = 7 },
}

monster.defenses = {
	defense = 100,
	armor = 100,
	mitigation = 2.45,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = -10 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 20 },
	{ type = COMBAT_EARTHDAMAGE, percent = -10 },
	{ type = COMBAT_FIREDAMAGE, percent = 0 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 0 },
	{ type = COMBAT_HOLYDAMAGE, percent = 10 },
	{ type = COMBAT_DEATHDAMAGE, percent = -10 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = true },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
