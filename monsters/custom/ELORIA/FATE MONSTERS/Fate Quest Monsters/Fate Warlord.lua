local mType = Game.createMonsterType("Fate Warlord")
local monster = {}

monster.description = "Fate Warlord"
monster.experience = 3000000
monster.outfit = {
	lookType = 2739,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.health = 2110000
monster.maxHealth = 2110000
monster.race = "fire"
monster.corpse = 6068
monster.speed = 930
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 15,
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
	staticAttackChance = 95,
	targetDistance = 1,
	runHealth = 3000,
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
	{ text = "YOU WILL ALL BURN!", yell = true },
	{ text = "THE DAY OF RECKONING IS AT HAND!", yell = true },
	{ text = "FATE TO THE POWER OF THE RUTHLESS SEVEN!", yell = true },
}

monster.loot = {

}

monster.attacks = {
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -6000, maxDamage = -9930, range = 7, shootEffect = CONST_ANI_SPEAR, target = false },
	{ name = "condition", type = CONDITION_FIRE, interval = 1000, chance = 25, minDamage = -2800, maxDamage = -17200, range = 2, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_BLOCKHIT, target = false },
	{ name = "combat", interval = 1000, chance = 30, type = COMBAT_PHYSICALDAMAGE, minDamage = -5250, maxDamage = -8750, radius = 6, effect = CONST_ME_EXPLOSIONHIT, target = false },
	{ name = "combat", interval = 1000, chance = 50, type = COMBAT_FIREDAMAGE, minDamage = -5200, maxDamage = -18500, radius = 5, effect = CONST_ME_BLOCKHIT, target = false },
	{ name = "firefield", interval = 1000, chance = 30, radius = 8, effect = CONST_ME_EXPLOSIONHIT, target = false },
	{ name = "combat", interval = 1000, chance = 30, type = COMBAT_FIREDAMAGE, minDamage = -5350, maxDamage = -9850, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true },
	{ name = "combat", interval = 1000, chance = 35, type = COMBAT_FIREDAMAGE, minDamage = -5500, maxDamage = -9000, length = 8, spread = 3, effect = CONST_ME_EXPLOSIONHIT, target = false },
	{ name = "combat", interval = 1000, chance = 30, type = COMBAT_FIREDAMAGE, minDamage = -5300, maxDamage = -9500, length = 8, spread = 3, effect = CONST_ME_FIREAREA, target = false },
}

monster.defenses = {
	defense = 150,
	armor = 165,
	--	mitigation = ???,
	{ name = "combat", interval = 1000, chance = 25, type = COMBAT_HEALING, minDamage = 5000, maxDamage = 10000, effect = CONST_ME_MAGIC_BLUE, target = false },
	{ name = "combat", interval = 1000, chance = 25, type = COMBAT_HEALING, minDamage = 2000, maxDamage = 3000, effect = CONST_ME_MAGIC_BLUE, target = false },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 30 },
	{ type = COMBAT_EARTHDAMAGE, percent = 100 },
	{ type = COMBAT_FIREDAMAGE, percent = 20 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 0 },
	{ type = COMBAT_HOLYDAMAGE, percent = -25 },
	{ type = COMBAT_DEATHDAMAGE, percent = 50 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
