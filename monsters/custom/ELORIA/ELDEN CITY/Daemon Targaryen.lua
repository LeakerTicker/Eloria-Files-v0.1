local mType = Game.createMonsterType("Daemon")
local monster = {}

monster.description = "a Daemon"
monster.experience = 70000
monster.outfit = {
	lookType = 2016,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2620
monster.Bestiary = {
	class = "Dragon",
	race = BESTY_RACE_DRAGON,
	toKill = 5000,
	FirstUnlock = 500,
	SecondUnlock = 2500,
	CharmsPoints = 120,
	Stars = 4,
	Occurrence = 0,
	Locations = "Elden City Room",
}

monster.health = 70000
monster.maxHealth = 70000
monster.race = "blood"
monster.corpse = 4026
monster.speed = 700
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 50,
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
	canPushCreatures = true,
	staticAttackChance = 80,
	targetDistance = 1,
	runHealth = 1,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = true,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.voices = {
	interval = 5000,
	chance = 25,
	{ text = "Jussst look at me!", yell = false },
	{ text = "Fchu?", yell = false },
	{ text = "Rooawwrr", yell = false },
}

monster.loot = {
	{ name = "green crystal coin", chance = 100000, minCount = 1, maxCount = 2 }, -- green crystal coin - wartość 10k
	{ name = "crystal coin", chance = 15000, minCount = 1, maxCount = 2 },
    { id = 31354, chance = 100, minCount = 1, maxCount = 1 }, -- Bounty task item 
}



monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -245, maxDamage = -777 },  -- 350*0.7=245, 1110*0.7=777
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_ENERGYDAMAGE, minDamage = -175, maxDamage = -573, length = 8, spread = 3, effect = CONST_ME_PURPLEENERGY, target = false },  -- 250*0.7=175, 819*0.7=573
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_DEATHDAMAGE, minDamage = -490, maxDamage = -560, length = 12, spread = 3, effect = CONST_ME_MORTAREA, target = false },  -- 700*0.7=490, 800*0.7=560
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_FIREDAMAGE, minDamage = -35, maxDamage = -364, radius = 5, effect = CONST_ME_FIREAREA, target = true },  -- 50*0.7=35, 520*0.7=364
}





monster.defenses = {
	defense = 52,
	armor = 53,
	mitigation = 1.46,
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
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}
mType:register(monster)
