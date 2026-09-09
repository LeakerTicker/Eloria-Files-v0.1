local mType = Game.createMonsterType("Bone-Sage of the First Age")
local monster = {}

monster.description = "a Bone-Sage of the First Age"
monster.experience = 161600
monster.outfit = {
	lookType = 736,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.health = 165000
monster.maxHealth = 165000
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


monster.loot = {

}

monster.attacks = {
    { name = "melee", interval = 2000, chance = 100, minDamage = -2250, maxDamage = -3765 },  -- 1500 to 2510 increased by 50%
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_ENERGYDAMAGE, minDamage = -4028, maxDamage = -5020, radius = 4, effect = CONST_ME_GROUNDSHAKER, target = false },
    { name = "combat", interval = 2000, chance = 25, type = COMBAT_ICEDAMAGE, minDamage = -4452, maxDamage = -6001, range = 7, shootEffect = CONST_ANI_ICE, effect = CONST_ME_GIANTICE, target = false },  -- 3635 to 4914 increased by 50%
}

monster.defenses = {
	defense = 55,
	armor = 44,
	mitigation = 1.74,
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 180, maxDamage = 1250, effect = CONST_ME_MAGIC_BLUE, target = false },
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
