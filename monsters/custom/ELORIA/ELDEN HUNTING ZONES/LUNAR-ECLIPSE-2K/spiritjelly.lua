local mType = Game.createMonsterType("Spirit Jelly")
local monster = {}

monster.description = "a spirit jelly"
monster.experience = 42600
monster.outfit = {
	lookType = 1623, -- Changed from 1623 to valid client outfit (Jelly)
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}



monster.health = 50000
monster.maxHealth = 50000
monster.race = "undead"
monster.corpse = 43565
monster.speed = 500
monster.manaCost = 0
monster.raceId = 2595
monster.Bestiary = {
	class = "Vermin",
	race = BESTY_RACE_VERMIN,
	toKill = 4000,
	FirstUnlock = 500,
	SecondUnlock = 2000,
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
	{ name = "green crystal coin", chance = 100000, minCount = 1, maxCount = 2 },
	{ name = "crystal coin", chance = 15000, minCount = 1, maxCount = 2 },
    { name = "platinum coin", chance = 100000, minCount = 1, maxCount = 180 },
	{ id = 23510, chance = 1300, minCount = 1, maxCount = 2 }, -- odd organ
	{ id = 25782, chance = 100, minCount = 1, maxCount = 1 }, -- Bounty task item
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -78, maxDamage = -933 },  -- 111*0.7=78, 1333*0.7=933
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -466, maxDamage = -490, length = 5, spread = 3, effect = CONST_ME_GROUNDSHAKER, target = false },  -- 666*0.7=466, 700*0.7=490
	{ name = "combat", interval = 2000, chance = 30, type = COMBAT_ENERGYDAMAGE, minDamage = -294, maxDamage = -420, radius = 7, effect = CONST_ME_BIGCLOUDS, target = false },  -- 420*0.7=294, 600*0.7=420
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_ICEDAMAGE, minDamage = -399, maxDamage = -630, range = 7, shootEffect = CONST_ANI_SNOWBALL, effect = CONST_ME_ICEATTACK, target = true },  -- 570*0.7=399, 900*0.7=630
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_ICEDAMAGE, minDamage = -399, maxDamage = -672, range = 7, radius = 5, shootEffect = CONST_ANI_ICE, effect = CONST_ME_ICEAREA, target = true },  -- 570*0.7=399, 960*0.7=672
	{ name = "ice chain", interval = 2000, chance = 15, minDamage = -462, maxDamage = -686, range = 7 },  -- 660*0.7=462, 980*0.7=686
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
