local mType = Game.createMonsterType("Goshnar's Megalomania")
local monster = {}

monster.name = "Goshnar's Megalomania"
monster.description = "Goshnar's Megalomania"
monster.experience = 3000000
monster.outfit = {
	lookType = 1337,
}

monster.health = 400000
monster.maxHealth = 400000
monster.race = "undead"
monster.corpse = 33889
monster.speed = 0
monster.manaCost = 0
monster.maxSummons = 4

monster.bosstiary = {
	bossRaceId = 1969,
	bossRace = RARITY_NEMESIS,
}

monster.changeTarget = {
	interval = 4000,
	chance = 10,
}

monster.strategiesTarget = {
	nearest = 80,
	health = 10,
	damage = 10,
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
}

monster.loot = {
	{ name = "crystal coin", chance = 155000, minCount = 70, maxCount = 175 },
	{ id = 281, chance = 1150 }, -- giant shimmering pearl (green)
	{ name = "giant sapphire", chance = 100000, maxCount = 1 },
	{ name = "giant topaz", chance = 100000, maxCount = 1 },
	{ name = "violet gem", chance = 600000, maxCount = 1 },
	{ name = "blue gem", chance = 100000, maxCount = 3 },
	{ id = 3039, chance = 100000, maxCount = 3 }, -- red gem
	{ name = "green gem", chance = 100000, maxCount = 3 },
	{ name = "yellow gem", chance = 100000, maxCount = 3 },
	{ name = "white gem", chance = 60000, maxCount = 3 },
	{ name = "dragon figurine", chance = 100000, maxCount = 1 },
	{ name = "figurine of malice", chance = 1901 },
	{ name = "figurine of cruelty", chance = 1902 },
	{ name = "figurine of hatred", chance = 1903 },
	{ name = "figurine of greed", chance = 1904 },
	{ name = "figurine of spite", chance = 1905 },
	{ name = "figurine of megalomania", chance = 2000 },
	{ name = "greater sage gem", chance = 500 },
	{ name = "greater spiritualist gem", chance = 500 },
	{ name = "greater mystic gem", chance = 500 },
	{ name = "greater marksman gem", chance = 500 },
	{ name = "greater guardian gem", chance = 500 },
	{ name = "megalomania's skull", chance = 1400 },
	{ name = "megalomania's essence", chance = 1500 },
	{ name = "bag you desire", chance = 3050 },
	{ id = 49921, chance = 10000 },  -- Boss Token
    { name = "gold token", chance = 10080 },
    { name = "silver token", chance = 10040 },
    { id = 43946, chance = 40000 },  -- Abridged Promotion Scroll
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -400, maxDamage = -1225 },
	{ name = "combat", interval = 30000, chance = 100, type = COMBAT_LIFEDRAIN, minDamage = -1000, maxDamage = -1500, length = 8, radius = 5, spread = 0, effect = CONST_ME_PINK_ENERGY_SPARK, target = true },
}

monster.defenses = {
	defense = 55,
	armor = 55,
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
