local mType = Game.createMonsterType("Leaper")
local monster = {}

monster.description = "a Leaper"
monster.experience = 103200
monster.outfit = {
	lookType = 1305,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2590
monster.Bestiary = {
	class = "Undead",
	race = BESTY_RACE_UNDEAD,
	toKill = 6000,
	FirstUnlock = 500,
	SecondUnlock = 3000,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Elden Room, Pits of Eternity.",
}

monster.health = 106000
monster.maxHealth = 106000
monster.race = "undead"
monster.corpse = 33867
monster.speed = 800
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 20,
}

monster.strategiesTarget = {
	nearest = 100,
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
    { text = "Doom approaches on silent wings.", yell = false },
    { text = "The void hungers for your essence.", yell = false },
    { text = "Eternal darkness awaits.", yell = false },
}

monster.loot = {
	{ name = "green crystal coin", chance = 100000, minCount = 1, maxCount = 2 },
	{ name = "red crystal coin", chance = 10000, minCount = 1, maxCount = 2 },
	{ name = "crystal coin", chance = 15000, minCount = 1, maxCount = 4 },
	{ id = 21154, chance = 100, minCount = 1, maxCount = 1 }, -- Bounty task item
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -308, maxDamage = -980 },  -- 440*0.7=308, 1400*0.7=980
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -980, maxDamage = -1050, radius = 2, effect = CONST_ME_GROUNDSHAKER, target = false },  -- 1400*0.7=980, 1500*0.7=1050
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_HOLYDAMAGE, minDamage = -553, maxDamage = -952, length = 5, spread = 3, effect = CONST_ME_BLOCKHIT, target = false },  -- 790*0.7=553, 1360*0.7=952
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -1096, maxDamage = -1624, length = 8, spread = 2, effect = CONST_ME_CARNIPHILA, target = false },  -- 1566*0.7=1096, 2320*0.7=1624
	{ name = "zulazza the corruptor skill reducer", interval = 10000, chance = 1, target = true },
}


monster.defenses = {
	defense = 55,
	armor = 44,
	mitigation = 1.74,
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 180, maxDamage = 250, effect = CONST_ME_MAGIC_BLUE, target = false },
	{ name = "speed", interval = 2000, chance = 15, speedChange = 320, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000 },
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
