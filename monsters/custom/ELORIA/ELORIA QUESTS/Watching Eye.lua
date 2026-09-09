local mType = Game.createMonsterType("Watching Eye")
local monster = {}

monster.description = "a Watching Eye"
monster.experience = 66000
monster.outfit = {
	lookType = 926,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}




monster.health = 88200
monster.maxHealth = 88200
monster.race = "undead"
monster.corpse = 6068
monster.speed = 700
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
    { text = "Whispers in the darkness.", yell = false },
    { text = "A shadow looms over you.", yell = false },
}

monster.loot = {
	{ name = "gold coin", chance = 60000, maxCount = 100 },
	{ name = "gold coin", chance = 60000, maxCount = 100 },
	{ name = "small emerald", chance = 9690, maxCount = 5 },
	{ name = "small amethyst", chance = 7250, maxCount = 5 },
	{ name = "small ruby", chance = 7430, maxCount = 5 },
	{ name = "small topaz", chance = 7470, maxCount = 5 },
	{ name = "demonic essence", chance = 14630 },
	{ name = "talon", chance = 3430 },
	{ name = "platinum coin", chance = 90540, maxCount = 8 },
	{ name = "platinum amulet", chance = 680 },
	{ name = "gold ring", chance = 1050 },
	{ name = "giant sword", chance = 1980 },
	{ name = "ice rapier", chance = 1550 },
	{ name = "fire axe", chance = 4030 },
	{ name = "devil helmet", chance = 1180 },
	{ name = "golden legs", chance = 440 },
	{ name = "magic plate armor", chance = 130 },
	{ name = "mastermind shield", chance = 480 },
	{ name = "demon shield", chance = 740 },
	{ name = "fire mushroom", chance = 19660, maxCount = 6 },
	{ name = "demon horn", chance = 14920 },
	{ name = "demonrage sword", chance = 70 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -225 },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -1175, maxDamage = -4380, length = 8, spread = 3, effect = CONST_ME_POFF, target = false },
	{ name = "speed", interval = 2000, chance = 5, speedChange = -700, radius = 3, effect = CONST_ME_POFF, target = false, duration = 12000 },
	{ name = "speed", interval = 2000, chance = 15, speedChange = -850, length = 7, spread = 3, effect = CONST_ME_ICEATTACK, target = false, duration = 18000 },
	{ name = "combat", interval = 2000, chance = 5, type = COMBAT_ICEDAMAGE, minDamage = -2500, maxDamage = -4120, radius = 3, effect = CONST_ME_GIANTICE, target = false },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -2500, maxDamage = -4240, radius = 4, effect = CONST_ME_GIANTICE, target = true },
	{ name = "combat", interval = 2000, chance = 5, type = COMBAT_PHYSICALDAMAGE, minDamage = -2500, maxDamage = -4220, length = 1, spread = 0, effect = CONST_ME_POFF, target = false },
	{ name = "speed", interval = 2000, chance = 20, speedChange = -600, radius = 4, effect = CONST_ME_GIANTICE, target = true, duration = 12000 },
}

monster.defenses = {
	defense = 55,
	armor = 44,
	mitigation = 1.74,
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 180, maxDamage = 250, effect = CONST_ME_MAGIC_BLUE, target = false },
	{ name = "speed", interval = 2000, chance = 15, speedChange = 320, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000 },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 5 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 55 },
	{ type = COMBAT_FIREDAMAGE, percent = 15 },
	{ type = COMBAT_LIFEDRAIN, percent = 5 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 15 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = 10 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
