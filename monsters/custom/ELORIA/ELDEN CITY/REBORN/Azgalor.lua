local mType = Game.createMonsterType("Azgalor") -- reborn 9
local monster = {}

monster.description = "a Azgalor"
monster.experience = 477000
monster.outfit = {
	lookType = 365,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2646
monster.Bestiary = {
	class = "Undead",
	race = BESTY_RACE_HUMAN,
	toKill = 15000,
	FirstUnlock = 5000,
	SecondUnlock = 10000,
	CharmsPoints = 350,
	Stars = 5,
	Occurrence = 0,
	Locations = "Reborn - Elden Room.",
}

monster.health = 482300
monster.maxHealth = 482300
monster.race = "blood"
monster.corpse = 5972
monster.speed = 690
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
	interval = 10000,
	chance = 10,
	{ text = "Praise the voodoo!", yell = false },
}

monster.loot = {
 	{ name = "red crystal coin", chance = 50000, minCount = 1, maxCount = 8 }, -- red crystal coin - wartość 20k
	{ name = "pink crystal coin", chance = 15000, minCount = 1, maxCount = 6 }, -- pink crystal coin - wartość 30k
	{ name = "green crystal coin", chance = 7000, minCount = 1, maxCount = 8 }, -- green crystal coin - wartość 10k
	{ name = "crystal coin", chance = 12000, minCount = 1, maxCount = 10 },
    { id = 21841, chance = 100, minCount = 1, maxCount = 1 }, -- Bounty task item 
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -700, maxDamage = -3150 },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_EARTHDAMAGE, minDamage = -1645, maxDamage = -3115, shootEffect = CONST_ANI_SNIPERARROW, target = true },
	{ name = "combat", interval = 2000, chance = 35, type = COMBAT_EARTHDAMAGE, minDamage = -1610, maxDamage = -3794, radius = 4, shootEffect = CONST_ANI_POISONARROW, effect = CONST_ME_GREEN_RINGS, target = true },
	{ name = "combat", interval = 2000, chance = 30, type = COMBAT_PHYSICALDAMAGE, minDamage = -1610, maxDamage = -2366, radius = 3, effect = CONST_ME_GROUNDSHAKER, target = false },
}


monster.defenses = {
	defense = 15,
	armor = 30,
	mitigation = 1.13,
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 400, maxDamage = 6000, effect = CONST_ME_MAGIC_BLUE, target = false },
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
