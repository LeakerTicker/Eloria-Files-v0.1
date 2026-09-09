local mType = Game.createMonsterType("The Source of Corruption")
local monster = {}

monster.description = "The Source Of Corruption"
monster.experience = 200000
monster.outfit = {
	lookType = 979,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}



monster.bosstiary = {
	bossRaceId = 1500,
	bossRace = RARITY_ARCHFOE,
}

monster.health = 200000
monster.maxHealth = 200000
monster.race = "undead"
monster.corpse = 23567
monster.speed = 60
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 20,
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
	canPushCreatures = false,
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
	{ name = "crystal coin", chance = 55000, minCount = 70, maxCount = 75 },
	{ id = 16124, chance = 100000, maxCount = 15 }, -- blue crystal splinter
	{ id = 16122, chance = 100000, maxCount = 10 }, -- green crystal splinter
	{ id = 16120, chance = 100000, maxCount = 15 }, -- violet crystal shard
	{ name = "green gem", chance = 190000 },
	{ id = 3041, chance = 100000, maxCount = 2 }, -- blue gem
	{ name = "yellow gem", chance = 180500 },
	{ name = "giant sapphire", chance = 168000 },
	{ name = "Devil Helmet", chance = 152000 },
	{ name = "gold ingot", minCount = 5, maxCount = 10, chance = 180000 },
	{ id = 3039, chance = 185000 }, -- red gem
	{ id = 23543, chance = 152000 }, -- collar of green plasma
	{ name = "greater sage gem", chance = 500 },
	{ name = "greater spiritualist gem", chance = 500 },
	{ name = "greater mystic gem", chance = 500 },
	{ name = "greater marksman gem", chance = 500 },
	{ name = "greater guardian gem", chance = 500 },
	{ id = 61728, chance = 2470 }, -- ring of orange plasma
	{ id = 61726, chance = 2470 }, -- collar of orange plasma
	{ id = 23517, chance = 120000 }, -- Solid Rage
	{ id = 5891, chance = 210000 }, -- Enchanted Chicken Wing
	{ id = 3324, chance = 250000 }, -- Skull Staff
	{ id = 7437, chance = 120000 }, -- Sapphire Hammer
	{ id = 8029, chance = 20000 }, -- Silkweaver Bow
	{ id = 22866, chance = 320000 }, -- Rift Bow
	{ id = 46218, chance = 1500}, -- Suncrest Backpack
	{ id = 3340, chance = 220000 }, -- Heavy Mace
	{ id = 20067, chance = 7000 }, -- Crude Umbral Slayer
	{ id = 20068, chance = 5000 }, -- Umbral Slayer
	{ id = 8098, chance = 5000 }, -- Demonwing Axe
	{ id = 9068, chance = 20000 }, -- Yalahari Figurine
	{ id = 23529, chance = 120000 }, -- ring of blue plasma
	{ id = 23533, chance = 120000 }, -- ring of red plasma
	{ id = 49921, chance = 10000 },  -- Boss Token
    { name = "gold token", chance = 10080 },
    { name = "silver token", chance = 10040 },
    { id = 43946, chance = 40000 },  -- Abridged Promotion Scroll
	}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1500 },
	{ name = "source of corruption wave", interval = 2000, chance = 15, target = false },
}

monster.defenses = {
	defense = 30,
	armor = 30,
	--	mitigation = ???,
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
