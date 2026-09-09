local mType = Game.createMonsterType("Great Horned Tragoth")
local monster = {}

monster.description = "a Great Horned Tragoth"
monster.experience = 130600
monster.outfit = {
	lookType = 1665,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}


monster.health = 180000
monster.maxHealth = 180000
monster.race = "undead"
monster.corpse = 6068
monster.speed = 800
monster.manaCost = 0
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
	staticAttackChance = 70,
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
	{ text = "The stars align, but the truth eludes your grasp.", yell = false },
	{ text = "Whispers of the void spiral into endless chaos.", yell = false },
	{ text = "The boundaries of existence blur as reality fractures.", yell = false },
	{ text = "You tread on fragile ground, where time and space unravel.", yell = false },
	{ text = "Embrace the unknown, for knowledge brings only despair.", yell = false },
}


monster.loot = {
	{ id = 3043, chance = 11000, maxCount = 5 }, -- Crystal Coin
	{ id = 43892, chance = 800 }, -- Eclipse dweberries
	{ id = 43964, chance = 80 },   -- Ichgahal's fungal infestation
	{ id = 43966, chance = 800 },  -- Chagorz igneous obsidian
	{ id = 43855, chance = 900 },   -- darklight heart
	{ id = 43967, chance = 90 },   -- Vemiath's infused basalt
	{ name = "small diamond", chance = 20000 },
	{ name = "blue gem", chance = 20000 },
	{ name = "crystal coin", chance = 64000 },
}




monster.attacks = {
    { name = "melee", interval = 2000, chance = 100, minDamage = -440, maxDamage = -4510 },
    { name = "combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -1500, maxDamage = -2400, length = 8, spread = 3, effect = CONST_ME_EXPLOSIONAREA, target = false },
    { name = "combat", interval = 2000, chance = 5, type = COMBAT_DEATHDAMAGE, minDamage = -1520, maxDamage = -3300, length = 8, spread = 3, effect = CONST_ME_EXPLOSIONAREA, target = false },
    { name = "combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -1520, maxDamage = -3300, radius = 4, effect = CONST_ME_EXPLOSIONAREA, target = false },
    { name = "combat", interval = 2000, chance = 10, type = COMBAT_EARTHDAMAGE, minDamage = -1966, maxDamage = -2320, length = 8, spread = 2, effect = CONST_ME_CARNIPHILA, target = false },
    { name = "combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -525, maxDamage = -1950, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_SMALLCLOUDS, target = false },
    { name = "speed", interval = 2000, chance = 25, speedChange = -999, range = 7, radius = 4, shootEffect = CONST_ANI_POISON, effect = CONST_ME_GREEN_RINGS, target = true, duration = 25000 },

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
