local mType = Game.createMonsterType("Corrosive Horror")
local monster = {}

monster.description = "a Corrosive Horror"
monster.experience = 150600
monster.outfit = {
	lookType = 1937,
}

monster.health = 200000
monster.maxHealth = 200000
monster.race = "undead"
monster.corpse = 6323
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
	{ text = "The smell of fear follows you.", yell = false },
	{ text = "Your soul will burn.", yell = false },
}

monster.loot = {
	{ name = "green crystal coin", chance = 100000 }, -- green crystal coin - wartość 10k
	{ name = "green crystal coin", chance = 7000 }, -- green crystal coin - wartość 10k
	{ name = "red crystal coin", chance = 20000 }, -- red crystal coin - wartość 20k
}

monster.attacks = {


	{ name = "melee", interval = 2000, chance = 100, minDamage = -0, maxDamage = -1380 }, 
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -1645, maxDamage = -2730, length = 8, spread = 3, effect = CONST_ME_SKULLVERTICAL, target = false },  -- 2350 * 0.7 = 1645, 3900 * 0.7 = 2730
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_MANADRAIN, minDamage = -350, maxDamage = -1050, length = 8, spread = 3, effect = CONST_ME_MORTAREA, target = false },  -- 500 * 0.7 = 350, 1500 * 0.7 = 1050
	{ name = "lava golem soulfire", interval = 2000, chance = 15, target = false },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_FIREDAMAGE, minDamage = -1624, maxDamage = -2765, radius = 4, effect = CONST_ME_YELLOWENERGY, target = true },  -- 2320 * 0.7 = 1624, 3950 * 0.7 = 2765
	{ name = "speed", interval = 2000, chance = 10, speedChange = -800, length = 5, spread = 3, effect = CONST_ME_BLOCKHIT, target = false, duration = 30000 },
	{ name = "combat", interval = 2000, chance = 30, type = COMBAT_FIREDAMAGE, minDamage = -1596, maxDamage = -2765, radius = 3, effect = CONST_ME_HITBYFIRE, target = false },  -- 2280 * 0.7 = 1596, 3950 * 0.7 = 2765
	
}

monster.defenses = {
	defense = 55,
	armor = 44,
	mitigation = 1.74,
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 180, maxDamage = 250, effect = CONST_ME_MAGIC_BLUE, target = false },
	{ name = "speed", interval = 2000, chance = 15, speedChange = 320, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000 },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 15 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 10 },
	{ type = COMBAT_EARTHDAMAGE, percent = -10 },
	{ type = COMBAT_FIREDAMAGE, percent = 10 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -5 },
	{ type = COMBAT_HOLYDAMAGE, percent = -10 },
	{ type = COMBAT_DEATHDAMAGE, percent = 5 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
