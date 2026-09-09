local mType = Game.createMonsterType("Sphere")
local monster = {}

monster.description = "a Sphere"
monster.experience = 60000
monster.outfit = {
	lookType = 979,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}



monster.health = 140000
monster.maxHealth = 140000
monster.race = "fire"
monster.corpse = 6068
monster.speed = 6068
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
	staticAttackChance = 98,
	targetDistance = 1,
	runHealth = 1,
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
    { text = "You're in the grasp of malevolence.", yell = false },
    { text = "Despair is your only companion.", yell = false },
    { text = "A symphony of horror surrounds you.", yell = false },
}

monster.loot = {
	{ name = "blue tome", chance = 20000 },
	{ name = "teddy bear", chance = 12500 },
	{ id = 3007, chance = 8333 }, -- crystal ring
	{ name = "white pearl", chance = 25000, maxCount = 15 },
	{ name = "black pearl", chance = 11111, maxCount = 14 },
	{ name = "small diamond", chance = 25000, maxCount = 5 },
	{ name = "small sapphire", chance = 25000, maxCount = 10 },
	{ name = "small emerald", chance = 25000, maxCount = 10 },
	{ name = "small amethyst", chance = 25000, maxCount = 17 },
	{ name = "talon", chance = 12500, maxCount = 7 },
	{ name = "platinum coin", chance = 100000, maxCount = 69 },
	{ name = "green gem", chance = 20000 },
	{ name = "blue gem", chance = 14285 },
	{ name = "might ring", chance = 12500 },
	{ name = "gold ring", chance = 20000 },
	{ name = "golden armor", chance = 8333 },
	{ name = "magic plate armor", chance = 8333 },
	{ name = "demon shield", chance = 12500 },
	{ name = "demon horn", chance = 33333, maxCount = 2 },
	{ name = "demonic essence", chance = 100000 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -3286 },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_PHYSICALDAMAGE, minDamage = -3575, maxDamage = -5750, range = 7, radius = 6, effect = CONST_ME_HITAREA, target = false },
	{ name = "combat", interval = 3000, chance = 34, type = COMBAT_PHYSICALDAMAGE, minDamage = -4480, maxDamage = -5750, range = 7, radius = 1, shootEffect = CONST_ANI_WHIRLWINDSWORD, target = true },
	{ name = "combat", interval = 4000, chance = 30, type = COMBAT_ENERGYDAMAGE, minDamage = -3550, maxDamage = -5200, length = 8, spread = 3, effect = CONST_ME_MORTAREA, target = false },
	{ name = "combat", interval = 3000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -3500, maxDamage = -5720, range = 14, radius = 5, effect = CONST_ME_POFF, target = false },
	{ name = "combat", interval = 4000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -3150, maxDamage = -5975, range = 7, radius = 13, effect = CONST_ME_SUPREME_CUBE, target = false },
	{ name = "combat", interval = 4000, chance = 18, type = COMBAT_PHYSICALDAMAGE, minDamage = -4300, maxDamage = -5500, radius = 14, effect = CONST_ME_FATAL, target = false },
	{ name = "combat", interval = 3000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -2300, maxDamage = -5125, range = 7, radius = 4, effect = CONST_ME_WATER_DROP, target = false },
}

monster.defenses = {
	defense = 55,
	armor = 44,
	mitigation = 1.74,
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 180, maxDamage = 250, effect = CONST_ME_MAGIC_BLUE, target = false },
	{ name = "speed", interval = 2000, chance = 15, speedChange = 320, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000 },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 30 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 20 },
	{ type = COMBAT_FIREDAMAGE, percent = 20 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 20 },
	{ type = COMBAT_HOLYDAMAGE, percent = -5 },
	{ type = COMBAT_DEATHDAMAGE, percent = 10 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
