local mType = Game.createMonsterType("Sunforged Drake")
local monster = {}

monster.description = "a Sunforged Drake"
monster.experience = 150600
monster.outfit = {
	lookType = 1936,
}

monster.health = 100000
monster.maxHealth = 100000
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
	{ text = "Ashes to ashes.", yell = false },
	{ text = "Burn, baby! Burn!", yell = false },
}

monster.loot = {

	{ name = "green crystal coin", chance = 100000 }, -- green crystal coin - wartość 10k
	{ name = "green crystal coin", chance = 7000 }, -- green crystal coin - wartość 10k
	{ name = "red crystal coin", chance = 20000 }, -- red crystal coin - wartość 20k

}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -2275 }, 
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_ICEDAMAGE, minDamage = -1698, maxDamage = -3285, range = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_WATERSPLASH, target = true }, 
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -1642, maxDamage = -3210, range = 7, radius = 3, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_MANADRAIN, minDamage = -375, maxDamage = -875, range = 7, radius = 3, shootEffect = CONST_ANI_ENERGYBALL, effect = CONST_ME_SMALLCLOUDS, target = true },  
	{ name = "combat", interval = 2000, chance = 22, type = COMBAT_FIREDAMAGE, minDamage = -1837, maxDamage = -2975, length = 8, spread = 3, effect = CONST_ME_FIREAREA, target = false },  
	
	
}

monster.defenses = {
	defense = 55,
	armor = 44,
	mitigation = 1.74,
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 180, maxDamage = 250, effect = CONST_ME_MAGIC_BLUE, target = false },
	{ name = "speed", interval = 2000, chance = 15, speedChange = 320, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000 },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 10 },
	{ type = COMBAT_ENERGYDAMAGE, percent = -15 },
	{ type = COMBAT_EARTHDAMAGE, percent = -5 },
	{ type = COMBAT_FIREDAMAGE, percent = 10 },
	{ type = COMBAT_LIFEDRAIN, percent = 20 },
	{ type = COMBAT_MANADRAIN, percent = 20 },
	{ type = COMBAT_DROWNDAMAGE, percent = 20 },
	{ type = COMBAT_ICEDAMAGE, percent = -15 },
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
