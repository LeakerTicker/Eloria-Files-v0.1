local mType = Game.createMonsterType("Banshee of the Deep Hell")
local monster = {}

monster.description = "Banshee of the Deep Hell"
monster.experience = 115000
monster.outfit = {
	lookType = 2961,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.health = 14000000
monster.maxHealth = 14000000
monster.race = "blood"
monster.corpse = 6019
monster.speed = 835
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10,
}

monster.bosstiary = {
	bossRaceId = 2656,
	bossRace = RARITY_NEMESIS,
}

monster.strategiesTarget = {
	nearest = 5,
	health = 5,
	damage = 85,
	random = 5,
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
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 0,
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
	maxSummons = 4,
	summons = {
		{ name = "Velmora Nightveil", chance = 100, interval = 1000, count = 4 },
	},
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "MUHAHA!", yell = false },
	{ text = "Back in black!", yell = false },
	{ text = "Die!", yell = false },
	{ text = "Dieeee!", yell = false },
	{ text = "Caaarnaaage!", yell = false },
	{ text = "Ahhhhrrrr!", yell = false },
}

monster.loot = {
	{ id = 3031, chance = 100000, maxCount = 200 }, -- gold coin
	{ id = 48238, chance = 5000, minCount = 1, maxCount = 1 }, -- Stamina Refill
	{ id = 3007, chance = 100000 }, -- crystal ring
	{ id = 6300, chance = 60000 }, -- death ring
	{ id = 3439, chance = 1000 }, -- phoenix shield
	{ id = 19391, chance = 1000 }, -- furious frock
	{ id = 46274, chance = 1500}, -- Voltagor backpack
	{ id = 43898, chance = 8000 },  -- Grand Sanguine Bag
	{ id = 43895, chance = 15050 },  -- Bag you covet - zwykly
	{ id = 39546, chance = 7320 },  -- Primal Bag
	{ id = 34109, chance = 8000 },  -- Bag you desire
	{ id = 37053, chance = 8000 },  -- Bonelrd Tome
	{ id = 55014, chance = 200 },  -- Unicorn Backpack
	{ id = 49393, chance = 1000000, minCount = 50, maxCount = 150 }, -- reward token
    { id = 49435, chance = 1000000, minCount = 100, maxCount = 1000 }, -- hunting task token
    { id = 49921, chance = 1000000, minCount = 1, maxCount = 5 },  -- Boss Token
	{ id = 49429, chance = 550000, minCount = 1, maxCount = 1 }, -- Lasting Exercise Box
	{ id = 49921, chance = 1000000, minCount = 1, maxCount = 2 },  -- Boss Token
	{ id = 49393, chance = 1000000, minCount = 50, maxCount = 150 }, -- reward token
	{ id = 49435, chance = 1000000, minCount = 100, maxCount = 1000 }, -- hunting task token
	{ id = 43949, chance = 100500, minCount = 1, maxCount = 3 },  -- Promotion Scroll
	{ name = "greater sage gem", chance = 55000, minCount = 1, maxCount = 2 }, 
	{ name = "greater mystic gem", chance = 55000, minCount = 1, maxCount = 2 },  
	{ name = "greater marksman gem", chance = 55000, minCount = 1, maxCount = 2 }, 
	{ name = "greater guardian gem", chance = 55000, minCount = 1, maxCount = 2 }, 
	{ name = "greater spiritualist gem", chance = 55000, minCount = 1, maxCount = 2 }, 
		{ id = 46290, chance = 4150}, -- chronobag
	{ id = 46302, chance = 4151}, -- mistery bag
}


monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -2900 },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -1808, maxDamage = -3448, radius = 6, effect = CONST_ME_MORTAREA, target = false },
	{ name = "combat", interval = 2000, chance = 30, type = COMBAT_MANADRAIN, minDamage = -2440, maxDamage = -4968, length = 8, spread = 0, effect = CONST_ME_BLOCKHIT, target = false },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_FIREDAMAGE, minDamage = -1760, maxDamage = -2640, length = 8, spread = 0, effect = CONST_ME_EXPLOSIONAREA, target = false },
	{ name = "combat", interval = 2000, chance = 50, type = COMBAT_DEATHDAMAGE, minDamage = -3440, maxDamage = -4640, length = 8, spread = 0, effect = CONST_ME_MORTAREA, target = false },
	{ name = "combat", interval = 3000, chance = 25, type = COMBAT_PHYSICALDAMAGE, minDamage = -720, maxDamage = -4920, radius = 5, effect = CONST_ME_GROUNDSHAKER, target = true },
	{ name = "firefield", interval = 1000, chance = 30, radius = 8, effect = CONST_ME_EXPLOSIONHIT, target = false },
	{ name = "combat", interval = 1000, chance = 35, type = COMBAT_FIREDAMAGE, minDamage = -280, maxDamage = -5320, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true },
}

monster.defenses = {
	defense = 20,
	armor = 20,
	{ name = "invisible", interval = 2000, chance = 10, effect = CONST_ME_MAGIC_BLUE },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_HEALING, minDamage = 1500, maxDamage = 9700, effect = CONST_ME_MAGIC_BLUE, target = false },
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
