local mType = Game.createMonsterType("Widow of the Abyss")
local monster = {}

monster.description = "Widow of the Abyss"
monster.experience = 2200000
monster.outfit = {
	lookType = 4002,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.bosstiary = {
	bossRaceId = 2668,
	bossRace = RARITY_BANE,
}

monster.health = 16000000
monster.maxHealth = 16000000
monster.race = "blood"
monster.corpse = 20996
monster.speed = 650
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 3,
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
	staticAttackChance = 90,
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

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{ id = 3031, chance = 100000, maxCount = 200 }, -- gold coin
	{ id = 48238, chance = 5000, minCount = 1, maxCount = 1 }, -- Stamina Refill
	{ id = 3007, chance = 100000 }, -- crystal ring
	{ id = 6300, chance = 60000 }, -- death ring
	{ id = 3439, chance = 1000 }, -- phoenix shield
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
	{ id = 49393, chance = 1000000, minCount = 50, maxCount = 150 }, -- reward token
    { id = 49435, chance = 1000000, minCount = 100, maxCount = 1000 }, -- hunting task token
    { id = 49921, chance = 1000000, minCount = 5, maxCount = 10 },  -- Boss Token
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
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -4000 },
	{ name = "combat", interval = 3000, chance = 35, type = COMBAT_ICEDAMAGE, minDamage = -2320, maxDamage = -4880, range = 7, radius = 7, shootEffect = CONST_ANI_ICE, effect = CONST_ME_ICEAREA, target = true },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_DEATHDAMAGE, minDamage = -1680, maxDamage = -3280, length = 8, spread = 5, effect = CONST_ME_POFF, target = false },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_DEATHDAMAGE, minDamage = -1680, maxDamage = -3840, range = 7, radius = 6, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true },
	{ name = "melee", interval = 1800, chance = 40, minDamage = 0, maxDamage = -800 },
	{ name = "combat", interval = 3000, chance = 30, type = COMBAT_FIREDAMAGE, minDamage = -1600, maxDamage = -3200, length = 8, spread = 5, effect = CONST_ME_HITBYFIRE, target = false },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_FIREDAMAGE, minDamage = -1280, maxDamage = -2720, length = 8, spread = 4, effect = CONST_ME_FIREAREA, target = false },
	{ name = "combat", interval = 2500, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -3360, maxDamage = -3840, range = 7, radius = 5, effect = CONST_ME_MAGIC_GREEN, target = false },
	{ name = "bullwark paralyze", interval = 2000, chance = 100, target = false },
}

monster.defenses = {
	defense = 66,
	armor = 48,
	--	mitigation = ???,
	{ name = "combat", interval = 2000, chance = 50, type = COMBAT_HEALING, minDamage = 4000, maxDamage = 6000, effect = CONST_ME_MAGIC_BLUE, target = false },
	{ name = "speed", interval = 2000, chance = 11, speedChange = 660, effect = CONST_ME_HITAREA, target = false, duration = 7000 },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 15 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = 5 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 15 },
	{ type = COMBAT_HOLYDAMAGE, percent = 35 },
	{ type = COMBAT_DEATHDAMAGE, percent = 10 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
