local mType = Game.createMonsterType("Bloodhound Knight")
local monster = {}

monster.description = "a bloodhound knight"
monster.experience = 82300  -- Buffed experience (original: 4100)
monster.outfit = {
	lookType = 1217,

}



monster.health = 80000  -- Buffed health (original: 2900)
monster.maxHealth = 80000  -- Buffed max health (original: 2900)
monster.race = "blood"
monster.corpse = 111
monster.speed = 400
monster.manaCost = 0
monster.raceId = 2342

monster.summon = {
	maxSummons = 1,
	summons = {
		{ name = "exile solider", chance = 100, interval = 2000, count = 1 },
		{ name = "exile solider", chance = 100, interval = 2000, count = 1 },
	},
}

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
	staticAttackChance = 80,
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
	{ text = "May the flames consume you!", yell = false },
	{ text = "Encounter the flames of destiny!", yell = false },
	{ text = "Fire and destruction!", yell = false },
}

monster.loot = {
	{ name = "crystal coin", chance = 64000 },
	{ name = "small diamond", chance = 20000 },
	{ name = "emerald bangle", chance = 2200 },
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
	{ name = "melee", interval = 2000, chance = 100, minDamage = -900, maxDamage = -1673 },  -- Buffed max damage (original: -269)
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = -966, maxDamage = -775, range = 7, target = false },  -- Buffed max damage (original: -70)
	{ name = "firefield", interval = 2000, chance = 10, range = 7, radius = 1, shootEffect = CONST_ANI_FIRE, target = true },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -975, maxDamage = -900, length = 8, spread = 3, effect = CONST_ME_PURPLEENERGY, target = false },  -- Buffed min and max damage (original: -50, -200)
	{ name = "energy strike", interval = 2000, chance = 10, minDamage = -1215, maxDamage = -1550, range = 1, target = false },  -- Buffed min and max damage (original: -10, -100)
	{ name = "speed", interval = 2000, chance = 15, speedChange = -200, radius = 1, effect = CONST_ME_MAGIC_RED, target = true, duration = 45000 },  -- Buffed duration (original: 30000)
}

monster.defenses = {
	defense = 55,
	armor = 48,
	mitigation = 1.46,
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 75, maxDamage = 150, effect = CONST_ME_MAGIC_BLUE, target = false },  -- Buffed min and max damage (original: 50, 100)
	{ name = "speed", interval = 2000, chance = 15, speedChange = 480, effect = CONST_ME_MAGIC_RED, target = false, duration = 6000 },  -- Buffed speed change and duration (original: 320, 5000)
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = 0 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -0 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = 0 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = true },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)