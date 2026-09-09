local mType = Game.createMonsterType("The Nightmare Beast")
local monster = {}

monster.description = "The Nightmare Beast"
monster.experience = 175000
monster.outfit = {
	lookType = 1144,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}



monster.health = 200000
monster.maxHealth = 200000
monster.race = "blood"
monster.corpse = 30159
monster.speed = 125
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10,
}

monster.bosstiary = {
	bossRaceId = 1718,
	bossRace = RARITY_ARCHFOE,
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
}

monster.loot = {
	{ id = 23542, chance = 6450 }, -- collar of blue plasma
	{ id = 23529, chance = 3230 }, -- ring of blue plasma
	{ id = 23531, chance = 16129 }, -- ring of green plasma
	{ id = 23533, chance = 9680 }, -- ring of red plasma
	{ id = 23543, chance = 9680 }, -- collar of green plasma
	{ name = "greater sage gem", chance = 500 },
	{ name = "greater spiritualist gem", chance = 500 },
	{ name = "greater mystic gem", chance = 500 },
	{ name = "greater marksman gem", chance = 500 },
	{ name = "greater guardian gem", chance = 500 },
	{ id = 61728, chance = 2470 }, -- ring of orange plasma
	{ id = 61726, chance = 2470 }, -- collar of orange plasma
	{ id = 23544, chance = 12900 }, -- collar of red plasma
	{ id = 30342, chance = 5830 }, -- enchanted sleep shawl
	{ id = 3039, chance = 41940, maxCount = 2 }, -- red gem
	{ id = 3341, chance = 3130 }, -- arcane staff
	{ name = "beast's nightmare-cushion", chance = 3770 },
	{ name = "blue gem", chance = 6450 },
	{ name = "chaos mace", chance = 10380 },
	{ name = "crystal coin", chance = 22580, maxCount = 3 },
	{ name = "dark whispers", chance = 3230 },
	{ name = "dragon figurine", chance = 7550 },
	{ name = "giant emerald", chance = 1890 },
	{ name = "giant ruby", chance = 6450 },
	{ name = "giant sapphire", chance = 2830 },
	{ id = 282, chance = 9680 }, -- giant shimmering pearl
	{ id = 46321, chance = 1500}, -- Core Backpack
	{ name = "gold ingot", chance = 16129 },
	{ name = "gold token", chance = 64150 },
	{ name = "green gem", chance = 19350 },
	{ name = "huge chunk of crude iron", chance = 38710 },
	{ name = "ice shield", chance = 19680 },
	{ name = "magic sulphur", chance = 8490 },
	{ name = "mysterious remains", chance = 93400 },
	{ name = "ring of the sky", chance = 84720 },
	{ name = "skull staff", chance = 129000 },
	{ name = "violet gem", chance = 69450 },
	{ name = "yellow gem", chance = 451960, maxCount = 2 },
	{ name = "gold token", chance = 8080 },
    { name = "silver token", chance = 8040 },
    { id = 43946, chance = 35000 },  -- Abridged Promotion Scroll
    { id = 49921, chance = 10000 },  -- Boss Token
			

}

monster.attacks = {
	{ name = "combat", interval = 2000, chance = 100, type = COMBAT_PHYSICALDAMAGE, minDamage = -1000, maxDamage = -3500, target = true }, -- basic attack (1000-3500)
	{ name = "death beam", interval = 2000, chance = 25, minDamage = -1000, maxDamage = -2100, target = false }, -- -_death_beam(1000-2100)
	{ name = "big death wave", interval = 2000, chance = 25, minDamage = -1000, maxDamage = -2000, target = false }, -- -_death_wave(1000-2000)
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_DEATHDAMAGE, minDamage = -700, maxDamage = -1000, radius = 5, effect = CONST_ME_MORTAREA, target = false }, -- -_great_death_bomb(700-1000)
}

monster.defenses = {
	defense = 160,
	armor = 160,
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
