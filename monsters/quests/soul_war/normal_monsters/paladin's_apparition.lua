local mType = Game.createMonsterType("Paladin's Apparition")
local monster = {}

monster.description = "a paladin's apparition"
monster.experience = 28600
monster.outfit = {
	lookType = 129,
	lookHead = 57,
	lookBody = 42,
	lookLegs = 114,
	lookFeet = 114,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 1948
monster.Bestiary = {
	class = "Undead",
	race = BESTY_RACE_UNDEAD,
	toKill = 5000,
	FirstUnlock = 200,
	SecondUnlock = 2000,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Mirrored Nightmare.",
}

monster.health = 25000
monster.maxHealth = 25000
monster.race = "blood"
monster.corpse = 111
monster.speed = 235
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
	{ text = "I could be your evil twin!", yell = false },
	{ text = "I'll take your place when you are gone.", yell = false },
}

monster.loot = {
	{ name = "crystal coin", chance = 101310 },
	{ name = "warrior helmet", chance = 6850 },
	{ name = "blue gem", chance = 6230 },
	{ name = "violet gem", chance = 4670 },
    { id = 20139, chance = 100, minCount = 1, maxCount = 1 }, -- Bounty task item
	{ name = "glacier mask", chance = 4670 },
	{ name = "glacier amulet", chance = 4670 },
	{ name = "green gem", chance = 4670 },
	{ name = "wood cape", chance = 3120 },
	{ name = "skull helmet", chance = 3870 },
	{ name = "stone skin amulet", chance = 5560 },
	{ id = 23542, chance = 3250 }, -- collar of blue plasma
	{ id = 23529, chance = 3250 }, -- ring of blue plasma
		{ id = 34109, chance = 18 }, -- bag you desire
	{ id = 61728, chance = 2470 }, -- ring of orange plasma
	{ id = 61726, chance = 2470 }, -- collar of orange plasma


}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -455 },
	{ name = "combat", interval = 4000, chance = 26, type = COMBAT_ICEDAMAGE, minDamage = -308, maxDamage = -420, range = 7, radius = 4, shootEffect = CONST_ANI_ICE, effect = CONST_ME_BIGCLOUDS, target = true },
	{ name = "ice chain", interval = 5000, chance = 20, minDamage = -455, maxDamage = -700, range = 7 },
	{ name = "combat", interval = 9500, chance = 52, type = COMBAT_HOLYDAMAGE, minDamage = -420, maxDamage = -630, range = 7, shootEffect = CONST_ANI_HOLY, effect = CONST_ME_HOLYDAMAGE, target = true },
	{ name = "combat", interval = 3000, chance = 22, type = COMBAT_HOLYDAMAGE, minDamage = -525, maxDamage = -630, radius = 4, effect = CONST_ME_HOLYAREA, target = false },
	{ name = "combat", interval = 4000, chance = 23, type = COMBAT_PHYSICALDAMAGE, minDamage = -350, maxDamage = -595, radius = 4, shootEffect = CONST_ANI_EXPLOSION, range = 7, effect = CONST_ME_EXPLOSIONHIT, target = true },
}

monster.defenses = {
	defense = 100,
	armor = 100,
	mitigation = 3.04,
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
