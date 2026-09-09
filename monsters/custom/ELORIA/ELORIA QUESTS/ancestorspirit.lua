local mType = Game.createMonsterType("Ancestral Spirit")
local monster = {}

monster.description = "a ancestral Spirit"
monster.experience = 25300
monster.outfit = {
	lookType = 1680,
	lookHead = 0,
	lookBody = 116,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 2,
	lookMount = 0,
}



monster.health = 88000
monster.maxHealth = 88000
monster.race = "blood"
monster.corpse = 111
monster.speed = 170
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10,
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
	{ text = "Your ancestors will be your guiding stars!", yell = true },
	{ text = "Ancestral wisdom will light your path!", yell = true },
	{ text = "Embrace the legacy of your ancestors!", yell = true },
}

monster.loot = {
	{ name = "emerald bangle", chance = 2200 },
	{ id = 3019, chance = 190 }, -- demonbone amulet
	{ name = "small diamond", chance = 1400 },
	{ name = "gold coin", chance = 50000, maxCount = 100 },
	{ name = "wand of inferno", chance = 9450 },
	{ name = "fire sword", chance = 4140 },
	{ name = "fire axe", chance = 440 },
	{ name = "demonic essence", chance = 14500 },
	{ name = "magma legs", chance = 682 },
	{ name = "magma coat", chance = 380 },
	{ name = "fiery heart", chance = 9570 },
	{ name = "piece of hellfire armor", chance = 5060 },
	{ name = "eternal flames", chance = 380 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -300, maxDamage = -920 },
	{ name = "firefield", interval = 2000, chance = 10, range = 7, radius = 3, shootEffect = CONST_ANI_FIRE, target = false },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -392, maxDamage = -1500, length = 8, spread = 3, effect = CONST_ME_FIREATTACK, target = false },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -60, maxDamage = -330, range = 7, radius = 3, effect = CONST_ME_HITBYFIRE, target = false },
	{ name = "hellfire fighter soulfire", interval = 2000, chance = 15, target = false },
}

monster.defenses = {
	defense = 60,
	armor = 70,
	mitigation = 1.74,
	{ name = "speed", interval = 2000, chance = 15, speedChange = 520, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000 },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 400, maxDamage = 900, effect = CONST_ME_MAGIC_BLUE, target = false },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 30 },
	{ type = COMBAT_ENERGYDAMAGE, percent = -10 },
	{ type = COMBAT_EARTHDAMAGE, percent = 20 },
	{ type = COMBAT_FIREDAMAGE, percent = 30 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 10 },
	{ type = COMBAT_HOLYDAMAGE, percent = -5 },
	{ type = COMBAT_DEATHDAMAGE, percent = 0 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
