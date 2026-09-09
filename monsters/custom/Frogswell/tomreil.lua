local mType = Game.createMonsterType("Eternal Tomreil")
local monster = {}

monster.description = "Eternal Tomreil"
monster.experience = 3000000
monster.outfit = {
	lookType = 1802,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.health = 1000000
monster.maxHealth = 1000000
monster.race = "blood"
monster.corpse = 37704
monster.speed = 830
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 10,
}


monster.summon = {
	maxSummons = 2,
	summons = {
		{ name = "Eternal Demon", chance = 100, interval = 2000, count = 6 },
	},
}


monster.bosstiary = {
	bossRaceId = 2642,
	bossRace = RARITY_NEMESIS,
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
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 1,
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
	{ text = "ETERNALS COME TO ME!", yell = false },
	{ text = "You are starting to annoy me!", yell = false },
	{ text = "I will restore our family honor!", yell = false },
}

monster.summons = {}

monster.loot = {
	{ name = "crystal coin", chance = 550000, minCount = 170, maxCount = 375 },
	{ id = 37810, chance = 100000 }, -- Morshabaal's Extract
	{ id = 33780, chance = 100000 }, -- Watermelon Tourmaline (Pear)
	{ id = 33779, chance = 100000 }, -- Watermelon Tourmaline (Slice)
	{ id = 32625, chance = 100000 }, -- Amber with a Dragonfly
	{ id = 30054, chance = 200000 }, -- Unicorn Figurine
	{ id = 31323, chance = 200000 }, -- Sea Horse Figurine
	{ id = 37611, chance = 1000 }, -- Morshabaal's Mask
	{ id = 30060, chance = 100000 }, -- Giant Emerald
	{ id = 14112, chance = 100000 }, -- Bar of Gold
	{ id = 37613, chance = 3566 }, -- Morshabaal's Brain
	{ id = 37608, chance = 2066 }, -- Green Demon Armor
	{ id = 46337, chance = 1500}, -- Root Backpack
{ id = 46349, chance = 1500}, -- Eternal Backpack
	{ id = 37609, chance = 2166 }, -- Green Demon Helmet
	{ id = 37607, chance = 2266 }, -- Green Demon Legs
	{ id = 37610, chance = 5066 }, -- Green Demon Slippers
	{ id = 30053, chance = 6666 }, -- Dragon Figurine
	{ id = 46294, chance = 3570}, -- Dread Bag
	{ id = 3309, chance = 1666 }, -- Thunder Hammer
    { id = 46094, chance = 3550 }, -- Eternal Bag
	{ id = 49921, chance = 20000 },  -- Boss Token
    { name = "gold token", chance = 20080 },
    { name = "silver token", chance = 20040 },
    { id = 43946, chance = 80000 },  -- Abridged Promotion Scroll
}

monster.attacks = {
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -5500, length = 8, spread = 0, effect = CONST_ME_WHITE_ENERGY_SPARK },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -2000, maxDamage = -7000, effect = CONST_ME_ICEATTACK },
	{ name = "combat", interval = 2000, chance = 7, type = COMBAT_MANADRAIN, minDamage = -800, maxDamage = -1000, range = 7, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_POFF, target = false },
	{ name = "combat", interval = 2000, chance = 13, type = COMBAT_LIFEDRAIN, minDamage = -700, maxDamage = -1700, radius = 8, effect = CONST_ME_LOSEENERGY, target = false },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = -200, maxDamage = -700, radius = 8, effect = CONST_ME_MAGIC_GREEN, target = false },
	{ name = "combat", interval = 2000, chance = 34, type = COMBAT_FIREDAMAGE, minDamage = -700, maxDamage = -2900, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -500, maxDamage = -1850, length = 8, spread = 0, effect = CONST_ME_MAGIC_RED, target = false },
}

monster.defenses = {
	defense = 160,
	armor = 160,
	{ name = "combat", interval = 2000, chance = 45, type = COMBAT_HEALING, minDamage = 5000, maxDamage = 10000, effect = CONST_ME_MAGIC_BLUE, target = false },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_HEALING, minDamage = 2000, maxDamage = 3000, effect = CONST_ME_MAGIC_BLUE, target = false },
	{ name = "speed", interval = 2000, chance = 8, speedChange = 1901, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000 },
    { name = "destroy magic walls", interval = 2000, chance = 100 },

}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 5 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = 5 },
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
	{ type = "drunk", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
