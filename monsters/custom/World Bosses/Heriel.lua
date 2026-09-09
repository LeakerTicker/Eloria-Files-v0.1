local mType = Game.createMonsterType("Heriel")
local monster = {}

monster.description = "Heriel"
monster.experience = 1500000
monster.outfit = {
	lookType = 2042,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.bosstiary = {
	bossRaceId = 2664,
	bossRace = RARITY_NEMESIS,
}

monster.health = 20000000
monster.maxHealth = 20000000
monster.race = "venom"
monster.corpse = 4240
monster.speed = 1000
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8,
}

monster.strategiesTarget = {
	nearest = 3,
	health = 3,
	damage = 91,
	random = 3,
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

monster.summon = {
	maxSummons = 4,
	summons = {
		{ name = "Nameless Woe", chance = 100, interval = 2000, count = 4 },
	},
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "ANIHILATION!", yell = true },
	{ text = "DEATH IS INEVITABLE!", yell = true },
	{ text = "DESTRUCTION!", yell = true },
	{ text = "I AM THE ESSENCE OF DEATH!", yell = true },
	{ text = "YOU CAN NOT ESCAPE ME!", yell = true },
	{ text = "HUNGER ... SO ... GREAT! YOU ALL .. WILL .... DIE!!!", yell = true },
	{ text = "PAIN!", yell = true },
	{ text = "DIIIIEEEEE!", yell = true },
}

monster.loot = {
	{ id = 3031, chance = 100000, maxCount = 100 }, -- gold coin
	{ id = 3035, chance = 10000, maxCount = 3 }, -- platinum coin
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
	{ id = 49429, chance = 550000, minCount = 1, maxCount = 2 }, -- Lasting Exercise Box
	{ id = 49921, chance = 1000000, minCount = 1, maxCount = 3 },  -- Boss Token
	{ id = 49393, chance = 1000000, minCount = 100, maxCount = 250 }, -- reward token
	{ id = 49435, chance = 1000000, minCount = 500, maxCount = 2500 }, -- hunting task token
	{ id = 43950, chance = 100500, minCount = 1, maxCount = 3 },  -- Abridged Promotion Scroll
	{ name = "greater sage gem", chance = 55000, minCount = 1, maxCount = 2 }, 
	{ name = "greater mystic gem", chance = 55000, minCount = 1, maxCount = 2 },  
	{ name = "greater marksman gem", chance = 55000, minCount = 1, maxCount = 2 }, 
	{ name = "greater guardian gem", chance = 55000, minCount = 1, maxCount = 2 }, 
	{ name = "greater spiritualist gem", chance = 55000, minCount = 1, maxCount = 2 }, 
	{ id = 49921, chance = 1000000, minCount = 1, maxCount = 2 },  -- Boss Token
	{ id = 49393, chance = 1000000, minCount = 1, maxCount = 3 }, -- reward token
	{ id = 49435, chance = 1000000, minCount = 1, maxCount = 4 }, -- hunting task token
	{ id = 3043, chance = 1000000, minCount = 300, maxCount = 1020 }, -- crystal coin
	{ id = 18339, chance = 3000, maxCount = 1 }, -- Zaoan chess box
	{ id = 39040, chance = 91000, minCount = 1, maxCount = 5 }, -- fiery tear
	{ id = 39037, chance = 90000, minCount = 1, maxCount = 3 }, -- cobalt ridge 
	{ id = 30403, chance = 5500 }, -- enchanted theurgic amulet
	{ id = 39234, chance = 5400 }, -- Enchanted Turtle Amulet
	{ id = 30345, chance = 5300 }, -- enchanted pendulet
	{ id = 43898, chance = 6000 },  -- Bag you covet - GRAND
	{ id = 34109, chance = 9700 },  -- Bag you desire
	{ id = 22721, chance = 98000, minCount = 1, maxCount = 5 },  -- Gold Token
	{ id = 39546, chance = 9800 },  -- Primal Bag
	{ id = 49429, chance = 8000 },  -- lasting exercise boox
	{ id = 37110, chance = 1000000, minCount = 1, maxCount = 5 },  -- Exalted core
	{ id = 4115, chance = 1203 }, -- Phoenix statue
	{ id = 12042, chance = 1204 }, -- Frozen Heart  
	{ id = 44060, chance = 1205 }, -- Aylie v.2
	{ id = 44059, chance = 1206 }, -- Aylie v.1 
	{ id = 49921, chance = 100000 },  -- Boss Token
    { id = 19391, chance = 1000 }, -- furious frock
    { id = 43898, chance = 8000 },  -- Grand Sanguine Bag
    { id = 43895, chance = 55050 },  -- Bag you covet - zwykly
    { id = 39546, chance = 7320 },  -- Primal Bag
    { id = 34109, chance = 8000 },  -- Bag you desire
	{ id = 3364, chance = 22000 }, -- golden legs
	{ id = 8074, chance = 22000 }, -- spellbook of mind control
	{ id = 3420, chance = 20000 }, -- demon shield
	{ id = 8057, chance = 20000 }, -- divine plate
	{ id = 46290, chance = 4150}, -- chronobag
	{ id = 46302, chance = 4151}, -- mistery bag
	{ id = 46294, chance = 2570}, -- Dread Bag
	{ id = 3309, chance = 1666 }, -- Thunder Hammer
    { id = 46094, chance = 2550 }, -- Eternal Bag
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, skill = 65, attack = 24 },
	{ name = "combat", interval = 2000, chance = 30, type = COMBAT_ENERGYDAMAGE, minDamage = -448, maxDamage = -2504, range = 7, shootEffect = CONST_ANI_ENERGY, target = false },
	{ name = "combat", interval = 2000, chance = 35, type = COMBAT_FIREDAMAGE, minDamage = -1668, maxDamage = -4892, range = 7, shootEffect = CONST_ANI_FIRE, target = false },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_PHYSICALDAMAGE, minDamage = -908, maxDamage = -2540, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = false },
	{ name = "combat", interval = 2000, chance = 30, type = COMBAT_EARTHDAMAGE, minDamage = -1792, maxDamage = -2336, range = 7, shootEffect = CONST_ANI_POISON, target = false },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_LIFEDRAIN, minDamage = -888, maxDamage = -2504, range = 7, effect = CONST_ME_MAGIC_RED, target = false },
	{ name = "speed", interval = 2000, chance = 100, speedChange = -850, range = 7, effect = CONST_ME_MAGIC_RED, target = false, duration = 20000 },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_EARTHDAMAGE, minDamage = -4188, maxDamage = -8388, length = 8, spread = 5, effect = CONST_ME_GREEN_RINGS, target = false },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_LIFEDRAIN, minDamage = -1020, maxDamage = -1668, length = 8, spread = 3, effect = CONST_ME_MAGIC_RED, target = false },
	{ name = "combat", interval = 2000, chance = 30, type = COMBAT_MANADRAIN, minDamage = -2520, maxDamage = -4200, length = 8, spread = 3, effect = CONST_ME_LOSEENERGY, target = false },
}

monster.defenses = {
	defense = 25,
	armor = 25,
	--	mitigation = ???,
	{ name = "combat", interval = 2000, chance = 75, type = COMBAT_HEALING, minDamage = 505, maxDamage = 605, effect = CONST_ME_MAGIC_BLUE, target = false },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 30 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = 30 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 30 },
	{ type = COMBAT_HOLYDAMAGE, percent = 30 },
	{ type = COMBAT_DEATHDAMAGE, percent = 0 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
