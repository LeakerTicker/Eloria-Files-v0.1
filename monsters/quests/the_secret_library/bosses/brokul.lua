local mType = Game.createMonsterType("Brokul")
local monster = {}

monster.description = "Brokul"
monster.experience = 33000
monster.outfit = {
	lookType = 1076,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.bosstiary = {
	bossRaceId = 1645,
	bossRace = RARITY_ARCHFOE,
}

monster.health = 30000
monster.maxHealth = 30000
monster.race = "blood"
monster.corpse = 28635
monster.speed = 105
monster.manaCost = 0



monster.changeTarget = {
	interval = 1000,
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
	rewardBoss = true,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 60,
	targetDistance = 1,
	runHealth = 60,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true,
}

monster.light = {
	level = 4,
	color = 215,
}

monster.summon = {
	maxSummons = 5,
	summons = {
		{ name = "neutral deepling warrior", chance = 70, interval = 1000, count = 5 },
	},
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{ name = "small sapphire", chance = 285004, maxCount = 10 },
	{ name = "gold coin", chance = 700000, maxCount = 60 },
	{ name = "platinum coin", chance = 800000, maxCount = 10 },
	{ name = "gold ingot", chance = 34480, maxCount = 10 },
	{ id = 46270, chance = 1500}, -- Celestius backpack
	{ name = "small diamond", chance = 49800, maxCount = 10 },
	{ name = "greater sage gem", chance = 500 },
	{ name = "greater spiritualist gem", chance = 500 },
	{ name = "greater mystic gem", chance = 500 },
	{ name = "greater marksman gem", chance = 500 },
	{ name = "greater guardian gem", chance = 500 },
	{ name = "blue gem", chance = 25000 },
	{ id = 3039, chance = 20000 }, -- red gem
	{ name = "deepling ceremonial dagger", chance = 8000 },
	{ name = "deepling fork", chance = 7000 },
	{ name = "true book of death", chance = 70000 },
	{ name = "gold token", chance = 7080 },
	{ name = "silver token", chance = 7140 },
	{ id = 49921, chance = 10000 },  -- Boss Token
	{ id = 43946, chance = 30000 },  -- Abridged Promotion Scroll
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -500 },
	{ name = "combat", interval = 2000, chance = 14, type = COMBAT_HOLYDAMAGE, minDamage = -100, maxDamage = -700, length = 8, spread = 3, effect = CONST_ME_MORTAREA, target = false },
	{ name = "combat", interval = 2000, chance = 18, type = COMBAT_PHYSICALDAMAGE, minDamage = -300, maxDamage = -700, radius = 4, effect = CONST_ME_EXPLOSIONAREA, target = false },
	{ name = "combat", interval = 2000, chance = 14, type = COMBAT_FIREDAMAGE, minDamage = -300, maxDamage = -840, length = 8, spread = 3, effect = CONST_ME_HITBYFIRE, target = false },
	{ name = "combat", interval = 2000, chance = 14, type = COMBAT_HOLYDAMAGE, minDamage = -300, maxDamage = -700, length = 8, spread = 3, effect = CONST_ME_HOLYAREA, target = false },
	{ name = "combat", interval = 2000, chance = 29, type = COMBAT_ICEDAMAGE, minDamage = -300, maxDamage = -840, range = 7, radius = 4, effect = CONST_ME_FIREAREA, target = true },
}

monster.defenses = {
	defense = 60,
	armor = 86,
	--	mitigation = ???,
	{ name = "combat", interval = 1000, chance = 20, type = COMBAT_HEALING, minDamage = 200, maxDamage = 500, effect = CONST_ME_MAGIC_BLUE, target = false },
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
