local mType = Game.createMonsterType("Bibby Bloodbath")
local monster = {}

monster.description = "Bibby Bloodbath"
monster.experience = 1000000
monster.outfit = {
	lookType = 2022,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.bosstiary = {
	bossRaceId = 900,
	bossRace = RARITY_ARCHFOE,
}

monster.health = 15000000
monster.maxHealth = 15000000
monster.race = "blood"
monster.corpse = 22017
monster.speed = 820
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10,
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
	canWalkOnEnergy = false,
	canWalkOnFire = true,
	canWalkOnPoison = false,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.voices = {
	interval = 4000,
	chance = 50,
	{ text = "Don't run, you'll just lose precious fat.", yell = false },
	{ text = "Check my Sanguine Weapon HAHAHA!!", yell = false },
	{ text = "YOU ARE VERY WEAK XD", yell = false },
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
	    { id = 49393, chance = 1000000, minCount = 50, maxCount = 150 }, -- reward token
    { id = 49435, chance = 1000000, minCount = 100, maxCount = 1000 }, -- hunting task token
    { id = 49921, chance = 1000000, minCount = 5, maxCount = 10 },  -- Boss Token
    { id = 19391, chance = 1000 }, -- furious frock
    { id = 43898, chance = 8000 },  -- Grand Sanguine Bag
    { id = 43895, chance = 55050 },  -- Bag you covet - zwykly
    { id = 39546, chance = 7320 },  -- Primal Bag
    { id = 34109, chance = 8000 },  -- Bag you desire
    { id = 37053, chance = 4000 },  -- Bonelrd Tome
    { id = 55014, chance = 200 },  -- Unicorn Backpack
	{ id = 46290, chance = 4150}, -- chronobag
	{ id = 46302, chance = 4151}, -- mistery bag

}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -275, maxDamage = -3750 },
	{ name = "combat", interval = 2000, chance = 75, type = COMBAT_FIREDAMAGE, minDamage = -3725, maxDamage = -10000, radius = 3, range = 8, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_HITBYFIRE, target = true },
	{ name = "combat", interval = 3700, chance = 50, type = COMBAT_FIREDAMAGE, minDamage = -700, maxDamage = -1750, length = 8, spread = 3, effect = CONST_ME_MAGIC_RED, target = false },
	{ name = "combat", interval = 3100, chance = 45, type = COMBAT_FIREDAMAGE, minDamage = -800, maxDamage = -1100, range = 8, effect = CONST_ME_FIREAREA, shootEffect = CONST_ANI_FIRE, target = true },
	{ name = "combat", interval = 2000, chance = 30, type = COMBAT_ICEDAMAGE, minDamage = -450, maxDamage = -1000, length = 10, spread = 4, effect = CONST_ME_ICEAREA, target = false },
	{ name = "combat", interval = 2000, chance = 30, type = COMBAT_ICEDAMAGE, minDamage = -350, maxDamage = -1100, range = 7, radius = 4, shootEffect = CONST_ANI_ICE, effect = CONST_ME_ICEAREA, target = true },

}

monster.defenses = {
	defense = 65,
	armor = 50,
	mitigation = 2.0,
	{ name = "combat", interval = 3000, chance = 35, type = COMBAT_HEALING, minDamage = 800, maxDamage = 1500, effect = CONST_ME_MAGIC_BLUE, target = false },
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
