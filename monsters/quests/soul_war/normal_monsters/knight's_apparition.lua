local mType = Game.createMonsterType("Knight's Apparition")
local monster = {}

monster.description = "a knight's apparition"
monster.experience = 28600
monster.outfit = {
	lookType = 131,
	lookHead = 19,
	lookBody = 76,
	lookLegs = 74,
	lookFeet = 114,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 1947
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
	{ text = "I am you. Just better!", yell = false },
	{ text = "I'll take your place when you are gone.", yell = false },
}

monster.loot = {
	{ name = "crystal coin", chance = 76610 },
	{ name = "epee", chance = 6870 },
	{ name = "green gem", chance = 4940 },
	{ name = "violet gem", chance = 3860 },
    { id = 20139, chance = 100, minCount = 1, maxCount = 1 }, -- Bounty task item
	{ name = "glacier amulet", chance = 4860 },
	{ name = "crystal mace", chance = 3360 },
	{ name = "giant sword", chance = 2720 },
	{ name = "stone skin amulet", chance = 5500 },
	{ name = "crown shield", chance = 3640 },
		{ id = 34109, chance = 18 }, -- bag you desire



}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -350 },
	{ name = "combat", interval = 3000, chance = 26, type = COMBAT_ICEDAMAGE, minDamage = -308, maxDamage = -420, range = 7, radius = 4, shootEffect = CONST_ANI_ICE, effect = CONST_ME_BIGCLOUDS, target = true },
	{ name = "ice chain", interval = 9500, chance = 34, minDamage = -455, maxDamage = -560, range = 7 },
	{ name = "combat", interval = 5000, chance = 52, type = COMBAT_HOLYDAMAGE, minDamage = -455, maxDamage = -560, range = 7, shootEffect = CONST_ANI_HOLY, effect = CONST_ME_HOLYDAMAGE, target = true },
	{ name = "combat", interval = 4000, chance = 14, type = COMBAT_HOLYDAMAGE, minDamage = -420, maxDamage = -560, radius = 4, effect = CONST_ME_HOLYAREA, target = false },
	{ name = "combat", interval = 3000, chance = 19, type = COMBAT_PHYSICALDAMAGE, minDamage = -315, maxDamage = -420, radius = 4, effect = CONST_ME_GROUNDSHAKER, target = false },
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
