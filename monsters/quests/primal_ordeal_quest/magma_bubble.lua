local mType = Game.createMonsterType("Magma Bubble")
local monster = {}

monster.description = "magma bubble"
monster.experience = 250000
monster.outfit = {
	lookType = 1413,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}



monster.bosstiary = {
	bossRaceId = 2242,
	bossRace = RARITY_ARCHFOE,
}

monster.health = 200000
monster.maxHealth = 200000
monster.race = "undead"
monster.corpse = 36847
monster.speed = 150
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 20,
}

monster.strategiesTarget = {
	nearest = 100,
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
	staticAttackChance = 98,
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
}

monster.loot = {
	{ name = "crystal coin", chance = 55000, minCount = 70, maxCount = 175 },
	{ name = "giant amethyst", chance = 60122 },
	{ name = "giant ruby", chance = 40802 },
	{ name = "giant emerald", chance = 40820 },
	{ name = "giant sapphire", chance = 20041 },
	{ name = "giant topaz", chance = 20410 },
	{ name = "Ethereal Coned Hat", chance = 1500 },
	{ name = "arboreal tome", chance = 963 },
	{ name = "arboreal crown", chance = 962 },
	{ name = "spiritthorn armor", id = 39147, chance = 961 },
	{ name = "spiritthorn helmet", id = 39148, chance = 960 },
	{ name = "alicorn headguard", chance = 959 },
	{ name = "alicorn quiver", chance = 958 },
	{ id = 46070, chance = 1500}, -- Alicorn Backpack
	{ id = 46071, chance = 1500}, -- Spiritthorn Backpack
	{ id = 46073, chance = 957}, -- Arboreal Crown
	{ id = 46072, chance = 1500}, -- Arcanomancer Backpack
	{ name = "arcanomancer regalia", chance = 956 },
	{ name = "arcanomancer folio", chance = 955 },
	{ id = 39183, chance = 954 }, -- name = "charged arcanomancer sigil"
	{ id = 39186, chance = 953 }, -- name = "charged arboreal ring"
	{ id = 39180, chance = 952 }, -- name = "charged alicorn ring"
	{ id = 39177, chance = 951 }, -- name = "charged spiritthorn ring"
	{ name = "portable flame", chance = 2250 },
	{ name = "firefighting axe", chance = 2250 },
	{ id = 49921, chance = 10000 },  -- Boss Token
    { name = "gold token", chance = 10080 },
    { name = "silver token", chance = 10040 },
    { id = 43946, chance = 40000 },  -- Abridged Promotion Scroll
    { id = 39546, chance = 5020 },  -- Primal Bag
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -275, maxDamage = -750 },
	{ name = "combat", interval = 2000, chance = 75, type = COMBAT_FIREDAMAGE, minDamage = -725, maxDamage = -1000, radius = 3, range = 8, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_HITBYFIRE, target = true },
	{ name = "combat", interval = 3700, chance = 37, type = COMBAT_FIREDAMAGE, minDamage = -1700, maxDamage = -1750, length = 8, spread = 3, effect = CONST_ME_MAGIC_RED, target = false },
	{ name = "combat", interval = 3100, chance = 27, type = COMBAT_FIREDAMAGE, minDamage = -1000, maxDamage = -1500, range = 8, effect = CONST_ME_FIREAREA, shootEffect = CONST_ANI_FIRE, target = true },
}

monster.defenses = {
	defense = 65,
	armor = 0,
	mitigation = 2.0,
	{ name = "speed", interval = 2000, chance = 15, speedChange = 320, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000 },
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
