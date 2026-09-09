local mType = Game.createMonsterType("Radagon of the Golden Order")
local monster = {}

monster.description = "an radagon of the golden order"
monster.experience = 146300
monster.outfit = {
	lookType = 1656
}



monster.health = 80000
monster.maxHealth = 80000
monster.race = "blood"
monster.corpse = 6068
monster.speed = 600
monster.manaCost = 0

monster.summon = {
	maxSummons = 1,
	summons = {
		{ name = "Corrupted Diremaw", chance = 70, interval = 2000, count = 1 },
		{ name = "Wraith Caller", chance = 70, interval = 2000, count = 1 },
		{ name = "Spirit Jelly", chance = 70, interval = 2000, count = 1 },
	},
}


monster.bosstiary = {
	bossRaceId = 2633,
	bossRace = RARITY_NEMESIS,
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
	canWalkOnEnergy = false,
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


	{ id = 39037, chance = 39037, maxCount = 2 }, -- Stone


	{ name = "crystal coin", chance = 64000 },
	{ name = "gold ingot", chance = 18860 },
	{ name = "cyan crystal fragment", chance = 7430 },
	{ name = "red crystal fragment", chance = 7430 },
	{ name = "blue crystal shard", chance = 5710 },
	{ id = 8076, chance = 37500 }, -- green gem
	{ id = 25700, chance = 27500 }, -- green gem
	{ id = 8022, chance = 17500 }, -- green gem
	{ name = "small diamond", chance = 4570 },
	{ name = "blue gem", chance = 4570 },
	{ name = "green crystal fragment", chance = 3430 },
	{ name = "magma amulet", chance = 3430 },
	{ name = "mercenary sword", chance = 2860 },
	{ name = "onyx chip", chance = 2860 },
	{ name = "war axe", chance = 2860 },
	{ name = "giant sword", chance = 2860 },
	{ name = "magma boots", chance = 2290 },
	{ name = "stone skin amulet", chance = 570 },

}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -600, maxDamage = -1705 }, 
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -1435, maxDamage = -1660, range = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = false }, 
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -920, maxDamage = -1625, length = 8, effect = CONST_ME_GHOST_SMOKE, target = false }, 
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -900, maxDamage = -1615, radius = 4, effect = CONST_ME_WHITE_ENERGY_SPARK, target = false }, 
	{ name = "death chain", interval = 2000, chance = 20, minDamage = -990, maxDamage = -1242, target = true }
	
}

monster.defenses = {
	defense = 120,
	armor = 120,
	mitigation = 3.33,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 30 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = 40 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -20 },
	{ type = COMBAT_HOLYDAMAGE, percent = -25 },
	{ type = COMBAT_DEATHDAMAGE, percent = 50 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = true },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
