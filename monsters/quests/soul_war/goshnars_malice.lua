local mType = Game.createMonsterType("Goshnar's Malice")
local monster = {}

monster.description = "Goshnar's Malice"
monster.experience = 250000
monster.outfit = {
	lookType = 1306,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}


monster.health = 260000
monster.maxHealth = 260000
monster.race = "undead"
monster.corpse = 33871
monster.speed = 150
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 10,
}

monster.bosstiary = {
	bossRaceId = 1901,
	bossRace = RARITY_ARCHFOE,
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
}

monster.loot = {
	{ name = "crystal coin", chance = 1000000, minCount = 70, maxCount = 75 },
	{ id = 281, chance = 115000 }, -- giant shimmering pearl (green)
	{ name = "giant sapphire", chance = 100000, maxCount = 1 },
	{ name = "giant topaz", chance = 100000, maxCount = 1 },
	{ name = "violet gem", chance = 600000, maxCount = 1 },
	{ name = "blue gem", chance = 100000, maxCount = 3 },
	{ id = 3039, chance = 100000, maxCount = 30 }, -- red gem
	{ name = "greater sage gem", chance = 500 },
	{ name = "greater spiritualist gem", chance = 500 },
	{ name = "greater mystic gem", chance = 500 },
	{ name = "greater marksman gem", chance = 500 },
	{ name = "greater guardian gem", chance = 500 },
	{ name = "green gem", chance = 100000, maxCount = 3 },
	{ name = "yellow gem", chance = 100000, maxCount = 3 },
	{ name = "white gem", chance = 600000, maxCount = 3 },
	{ name = "dragon figurine", chance = 100000, maxCount = 1 },
	{ name = "malice's spine", chance = 5000, maxCount = 1 },
	{ name = "malice's horn", chance = 4000, maxCount = 1 },
	{ name = "spectral horseshoe", chance = 1400 },
	{ name = "the skull of a beast", chance = 1400 },
	{ id = 46044, chance = 1500}, -- Soul War Backpack
	{ name = "figurine of malice", chance = 2400 },
	{ name = "bag you desire", chance = 2050 },
	{ id = 49921, chance = 10000 },  -- Boss Token
    { name = "gold token", chance = 10080 },
    { name = "silver token", chance = 10040 },
    { id = 43946, chance = 40000 },  -- Abridged Promotion Scroll
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -2500 },
	{ name = "combat", interval = 2000, chance = 22, type = COMBAT_ICEDAMAGE, minDamage = -1450, maxDamage = -2400, length = 10, spread = 4, effect = CONST_ME_ICEAREA, target = false },
	{ name = "combat", interval = 2000, chance = 30, type = COMBAT_ICEDAMAGE, minDamage = -1350, maxDamage = -2000, range = 7, radius = 4, shootEffect = CONST_ANI_ICE, effect = CONST_ME_ICEAREA, target = true },
}

monster.defenses = {
	defense = 160,
	armor = 160,
	mitigation = 5.40,
	{ name = "speed", interval = 1000, chance = 20, speedChange = 500, effect = CONST_ME_MAGIC_RED, target = false, duration = 10000 },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_HEALING, minDamage = 1250, maxDamage = 3250, effect = CONST_ME_MAGIC_BLUE, target = false },
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
