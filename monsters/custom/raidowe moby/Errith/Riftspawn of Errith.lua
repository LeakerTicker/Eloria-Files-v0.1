local mType = Game.createMonsterType("Riftspawn of Errith")
local monster = {}

monster.description = "a Riftspawn of Errith"
monster.experience = 310000
monster.outfit = {
	lookType = 1337,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.health = 255000
monster.maxHealth = 255000
monster.race = "undead"
monster.corpse = 5972
monster.speed = 860
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8,
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
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.loot = {

}


monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -400, maxDamage = -1705 },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_DEATHDAMAGE, minDamage = -2699, maxDamage = -3625, range = 7, radius = 4, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYHIT, target = true },
	{ name = "combat", interval = 2000, chance = 35, type = COMBAT_ENERGYDAMAGE, minDamage = -2199, maxDamage = -3625, length = 9, spread = 3, effect = CONST_ME_ELECTRICALSPARK, target = false },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_ENERGYDAMAGE, minDamage = -2199, maxDamage = -3625, length = 9, spread = 3, effect = CONST_ME_BLUE_GHOST, target = false },
	{ name = "condition", type = CONDITION_ENERGY, interval = 2000, chance = 25, minDamage = -3000, maxDamage = -4400, radius = 5, effect = CONST_ME_FATAL, target = false },
	{ name = "condition", type = CONDITION_BLEEDING, interval = 2000, chance = 30, minDamage = -2000, maxDamage = -2000, length = 9, spread = 3, effect = CONST_ME_ELECTRICALSPARK, target = false },
}



monster.defenses = {
	defense = 70,
	armor = 70,
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
	{ type = "outfit", condition = true },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
