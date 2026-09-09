local mType = Game.createMonsterType("The Scourge of Oblivion")
local monster = {}

monster.description = "The Scourge Of Oblivion"
monster.experience = 250000
monster.outfit = {
	lookType = 875,
	lookHead = 79,
	lookBody = 3,
	lookLegs = 4,
	lookFeet = 2,
	lookAddons = 3,
	lookMount = 0,
}



monster.bosstiary = {
	bossRaceId = 1642,
	bossRace = RARITY_ARCHFOE,
}

monster.health = 250000
monster.maxHealth = 250000
monster.race = "venom"
monster.corpse = 23561
monster.speed = 225
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 25,
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
	maxSummons = 8,
	summons = {
		{ name = "Charger", chance = 15, interval = 1000, count = 3 },
		{ name = "Spark of Destruction", chance = 15, interval = 1000, count = 3 },
	},
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "The Scourge Of Oblivion prepares a devestating attack!", yell = false },
	{ text = "The Scourge Of Oblivion activates its reflective shields!", yell = false },
}

monster.loot = {
	{ name = "crystal coin", chance = 55000, minCount = 17, maxCount = 75 },
	{ name = "green crystal shard", chance = 100000, maxCount = 3 },
	{ name = "violet crystal shard", chance = 100000, maxCount = 3 },
	{ id = 23516, chance = 100000 }, -- instable proto matter
	{ name = "plasmatic lightning", chance = 100000 },
	{ name = "greater sage gem", chance = 500 },
	{ name = "greater spiritualist gem", chance = 500 },
	{ name = "greater mystic gem", chance = 500 },
	{ name = "greater marksman gem", chance = 500 },
	{ name = "greater guardian gem", chance = 500 },
	{ name = "emerald bangle", chance = 100000 },
	{ name = "small amethyst", chance = 66666, maxCount = 12 },
	{ name = "giant emerald", chance = 66666 },
	{ id = 3039, chance = 66666 }, -- red gem
	{ id = 46270, chance = 1500}, -- Celestius backpack
	{ name = "small ruby", chance = 33333, maxCount = 12 },
	{ name = "blue crystal shard", chance = 333330, maxCount = 3 },
	{ name = "giant sapphire", chance = 333303 },
	{ name = "green gem", chance = 333303 },
	{ id = 61728, chance = 2470 }, -- ring of orange plasma
	{ id = 61726, chance = 2470 }, -- collar of orange plasma
	{ id = 23542, chance = 333330 }, -- collar of blue plasma
	{ name = "huge chunk of crude iron", chance = 333330 },
	{ name = "magic sulphur", chance = 333330 },
	{ name = "ring of the sky", chance = 333330 },
	{ name = "small diamond", chance = 150000, maxCount = 12 },
	{ name = "small emerald", chance = 150000, maxCount = 12 },
	{ name = "rift shield", chance = 50000 },
	{ id = 281, chance = 50000 }, -- giant shimmering pearl (green)
	{ id = 3341, chance = 50000 }, -- arcane staff
	{ name = "skullcracker armor", chance = 50000 },
	{ name = "chaos mace", chance = 50000 },
	{ name = "calamity", chance = 5000, unique = true },
	{ name = "spark sphere", chance = 100000 },
	{ id = 49921, chance = 10000 },  -- Boss Token
    { name = "gold token", chance = 10080 },
    { name = "silver token", chance = 10040 },
    { id = 43946, chance = 40000 },  -- Abridged Promotion Scroll
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, skill = 250, attack = 350 },
	{ name = "combat", interval = 1000, chance = 7, type = COMBAT_MANADRAIN, minDamage = -900, maxDamage = -1500, range = 7, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_POFF, target = false },
	{ name = "strength", interval = 1000, chance = 9, range = 7, shootEffect = CONST_ANI_LARGEROCK, effect = CONST_ME_ENERGYAREA, target = false },
	{ name = "energy strike", interval = 2000, chance = 30, minDamage = -2000, maxDamage = -2700, range = 1, target = false },
	{ name = "combat", interval = 2000, chance = 8, type = COMBAT_FIREDAMAGE, minDamage = -1550, maxDamage = -2550, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -1075, maxDamage = -2405, range = 7, shootEffect = CONST_ANI_ENERGYBALL, effect = CONST_ME_ENERGYHIT, target = true },
	{ name = "combat", interval = 1000, chance = 20, type = COMBAT_LIFEDRAIN, minDamage = -600, maxDamage = -1500, radius = 8, effect = CONST_ME_LOSEENERGY, target = false },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -750, maxDamage = -1200, length = 8, spread = 0, effect = CONST_ME_PURPLEENERGY, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -450, maxDamage = -1400, radius = 4, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true },
	{ name = "combat", interval = 1000, chance = 10, type = COMBAT_MANADRAIN, minDamage = -800, maxDamage = -2300, radius = 8, effect = CONST_ME_MAGIC_GREEN, target = false },
	{ name = "speed", interval = 1000, chance = 12, speedChange = -800, radius = 6, effect = CONST_ME_POISONAREA, target = false, duration = 60000 },
	{ name = "strength", interval = 1000, chance = 8, radius = 5, effect = CONST_ME_HITAREA, target = false },
	{ name = "combat", interval = 1000, chance = 34, type = COMBAT_FIREDAMAGE, minDamage = -100, maxDamage = -700, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true },
	{ name = "combat", interval = 1000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -300, maxDamage = -950, length = 8, spread = 0, effect = CONST_ME_MAGIC_RED, target = false },
}

monster.defenses = {
	defense = 160,
	armor = 160,
	--	mitigation = ???,
	{ name = "combat", interval = 6000, chance = 25, type = COMBAT_HEALING, minDamage = 1000, maxDamage = 2000, effect = CONST_ME_MAGIC_BLUE, target = false },
	{ name = "speed", interval = 1000, chance = 8, speedChange = 1901, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000 },
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
