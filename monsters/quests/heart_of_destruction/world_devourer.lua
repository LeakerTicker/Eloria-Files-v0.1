local mType = Game.createMonsterType("World Devourer")
local monster = {}

monster.description = "World Devourer"
monster.experience = 777000
monster.outfit = {
	lookType = 875,
	lookHead = 82,
	lookBody = 79,
	lookLegs = 84,
	lookFeet = 94,
	lookAddons = 3,
	lookMount = 0,
}

monster.bosstiary = {
	bossRaceId = 1228,
	bossRace = RARITY_NEMESIS,
}

monster.health = 275000
monster.maxHealth = 275000
monster.race = "venom"
monster.corpse = 0
monster.speed = 225
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 25,
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
	{ id = 3043, chance = 1009000, maxCount = 20 }, -- crystal coin
	{ id = 16119, chance = 100900, maxCount = 3 }, -- blue crystal shard
	{ id = 16121, chance = 100900, maxCount = 3 }, -- green crystal shard
	{ id = 16120, chance = 100900, maxCount = 3 }, -- violet crystal shard
	{ id = 23507, chance = 100900 }, -- crystallized anger
	{ id = 23508, chance = 100900 }, -- energy vein
	{ id = 281, chance = 50900 }, -- giant shimmering pearl (green)
	{ id = 282, chance = 50900 }, -- giant shimmering pearl (brown)
	{ id = 46003, chance = 1500}, -- Guildbank Backpack
	{ id = 23520, chance = 100900 }, -- plasmatic lightning
	{ id = 3038, chance = 190000 }, -- green gem
	{ id = 7426, chance = 109000 }, -- amber staff
	{ id = 828, chance = 89000 }, -- lightning headband
	{ id = 23533, chance = 89000 }, -- ring of red plasma
	{ id = 3036, chance = 89000 }, -- violet gem
	{ id = 23474, chance = 10000, unique = true }, -- tiara of power
	{ id = 23477, chance = 10000, unique = true }, -- void boots
	{ id = 23686, chance = 6000, unique = true }, -- devourer core
	{ id = 61728, chance = 2470 }, -- ring of orange plasma
	{ id = 61726, chance = 2470 }, -- collar of orange plasma
	{ name = "gold token", chance = 8080 },
    { name = "silver token", chance = 8040 },
    { id = 43946, chance = 35000 },  -- Abridged Promotion Scroll
    { id = 49921, chance = 10000 },  -- Boss Token
		
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1600 },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_LIFEDRAIN, minDamage = -400, maxDamage = -800, length = 10, spread = 0, effect = CONST_ME_MAGIC_RED, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -400, maxDamage = -800, radius = 4, effect = CONST_ME_SMALLCLOUDS, target = true },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -400, maxDamage = -800, radius = 4, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_YELLOWENERGY, target = true },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -600, maxDamage = -1200, length = 10, spread = 0, effect = CONST_ME_LOSEENERGY, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_LIFEDRAIN, radius = 8, effect = CONST_ME_MAGIC_RED, target = false },
}

monster.defenses = {
	defense = 150,
	armor = 150,
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
