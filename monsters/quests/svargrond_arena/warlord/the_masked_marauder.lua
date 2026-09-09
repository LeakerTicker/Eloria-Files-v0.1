local mType = Game.createMonsterType("The Masked Marauder")
local monster = {}

monster.description = "The Masked Marauder"
monster.experience = 23500
monster.outfit = {
	lookType = 1224,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.health = 22000
monster.maxHealth = 22000
monster.race = "blood"
monster.corpse = 31611
monster.speed = 195
monster.manaCost = 0

monster.changeTarget = {
	interval = 0,
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
	staticAttackChance = 95,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = true,
	canWalkOnPoison = false,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "Didn't you leave your house door open?", yell = false },
	{ text = "Oops, your shoelaces are open!", yell = false },
	{ text = "Look! It's Ferumbras behind you!", yell = false },
	{ text = "Stop! I give up!", yell = false },
}

monster.loot = {}

monster.attacks = {
	{ name = "melee", type = COMBAT_PHYSICALDAMAGE, interval = 2000, minDamage = -300, maxDamage = -1000 },
	{ name = "combat", type = COMBAT_FIREDAMAGE, interval = 2000, chance = 15, length = 8, spread = 0, minDamage = -500, maxDamage = -1200, effect = CONST_ME_HITBYFIRE },
	{ name = "combat", type = COMBAT_LIFEDRAIN, interval = 2000, chance = 10, length = 8, spread = 0, minDamage = -600, maxDamage = -900, effect = CONST_ME_SMALLCLOUDS },
	{ name = "combat", type = COMBAT_DEATHDAMAGE, interval = 2000, chance = 30, radius = 6, minDamage = -200, maxDamage = -500, effect = CONST_ME_MORTAREA, target = false },
	{ name = "combat", type = COMBAT_DEATHDAMAGE, interval = 2000, chance = 20, length = 8, minDamage = -600, maxDamage = -1000, effect = CONST_ME_MORTAREA, target = false },
}

monster.defenses = {
	defense = 130,
	armor = 130,
	{ name = "combat", type = COMBAT_HEALING, chance = 15, interval = 2000, minDamage = 50, maxDamage = 50, effect = CONST_ME_MAGIC_BLUE },
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
