local mType = Game.createMonsterType("Wraith Caller")
local monster = {}

monster.description = "a wraith caller"
monster.experience = 60000
monster.outfit = {
	lookType = 1668,

}



monster.health = 64000
monster.maxHealth = 64000
monster.race = "blood"
monster.corpse = 44021
monster.speed = 400
monster.manaCost = 0
monster.raceId = 2596
monster.Bestiary = {
	class = "Demon",
	race = BESTY_RACE_DEMON,
	toKill = 5000,
	FirstUnlock = 500,
	SecondUnlock = 2500,
	CharmsPoints = 80,
	Stars = 4,
	Occurrence = 0,
	Locations = "Elden Room Lunar.",
}


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
	canPushCreatures = true,
	staticAttackChance = 80,
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
	{ text = "May the flames consume you!", yell = false },
	{ text = "Encounter the flames of destiny!", yell = false },
	{ text = "Fire and destruction!", yell = false },
}

monster.loot = {
	{ name = "green crystal coin", chance = 100000, minCount = 1, maxCount = 2 },
	{ name = "crystal coin", chance = 15000, minCount = 1, maxCount = 3 },
    { name = "platinum coin", chance = 100000, minCount = 1, maxCount = 150 },
	{ id = 31428, chance = 100, minCount = 1, maxCount = 1 }, -- Bounty task item
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -350, maxDamage = -471 },  -- 500*0.7=350, 673*0.7=471
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_MANADRAIN, minDamage = -466, maxDamage = -543, range = 7, target = false },  -- 666*0.7=466, 775*0.7=543
	{ name = "firefield", interval = 2000, chance = 10, range = 7, radius = 1, shootEffect = CONST_ANI_FIRE, target = true },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -403, maxDamage = -630, length = 8, spread = 3, effect = CONST_ME_PURPLEENERGY, target = false },  -- 575*0.7=403, 900*0.7=630
	{ name = "energy strike", interval = 2000, chance = 30, minDamage = -641, maxDamage = -1085, range = 1, target = false },  -- 915*0.7=641, 1550*0.7=1085
	{ name = "speed", interval = 2000, chance = 15, speedChange = -200, radius = 1, effect = CONST_ME_MAGIC_RED, target = true, duration = 45000 },
}


monster.defenses = {
	defense = 55,
	armor = 48,
	mitigation = 1.46,
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 75, maxDamage = 150, effect = CONST_ME_MAGIC_BLUE, target = false },  -- Buffed min and max damage (original: 50, 100)
	{ name = "speed", interval = 2000, chance = 15, speedChange = 480, effect = CONST_ME_MAGIC_RED, target = false, duration = 6000 },  -- Buffed speed change and duration (original: 320, 5000)
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