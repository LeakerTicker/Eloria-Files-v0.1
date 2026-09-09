local mType = Game.createMonsterType("Bloodchant Horror") -- reborn 9
local monster = {}

monster.description = "a Bloodchant Horror"
monster.experience = 558000
monster.outfit = {
	lookType = 303,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2647
monster.Bestiary = {
	class = "Undead",
	race = BESTY_RACE_UNDEAD,
	toKill = 15000,
	FirstUnlock = 5000,
	SecondUnlock = 10000,
	CharmsPoints = 350,
	Stars = 5,
	Occurrence = 0,
	Locations = "Reborn - Elden Room.",
}

monster.health = 459000
monster.maxHealth = 459000
monster.race = "undead"
monster.corpse = 5972
monster.speed = 860
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8,
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
	interval = 15000,
	chance = 10,
	{ text = "I am the CURSED.", yell = false },
	{ text = "You should not have awakened me.", yell = true },
}

monster.loot = {
 	{ name = "red crystal coin", chance = 50000, minCount = 1, maxCount = 8 }, -- red crystal coin - wartość 20k
	{ name = "pink crystal coin", chance = 15000, minCount = 1, maxCount = 6 }, -- pink crystal coin - wartość 30k
	{ name = "green crystal coin", chance = 7000, minCount = 1, maxCount = 8 }, -- green crystal coin - wartość 10k
	{ name = "crystal coin", chance = 12000, minCount = 1, maxCount = 10 },
	{ name = "Bloodchant Leather", chance = 1300, minCount = 1, maxCount = 2 },
    { id = 21841, chance = 100, minCount = 1, maxCount = 1 }, -- Bounty task item 
}


monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -280, maxDamage = -1193 },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_DEATHDAMAGE, minDamage = -1889, maxDamage = -2537, range = 7, radius = 4, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYHIT, target = true },
	{ name = "combat", interval = 2000, chance = 35, type = COMBAT_ENERGYDAMAGE, minDamage = -1539, maxDamage = -2537, length = 9, spread = 3, effect = CONST_ME_ELECTRICALSPARK, target = false },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_ENERGYDAMAGE, minDamage = -1539, maxDamage = -2537, length = 9, spread = 3, effect = CONST_ME_BLUE_GHOST, target = false },
	{ name = "condition", type = CONDITION_ENERGY, interval = 2000, chance = 25, minDamage = -2100, maxDamage = -3080, radius = 5, effect = CONST_ME_FATAL, target = false },
	{ name = "condition", type = CONDITION_BLEEDING, interval = 2000, chance = 30, minDamage = -1400, maxDamage = -1400, length = 9, spread = 3, effect = CONST_ME_ELECTRICALSPARK, target = false },
}




monster.defenses = {
	defense = 70,
	armor = 70,
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
