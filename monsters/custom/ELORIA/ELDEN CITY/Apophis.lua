local mType = Game.createMonsterType("Apophis")
local monster = {}

monster.description = "a Apophis"
monster.experience = 80250
monster.outfit = {
	lookType = 1935,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}



monster.health = 86000
monster.maxHealth = 86000
monster.race = "blood"
monster.corpse = 6068
monster.speed = 500
monster.manaCost = 0
monster.raceId = 2624
monster.Bestiary = {
	class = "Magical",
	race = BESTY_RACE_MAGICAL,
	toKill = 5000,
	FirstUnlock = 500,
	SecondUnlock = 2500,
	CharmsPoints = 70,
	Stars = 4,
	Occurrence = 0,
	Locations = "Elden Room Lunar",
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
	level = 4,
	color = 143,
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "Bling.", yell = false },
	{ text = "Clank.", yell = false },
}

monster.loot = {
	{ name = "green crystal coin", chance = 100000, minCount = 1, maxCount = 2 }, -- green crystal coin - wartość 10k
	{ name = "crystal coin", chance = 10000, minCount = 1, maxCount = 2 },
	{ name = "crystal coin", chance = 7000, minCount = 1, maxCount = 2 },
	{ id = 3215, chance = 1300, minCount = 1, maxCount = 2 }, -- Apophis Eye
    { id = 31355, chance = 100, minCount = 1, maxCount = 1 }, -- Bounty task item 
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -560, maxDamage = -1015, condition = { type = CONDITION_POISON, totalDamage = 840, interval = 4000 } },  -- 800*0.7=560, 1450*0.7=1015
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_EARTHDAMAGE, minDamage = -385, maxDamage = -630, length = 8, spread = 0, effect = CONST_ME_CARNIPHILA, target = false },  -- 550*0.7=385, 900*0.7=630
	{ name = "combat", interval = 2000, chance = 24, type = COMBAT_DEATHDAMAGE, minDamage = -140, maxDamage = -665, length = 8, spread = 3, effect = CONST_ME_BLACKSMOKE, target = false },  -- 200*0.7=140, 950*0.7=665
	{ name = "combat", interval = 2000, chance = 28, type = COMBAT_ICEDAMAGE, minDamage = -385, maxDamage = -889, range = 7, radius = 4, shootEffect = CONST_ANI_ICE, effect = CONST_ME_ICEATTACK, target = true },  -- 550*0.7=385, 1270*0.7=889
}



monster.defenses = {
	defense = 100,
	armor = 100,
	mitigation = 3.34,
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
