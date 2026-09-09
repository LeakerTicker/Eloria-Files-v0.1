local mType = Game.createMonsterType("Crimson Executor")
local monster = {}

monster.description = "Crimson Executor"
monster.experience = 3900000
monster.outfit = {
	lookType = 4041,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.health = 2743000
monster.maxHealth = 2743000
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
	{ text = "YOUR BLOOD WILL PAINT THESE HALLS!", yell = true },
	{ text = "I HAVE EXECUTED THOUSANDS — YOU ARE NOTHING!", yell = true },
	{ text = "KNEEL BEFORE THE CRIMSON BLADE!", yell = true },
}

monster.loot = {}

-- Fate Warlord base +30%, fire/physical theme, remixed visuals
monster.attacks = {
	{ name = "combat",    interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -7800,  maxDamage = -12909, range = 7, shootEffect = CONST_ANI_BOLT, effect = CONST_ME_HITAREA, target = false },
	{ name = "condition", type = CONDITION_FIRE,        interval = 1000, chance = 25, minDamage = -3640,  maxDamage = -22360, range = 2, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREATTACK, target = false },
	{ name = "combat",    interval = 1000, chance = 30, type = COMBAT_PHYSICALDAMAGE, minDamage = -6825,  maxDamage = -11375, radius = 6, effect = CONST_ME_HITAREA, target = false },
	{ name = "combat",    interval = 1000, chance = 50, type = COMBAT_FIREDAMAGE,     minDamage = -6760,  maxDamage = -24050, radius = 5, effect = CONST_ME_EXPLOSIONAREA, target = false },
	{ name = "firefield", interval = 1000, chance = 30, radius = 8, effect = CONST_ME_EXPLOSIONHIT, target = false },
	{ name = "combat",    interval = 1000, chance = 30, type = COMBAT_FIREDAMAGE,     minDamage = -6955,  maxDamage = -12805, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_EXPLOSIONHIT, target = true },
	{ name = "combat",    interval = 1000, chance = 35, type = COMBAT_FIREDAMAGE,     minDamage = -7150,  maxDamage = -11700, length = 8, spread = 3, effect = CONST_ME_FIREAREA, target = false },
	{ name = "combat",    interval = 1000, chance = 30, type = COMBAT_FIREDAMAGE,     minDamage = -6890,  maxDamage = -12350, length = 8, spread = 3, effect = CONST_ME_HITAREA, target = false },
}

monster.defenses = {
	defense = 150,
	armor = 165,
	{ name = "combat", interval = 1000, chance = 25, type = COMBAT_HEALING, minDamage = 5000, maxDamage = 10000, effect = CONST_ME_MAGIC_BLUE, target = false },
	{ name = "combat", interval = 1000, chance = 25, type = COMBAT_HEALING, minDamage = 2000, maxDamage = 3000,  effect = CONST_ME_MAGIC_BLUE, target = false },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE,   percent = 30 },
	{ type = COMBAT_EARTHDAMAGE,    percent = 100 },
	{ type = COMBAT_FIREDAMAGE,     percent = 20 },
	{ type = COMBAT_LIFEDRAIN,      percent = 0 },
	{ type = COMBAT_MANADRAIN,      percent = 0 },
	{ type = COMBAT_DROWNDAMAGE,    percent = 0 },
	{ type = COMBAT_ICEDAMAGE,      percent = 0 },
	{ type = COMBAT_HOLYDAMAGE,     percent = -25 },
	{ type = COMBAT_DEATHDAMAGE,    percent = 50 },
}

monster.immunities = {
	{ type = "paralyze",  condition = true },
	{ type = "outfit",    condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed",     condition = false },
}

mType:register(monster)
