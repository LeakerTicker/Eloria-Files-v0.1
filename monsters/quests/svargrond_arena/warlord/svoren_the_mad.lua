local mType = Game.createMonsterType("Svoren the Mad")
local monster = {}

monster.description = "Svoren the Mad"
monster.experience = 18000
monster.outfit = {
	lookType = 1223,
	lookHead = 19,
	lookBody = 2,
	lookLegs = 94,
	lookFeet = 81,
	lookAddons = 3,
	lookMount = 0,
}

monster.health = 20000
monster.maxHealth = 20000
monster.race = "blood"
monster.corpse = 31599
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
	{ text = "No mommy NO, Leave me alone!", yell = false },
	{ text = "Not that tower again!", yell = false },
	{ text = "The cat has grown some horns!", yell = false },
	{ text = "What was I doing here again?", yell = false },
	{ text = "Are we there soon mommy?", yell = false },
	{ text = "Ah madness I embrace you!", yell = false },
}

monster.loot = {}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1000, effect = CONST_ME_DRAWBLOOD },
	{ name = "lord azaram wave", interval = 3500, chance = 50, minDamage = -360, maxDamage = -900 },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_EARTHDAMAGE, minDamage = -500, maxDamage = -1200, length = 7, spread = 0, effect = CONST_ME_STONES, target = false },
}

monster.defenses = {
	defense = 25,
	armor = 78,
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
