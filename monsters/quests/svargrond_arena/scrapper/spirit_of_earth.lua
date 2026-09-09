local mType = Game.createMonsterType("Spirit of Earth")
local monster = {}

monster.description = "a spirit of earth"
monster.experience = 25800
monster.outfit = {
	lookType = 12,
	lookHead = 52,
	lookBody = 99,
	lookLegs = 52,
	lookFeet = 91,
	lookAddons = 0,
	lookMount = 0,
}

monster.health = 25000
monster.maxHealth = 25000
monster.race = "undead"
monster.corpse = 7893
monster.speed = 90
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
	canWalkOnFire = false,
	canWalkOnPoison = true,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "Show your strength ... or perish.", yell = false },
	{ text = "You're so soft and vulnerable.", yell = false },
	{ text = "When the dust settles there will only be one.", yell = false },
}

monster.loot = {}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1500 },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -60, maxDamage = -200, range = 7, radius = 4, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = false },
	{ name = "condition", type = CONDITION_POISON, interval = 1000, chance = 11, minDamage = -330, maxDamage = -330, length = 5, spread = 3, effect = CONST_ME_POISONAREA, target = false },
	{ name = "combat", interval = 3000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -300, maxDamage = -900, length = 8, spread = 3, effect = CONST_ME_MORTAREA, target = false },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -500, maxDamage = -1600, range = 4, radius = 1, shootEffect = CONST_ANI_DEATH, effect = CONST_ME_MORTAREA, target = false },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -150, maxDamage = -600, length = 8, spread = 3, effect = CONST_ME_FIREAREA, target = false },
	{ name = "combat", interval = 1000, chance = 8, type = COMBAT_PHYSICALDAMAGE, minDamage = -50, maxDamage = -560, radius = 6, effect = CONST_ME_GROUNDSHAKER, target = false },
}

monster.defenses = {
	defense = 54,
	armor = 48,
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
