local mType = Game.createMonsterType("Malofur Mangrinder")
local monster = {}

monster.description = "Malofur Mangrinder"
monster.experience = 150000
monster.outfit = {
	lookType = 1120,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}


monster.health = 100000
monster.maxHealth = 100000
monster.race = "blood"
monster.corpse = 30017
monster.speed = 125
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10,
}

monster.bosstiary = {
	bossRaceId = 1696,
	bossRace = RARITY_NEMESIS,
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
	rewardBoss = true,
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
	{ text = "RAAAARGH! I'M MASHING YE TO DUST BOOM!", yell = true },
	{ text = "BOOOM!", yell = true },
	{ text = "BOOOOM!!!", yell = true },
	{ text = "BOOOOOM!!!", yell = true },
}

monster.loot = {
	{ id = 23544, chance = 22220 }, -- collar of red plasma
	{ id = 23529, chance = 13890 }, --  ring of blue plasma
	{ id = 23531, chance = 8330 }, -- ring of green plasma
	{ id = 23542, chance = 8330 }, -- collar of blue plasma
	{ id = 23543, chance = 16670 }, -- collar of green plasma
	{ id = 61728, chance = 2470 }, -- ring of orange plasma
	{ id = 61726, chance = 2470 }, -- collar of orange plasma
	{ id = 3039, chance = 47220 }, -- red gem
	{ name = "blue gem", chance = 20000 },
	{ name = "chaos mace", chance = 83300 },
	{ name = "crystal coin", chance = 250000, maxCount = 2 },
	{ name = "energy bar", chance = 88890 },
	{ id = 46321, chance = 1500}, -- Core Backpack
	{ id = 282, chance = 8330 }, -- giant shimmering pearl
	{ name = "gold ingot", chance = 222200 },
	{ name = "green gem", chance = 111100 },
	{ name = "huge chunk of crude iron", chance = 40000 },
	{ name = "magic sulphur", chance = 55600 },
	{ name = "mysterious remains", chance = 88890 },
	{ name = "platinum coin", chance = 100000, maxCount = 8 },
	{ name = "pomegranate", chance = 16670 },
	{ name = "resizer", chance = 6780 },
	{ id = 23533, chance = 55600 }, -- ring of red plasma
	{ name = "ring of the sky", chance = 27800 },
	{ name = "skull staff", chance = 83030 },
	{ name = "violet gem", chance = 83300 },
	{ name = "yellow gem", chance = 44440, maxCount = 2 },
	{ name = "gold token", chance = 7080 },
    { name = "silver token", chance = 7140 },
    { id = 49921, chance = 10000 },  -- Boss Token
	{ id = 43946, chance = 30000 },  -- Abridged Promotion Scroll
}

monster.attacks = {
	{ name = "combat", interval = 2000, chance = 100, type = COMBAT_PHYSICALDAMAGE, minDamage = -400, maxDamage = -2500, target = true }, -- basic attack
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = -400, maxDamage = -5500, effect = CONST_ME_GROUNDSHAKER, radius = 4, target = false }, -- groundshaker
}

monster.defenses = {
	defense = 60,
	armor = 60,
	--	mitigation = ???,
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
