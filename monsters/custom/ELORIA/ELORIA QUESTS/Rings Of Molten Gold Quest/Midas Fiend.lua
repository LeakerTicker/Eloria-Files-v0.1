local mType = Game.createMonsterType("Midas Fiend")
local monster = {}

monster.description = "Midas Fiend"
monster.experience = 140600
monster.outfit = {
	lookType = 1999,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.health = 205000
monster.maxHealth = 205000
monster.race = "fire"
monster.corpse = 48109
monster.speed = 450
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 40,
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

monster.voices = {
	interval = 5000,
	chance = 20,
	{ text = "Gold is mine!", yell = true },
	{ text = "Gold tastes sweet…", yell = true },
	{ text = "Your eyes crave gold…", yell = true },
}

monster.loot = {
	{ name = "green crystal coin", chance = 100000 }, -- green crystal coin - wartość 10k
    { name = "platinum coin", chance = 100000, maxCount = 70 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, skill = 230, attack = 210 },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_DEATHDAMAGE, minDamage = -1800, maxDamage = -1900, radius = 9, effect = CONST_ME_MORTAREA, target = false },
	{ name = "strength", interval = 2000, chance = 30, minDamage = -1600, maxDamage = -2450, radius = 5, effect = CONST_ME_HITAREA, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -2300, maxDamage = -3800, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_MANADRAIN, minDamage = -2600, maxDamage = -3700, radius = 10, effect = CONST_ME_ENERGYAREA, target = false },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_ENERGYDAMAGE, minDamage = -2400, maxDamage = -4800, length = 8, spread = 0, effect = CONST_ME_MAGIC_RED, target = false },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_LIFEDRAIN, minDamage = -2600, maxDamage = -3200, radius = 14, effect = CONST_ME_MAGIC_GREEN, target = false },
}

monster.defenses = {
	defense = 145,
	armor = 188,
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
