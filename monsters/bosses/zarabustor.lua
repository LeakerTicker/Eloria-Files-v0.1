local mType = Game.createMonsterType("Zarabustor")
local monster = {}

monster.description = "zarabustor"
monster.experience = 10000000
monster.outfit = {
	lookType = 2013,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.health = 15000000
monster.maxHealth = 15000000
monster.race = "blood"
monster.corpse = 18273
monster.speed = 510
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10,
}

monster.bosstiary = {
	bossRaceId = 421,
	bossRace = RARITY_NEMESIS,
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
	staticAttackChance = 90,
	targetDistance = 4,
	runHealth = 900,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.summon = {
	maxSummons = 6,
	summons = {
		{ name = "Ashen Tempest", chance = 100, interval = 2000, count = 2 },
		{ name = "Voice Of Ruin", chance = 100, interval = 2000, count = 2 },
	},
}

monster.voices = {
	interval = 5000,
	chance = 50,
	{ text = "I enjoy killing weak people like you..", yell = false },
	{ text = "Time to test my newest spells!", yell = false },
	{ text = "YOU WILL DISAPPEAR LIKE ME IN A MOMENT!", yell = false },
}

monster.loot = {
    { id = 43949, chance = 100500, minCount = 1, maxCount = 3 },  -- Promotion Scroll
	{ name = "greater sage gem", chance = 55000, minCount = 1, maxCount = 2 }, 
	{ name = "greater mystic gem", chance = 55000, minCount = 1, maxCount = 2 },  
	{ name = "greater marksman gem", chance = 55000, minCount = 1, maxCount = 2 }, 
	{ name = "greater guardian gem", chance = 55000, minCount = 1, maxCount = 2 }, 
	{ name = "greater spiritualist gem", chance = 55000, minCount = 1, maxCount = 2 }, 
    { id = 3007, chance = 100000 }, -- crystal ring
    { id = 6300, chance = 60000 }, -- death ring
    { id = 3439, chance = 1000 }, -- phoenix shield
	{ id = 49393, chance = 1000000, minCount = 150, maxCount = 350 }, -- reward token
    { id = 49435, chance = 1000000, minCount = 100, maxCount = 1000 }, -- hunting task token
    { id = 49921, chance = 1000000, minCount = 1, maxCount = 5 },  -- Boss Token
    { id = 19391, chance = 1000 }, -- furious frock
    { id = 43898, chance = 8000 },  -- Grand Sanguine Bag
    { id = 43895, chance = 55050 },  -- Bag you covet - zwykly
    { id = 39546, chance = 7320 },  -- Primal Bag
    { id = 34109, chance = 8000 },  -- Bag you desire
    { id = 37053, chance = 4000 },  -- Bonelord Tome
    { id = 55014, chance = 200 },  -- Unicorn Backpack
	{ id = 46290, chance = 4150}, -- chronobag
	{ id = 46302, chance = 4151}, -- mistery bag
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -3400, maxDamage = -5300 },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -2400, maxDamage = -3850, range = 7, radius = 3, shootEffect = CONST_ANI_BURSTARROW, effect = CONST_ME_FIREAREA, target = true },
	{ name = "firefield", interval = 2000, chance = 40, range = 7, radius = 3, shootEffect = CONST_ANI_FIRE, target = true },
	{ name = "combat", interval = 2000, chance = 55, type = COMBAT_PHYSICALDAMAGE, minDamage = -2250, maxDamage = -3250, range = 7, shootEffect = CONST_ANI_ENERGY, target = false },
	{ name = "combat", interval = 2000, chance = 60, type = COMBAT_ENERGYDAMAGE, minDamage = -2630, maxDamage = -4950, length = 8, spread = 0, effect = CONST_ME_BIGCLOUDS, target = false },
	{ name = "combat", interval = 2000, chance = 70, type = COMBAT_MANADRAIN, minDamage = -2250, maxDamage = -4850, range = 7, target = false },
	{ name = "speed", interval = 2000, chance = 15, speedChange = -330, range = 7, effect = CONST_ME_MAGIC_RED, target = false, duration = 20000 },
}

monster.defenses = {
	defense = 20,
	armor = 20,
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_HEALING, minDamage = 1000, maxDamage = 2250, effect = CONST_ME_MAGIC_BLUE, target = false },
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
