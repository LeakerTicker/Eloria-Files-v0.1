local mType = Game.createMonsterType("Doom Bringer")
local monster = {}

monster.description = "a Doom Bringer"
monster.experience = 201600
monster.outfit = {
	lookType = 1951,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}


monster.health = 365000
monster.maxHealth = 365000
monster.race = "undead"
monster.corpse = 6068
monster.speed = 750
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
	chance = 20,
	{ text = "Death is only the beginning of your suffering!", yell = false },
	{ text = "I guard the gates of damnation… you will never pass!", yell = false },
	{ text = "Look into my eyes… despair and darkness will follow!", yell = false },
}

monster.loot = {
	       ---Money making
	{ name = "red crystal coin", chance = 100000, maxCount = 2 }, -- red crystal coin - wartość 20k
	{ name = "pink crystal coin", chance = 15000 }, -- pink crystal coin - wartość 30k
	{ name = "green crystal coin", chance = 7000 }, -- green crystal coin - wartość 10k
}

monster.attacks = {
    { name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -2265 },  -- 1510 increased by 50%
    { name = "combat", interval = 2000, chance = 10, type = COMBAT_EARTHDAMAGE, minDamage = -4292, maxDamage = -5180, range = 7, shootEffect = CONST_ANI_EARTH, effect = CONST_ME_DRAWBLOOD, target = true }, 
    { name = "combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -4542, maxDamage = -5840, radius = 4, effect = CONST_ME_MORTAREA, target = false }, 
    { name = "combat", interval = 2000, chance = 10, type = COMBAT_EARTHDAMAGE, minDamage = -4152, maxDamage = -5171, length = 5, radius = 2, effect = CONST_ME_POISONAREA, target = false }, 
}

monster.defenses = {
	defense = 55,
	armor = 44,
	mitigation = 1.74,
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 180, maxDamage = 1250, effect = CONST_ME_MAGIC_BLUE, target = false },
	{ name = "speed", interval = 2000, chance = 15, speedChange = 320, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000 },
}

monster.elements = {
		{ type = COMBAT_PHYSICALDAMAGE, percent = -5 },
		{ type = COMBAT_ENERGYDAMAGE, percent = 5 },
		{ type = COMBAT_EARTHDAMAGE, percent = 5 },
		{ type = COMBAT_FIREDAMAGE, percent = -10 },
		{ type = COMBAT_LIFEDRAIN, percent = 0 },
		{ type = COMBAT_MANADRAIN, percent = 0 },
		{ type = COMBAT_DROWNDAMAGE, percent = 0 },
		{ type = COMBAT_ICEDAMAGE, percent = -10 },
		{ type = COMBAT_HOLYDAMAGE, percent = -10 },
		{ type = COMBAT_DEATHDAMAGE, percent = -25 },
}
monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
