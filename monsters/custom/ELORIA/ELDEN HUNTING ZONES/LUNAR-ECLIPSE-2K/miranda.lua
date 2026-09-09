local mType = Game.createMonsterType("Miranda Sprout")
local monster = {}

monster.description = "a miranda sprout"
monster.experience = 30000
monster.outfit = {
	lookType = 1401,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}



monster.health = 30000
monster.maxHealth = 30000
monster.race = "blood"
monster.corpse = 36701
monster.speed = 500
monster.manaCost = 0
monster.raceId = 2593
monster.Bestiary = {
	class = "Vermin",
	race = BESTY_RACE_VERMIN,
	toKill = 4000,
	FirstUnlock = 500,
	SecondUnlock = 2000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Elden Room Lunar",
}

monster.changeTarget = {
	interval = 4000,
	chance = 20,
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
	chance = 10,
	{ text = "You will make sssuch a fine ssstatue!", yell = false },
	{ text = "There isss no chhhanccce of essscape", yell = false },
	{ text = "Are you tired or why are you moving thhat ssslow <chuckle>", yell = false },
	{ text = "Jussst look at me!", yell = false },
}

monster.loot = {
    { name = "platinum coin", chance = 100000, minCount = 1, maxCount = 140 },
	{ name = "green crystal coin", chance = 100000, minCount = 1, maxCount = 2 },
	{ id = 63637, chance = 100, minCount = 1, maxCount = 1 }, -- Bounty task item
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -350, maxDamage = -805, condition = { type = CONDITION_POISON, totalDamage = 840, interval = 4000 } },  -- 500*0.7=350, 1150*0.7=805
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_LIFEDRAIN, minDamage = -505, maxDamage = -805, range = 7, shootEffect = CONST_ANI_EARTH, effect = CONST_ME_CARNIPHILA, target = true },  -- 721*0.7=505, 1150*0.7=805
	{ name = "combat", interval = 2000, chance = 35, type = COMBAT_EARTHDAMAGE, minDamage = -525, maxDamage = -1050, length = 8, spread = 3, effect = CONST_ME_CARNIPHILA, target = false },  -- 750*0.7=525, 1500*0.7=1050
}


monster.defenses = {
	defense = 30,
	armor = 45,
	mitigation = 1.74,
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_HEALING, minDamage = 150, maxDamage = 300, effect = CONST_ME_MAGIC_BLUE, target = false },
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
