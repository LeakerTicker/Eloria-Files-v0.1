local mType = Game.createMonsterType("Gnorre Chyllson")
local monster = {}

monster.description = "Gnorre Chyllson"
monster.experience = 34000
monster.outfit = {
	lookType = 679,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.health = 28000
monster.maxHealth = 28000
monster.race = "blood"
monster.corpse = 21910
monster.speed = 185
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

monster.summon = {
	maxSummons = 8,
	summons = {
		{ name = "walker", chance = 30, interval = 2000, count = 2 },
		{ name = "glooth trasher", chance = 30, interval = 2000, count = 2 },
		{ name = "glooth smasher", chance = 30, interval = 2000, count = 2 },
		{ name = "glooth slasher", chance = 30, interval = 2000, count = 2 },
	},
}

monster.voices = {
	interval = 5000,
	chance = 40,
	{ text = "I am like the merciless northwind.", yell = false },
	{ text = "Snow will be your death shroud.", yell = false },
	{ text = "Feel the wrath of father chyll!", yell = false },
}

monster.loot = {}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, skill = 180, attack = 200 },
	{ name = "combat", interval = 2000, chance = 31, type = COMBAT_ENERGYDAMAGE, minDamage = -250, maxDamage = -500, radius = 8, effect = CONST_ME_ENERGYHIT, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_MANADRAIN, minDamage = -450, maxDamage = -1500, length = 8, spread = 0, effect = CONST_ME_TELEPORT, target = false },
	{ name = "combat", interval = 2000, chance = 30, type = COMBAT_FIREDAMAGE, minDamage = -450, maxDamage = -500, length = 8, spread = 0, effect = CONST_ME_FIREATTACK, target = false },
}

monster.defenses = {
	defense = 45,
	armor = 40,
	{ name = "speed", interval = 2000, chance = 13, speedChange = 460, effect = CONST_ME_MAGIC_RED, target = false, duration = 4000 },
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
