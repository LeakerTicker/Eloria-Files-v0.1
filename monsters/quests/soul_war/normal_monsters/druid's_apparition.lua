local mType = Game.createMonsterType("Druid's Apparition")
local monster = {}

monster.description = "a druid's apparition"
monster.experience = 28600
monster.outfit = {
	lookType = 148,
	lookHead = 114,
	lookBody = 48,
	lookLegs = 114,
	lookFeet = 95,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 1946
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
monster.corpse = 6081
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
	{ text = "Healing is what I do best.", yell = false },
	{ text = "I'll take your place when you are gone.", yell = false },
}

monster.loot = {
	{ name = "crystal coin", chance = 100700 },
	{ name = "terra rod", chance = 17540 },
	{ name = "blue gem", chance = 12720 },
	{ name = "green gem", chance = 8580 },
	{ name = "stone skin amulet", chance = 5820 },
    { id = 20139, chance = 100, minCount = 1, maxCount = 1 }, -- Bounty task item
	{ name = "glacier amulet", chance = 6510 },
	{ name = "sacred tree amulet", chance = 5070 },
	{ name = "springsprout rod", chance = 3190 },
	{ name = "underworld rod", chance = 3190 },
	{ name = "platinum amulet", chance = 2750 },
	{ name = "glacier robe", chance = 1880 },
	{ id = 23544, chance = 440 }, -- collar of red plasma
	{ id = 61728, chance = 2470 }, -- ring of orange plasma
	{ id = 61726, chance = 2470 }, -- collar of orange plasma
		{ id = 34109, chance = 18 }, -- bag you desire

	

}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -315 },
	{ name = "combat", interval = 3000, chance = 31, type = COMBAT_ICEDAMAGE, minDamage = -490, maxDamage = -595, range = 7, radius = 4, shootEffect = CONST_ANI_ICE, effect = CONST_ME_BIGCLOUDS, target = true },
	{ name = "ice chain", interval = 9500, chance = 37, minDamage = -490, maxDamage = -630, range = 7 },
	{ name = "combat", interval = 4000, chance = 55, type = COMBAT_HOLYDAMAGE, minDamage = -490, maxDamage = -665, range = 7, shootEffect = CONST_ANI_HOLY, effect = CONST_ME_HOLYDAMAGE, target = true },
	{ name = "combat", interval = 3000, chance = 23, type = COMBAT_HOLYDAMAGE, minDamage = -525, maxDamage = -630, radius = 4, effect = CONST_ME_HOLYAREA, target = false },
}

monster.defenses = {
	defense = 100,
	armor = 100,
	mitigation = 2.75,
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_HEALING, minDamage = 1000, maxDamage = 1100, effect = CONST_ME_MAGIC_BLUE, target = false },
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
