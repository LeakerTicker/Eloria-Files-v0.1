local mType = Game.createMonsterType("Morshabaal")
local monster = {}

monster.description = "Morshabaal"
monster.experience = 3000000
monster.outfit = {
	lookType = 1468,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.health = 25000000
monster.maxHealth = 25000000
monster.race = "blood"
monster.corpse = 37704
monster.speed = 530
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 10,
}

monster.bosstiary = {
	bossRaceId = 2118,
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
	staticAttackChance = 70,
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
	{ text = "Revenge for my little brother!", yell = false },
	{ text = "You are starting to annoy me!", yell = false },
	{ text = "I will restore our family honor!", yell = false },
}

monster.summons = {
	{ name = "Fate Scorpion", chance = 100, interval = 1000, count = 3 },
}

monster.loot = {
	{ id = 37810, chance = 100000 }, -- Morshabaal's Extract
	{ id = 37613, chance = 6666 }, -- Morshabaal's Brain
	{ id = 63792, chance = 9999 }, -- Fate Essence
	{ id = 46290, chance = 4150}, -- chronobag
	{ id = 46302, chance = 4151}, -- mistery bag
	{ id = 46294, chance = 2570}, -- Dread Bag
	{ id = 3309, chance = 1666 }, -- Thunder Hammer
    { id = 46094, chance = 2550 }, -- Eternal Bag
	{ id = 49921, chance = 1000000, minCount = 10, maxCount = 20 },  -- Boss Token
	{ id = 55014, chance = 2000 },  -- Unicorn Backpack
}

monster.attacks = {
	{ name = "combat", interval = 2000, chance = 35, type = COMBAT_PHYSICALDAMAGE, minDamage = -5500, maxDamage = -15500, length = 8, spread = 0, effect = CONST_ME_WHITE_ENERGY_SPARK },
	{ name = "combat", interval = 2000, chance = 55, type = COMBAT_ICEDAMAGE, minDamage = -4000, maxDamage = -30000, effect = CONST_ME_ICEATTACK },
	{ name = "melee", interval = 2000, chance = 100, skill = 200, attack = 250 },
	{ name = "combat", interval = 1000, chance = 30, type = COMBAT_MANADRAIN, minDamage = -1000, maxDamage = -10000, range = 7, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_POFF, target = false },
	{ name = "strength", interval = 1000, chance = 25, range = 7, shootEffect = CONST_ANI_LARGEROCK, effect = CONST_ME_ENERGYAREA, target = false },
	{ name = "combat", interval = 1000, chance = 13, type = COMBAT_LIFEDRAIN, minDamage = -400, maxDamage = -700, radius = 8, effect = CONST_ME_LOSEENERGY, target = false },
	{ name = "melee", interval = 2000, chance = 100, minDamage = -3000, maxDamage = -19013 },
	{ name = "combat", interval = 1000, chance = 35, type = COMBAT_ENERGYDAMAGE, minDamage = -7600, maxDamage = -9900, radius = 7, effect = CONST_ME_ENERGYHIT, target = false },
	{ name = "combat", interval = 1000, chance = 50, type = COMBAT_EARTHDAMAGE, minDamage = -8400, maxDamage = -11800, radius = 7, effect = CONST_ME_SMALLPLANTS, target = false },
	{ name = "combat", interval = 3000, chance = 35, type = COMBAT_FIREDAMAGE, minDamage = -5200, maxDamage = -14600, range = 3, radius = 3, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true },
	{ name = "combat", interval = 1000, chance = 25, type = COMBAT_MANADRAIN, minDamage = -4000, maxDamage = -15000, radius = 3, effect = CONST_ME_MAGIC_GREEN, target = false },
	{ name = "speed", interval = 1000, chance = 12, speedChange = -1000, radius = 6, effect = CONST_ME_POISONAREA, target = false, duration = 60000 },
	{ name = "strength", interval = 1000, chance = 8, radius = 5, effect = CONST_ME_HITAREA, target = false },
	{ name = "combat", interval = 1000, chance = 34, type = COMBAT_FIREDAMAGE, minDamage = -2100, maxDamage = -5900, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true },
	{ name = "combat", interval = 1000, chance = 25, type = COMBAT_LIFEDRAIN, minDamage = -3500, maxDamage = -9850, length = 8, spread = 0, effect = CONST_ME_MAGIC_RED, target = false },
	    { name = "melee", interval = 2000, chance = 100, minDamage = -2600, maxDamage = -7000 },
    { name = "combat", interval = 3000, chance = 35, type = COMBAT_ICEDAMAGE, minDamage = -4320, maxDamage = -7200, range = 7, radius = 7, shootEffect = CONST_ANI_ICE, effect = 243, target = true },
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -4200, maxDamage = -7400, length = 8, spread = 0, effect = 252, target = false },
    { name = "combat", interval = 3000, chance = 35, type = COMBAT_FIREDAMAGE, minDamage = -4600, maxDamage = -7800, length = 8, spread = 0, effect = 249, target = false },
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -4560, maxDamage = -7800, range = 7, radius = 3, shootEffect = 37, effect = 240, target = true },
    { name = "combat", interval = 2000, chance = 35, type = COMBAT_DEATHDAMAGE, minDamage = -4600, maxDamage = -7800, length = 8, spread = 0, effect = 244, target = false },
}

monster.defenses = {
	defense = 160,
	armor = 160,
	{ name = "combat", interval = 1000, chance = 15, type = COMBAT_HEALING, minDamage = 5000, maxDamage = 10000, effect = CONST_ME_MAGIC_BLUE, target = false },
	{ name = "combat", interval = 1000, chance = 25, type = COMBAT_HEALING, minDamage = 2000, maxDamage = 3000, effect = CONST_ME_MAGIC_BLUE, target = false },
	{ name = "speed", interval = 1000, chance = 8, speedChange = 1901, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000 },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 30 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 35 },
	{ type = COMBAT_EARTHDAMAGE, percent = 30 },
	{ type = COMBAT_FIREDAMAGE, percent = 35 },
	{ type = COMBAT_LIFEDRAIN, percent = 30 },
	{ type = COMBAT_MANADRAIN, percent = 30 },
	{ type = COMBAT_DROWNDAMAGE, percent = 30 },
	{ type = COMBAT_ICEDAMAGE, percent = 30 },
	{ type = COMBAT_HOLYDAMAGE, percent = 30 },
	{ type = COMBAT_DEATHDAMAGE, percent = 30 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "drunk", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
