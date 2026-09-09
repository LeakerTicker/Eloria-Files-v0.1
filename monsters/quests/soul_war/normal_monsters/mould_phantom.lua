local mType = Game.createMonsterType("Mould Phantom")
local monster = {}

monster.description = "a mould phantom"
monster.experience = 18330
monster.outfit = {
	lookType = 1298,
	lookHead = 106,
	lookBody = 60,
	lookLegs = 131,
	lookFeet = 116,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 1945
monster.Bestiary = {
	class = "Undead",
	race = BESTY_RACE_UNDEAD,
	toKill = 5000,
	FirstUnlock = 200,
	SecondUnlock = 2000,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Rotten Wasteland.",
}



monster.health = 28000
monster.maxHealth = 28000
monster.race = "undead"
monster.corpse = 34133
monster.speed = 240
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
	{ text = "Everything decomposes.", yell = false },
	{ text = "I love the smell of rotten flesh.", yell = false },
	{ text = "The earth will take you back.", yell = false },
}

monster.loot = {
	{ name = "crystal coin", chance = 57370 },
	{ name = "gold ingot", chance = 11840, maxCount = 2 },
    { id = 20139, chance = 100, minCount = 1, maxCount = 1 }, -- Bounty task item
	{ name = "wand of starstorm", chance = 4440 },
	{ name = "green gem", chance = 3800, maxCount = 2 },
	{ name = "violet gem", chance = 3550, maxCount = 2 },
	{ name = "mould heart", chance = 4490, maxCount = 2 },
	{ name = "wand of defiance", chance = 2930 },
	{ name = "blue gem", chance = 3440, maxCount = 2 },
	{ name = "wand of voodoo", chance = 2360 },
	{ name = "mould robe", chance = 3200, maxCount = 2 },
	{ id = 23542, chance = 3070 }, -- collar of blue plasma
	{ id = 23529, chance = 3040 }, -- ring of blue plasma
	{ name = "ornate crossbow", chance = 2840 },
	{ name = "crystal crossbow", chance = 3620 },
	{ id = 61728, chance = 2470 }, -- ring of orange plasma
	{ id = 61726, chance = 2470 }, -- collar of orange plasma
		{ id = 34109, chance = 18 }, -- bag you desire


	}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -350 },
	{ name = "poison chain", interval = 2000, chance = 15, minDamage = -105, maxDamage = -315, range = 7 },
	{ name = "combat", interval = 3000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -350, maxDamage = -525, radius = 4, effect = CONST_ME_GREEN_RINGS, target = false },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_HOLYDAMAGE, minDamage = -371, maxDamage = -525, range = 7, shootEffect = CONST_ANI_SMALLHOLY, effect = CONST_ME_HOLYDAMAGE, target = true },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_HOLYDAMAGE, minDamage = -350, maxDamage = -490, radius = 4, range = 7, shootEffect = CONST_ANI_SMALLHOLY, effect = CONST_ME_HOLYDAMAGE, target = true },
	{ name = "extended holy chain", interval = 2000, chance = 15, minDamage = -140, maxDamage = -350, range = 7 },
}

monster.defenses = {
	defense = 100,
	armor = 100,
	mitigation = 2.45,
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
