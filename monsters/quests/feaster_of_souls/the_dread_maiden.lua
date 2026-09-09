local mType = Game.createMonsterType("The Dread Maiden")
local monster = {}

monster.description = "The Dread Maiden"
monster.experience = 122000
monster.outfit = {
	lookType = 1278,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}


monster.bosstiary = {
	bossRaceId = 1872,
	bossRace = RARITY_ARCHFOE,
}

monster.health = 120000
monster.maxHealth = 120000
monster.race = "undead"
monster.corpse = 32744
monster.speed = 125
monster.manaCost = 0

monster.changeTarget = {
	interval = 60000,
	chance = 0,
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
	{ text = "You will be mine for eternity!", yell = false },
}

monster.loot = {
	{ id = 3043, chance = 100000, minCount = 1, maxCount = 2 }, -- crystal coin
	{ id = 32770, chance = 480300 }, -- diamond
	{ id = 32769, chance = 480300 }, -- white gem
	{ id = 32771, chance = 400030, minCount = 1, maxCount = 2 }, -- moonstone
	{ id = 32772, chance = 200200 }, -- silver hand mirror
	{ id = 32773, chance = 160200 }, -- ivory comb
	{ id = 32626, chance = 120200 }, -- amber
	{ id = 32589, chance = 40300 }, -- angel figurine
	{ name = "greater sage gem", chance = 500 },
	{ name = "greater spiritualist gem", chance = 500 },
	{ name = "greater mystic gem", chance = 500 },
	{ name = "greater marksman gem", chance = 500 },
	{ name = "greater guardian gem", chance = 500 },
	{ id = 46006, chance = 1500}, -- Dread Backpack
	{ id = 32774, chance = 40200 }, -- cursed bone
	{ id = 32596, chance = 40400 }, -- dark bell (Silver)
	{ id = 49509, chance = 4050 }, -- Jade Legs
	{ id = 32595, chance = 40300 }, -- jagged sickle
	{ id = 32619, chance = 2730 }, -- pair of nightmare boots
	{ name = "gold token", chance = 8080 },
    { name = "silver token", chance = 8040 },
    { id = 43946, chance = 35000 },  -- Abridged Promotion Scroll
    { id = 49921, chance = 10000 },  -- Boss Token
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -600, condition = { type = CONDITION_POISON, totalDamage = 4, interval = 4000 } },
	{ name = "combat", interval = 2000, chance = 35, type = COMBAT_DEATHDAMAGE, minDamage = -350, maxDamage = -750, radius = 4, shootEffect = CONST_ANI_DEATH, effect = CONST_ME_SMALLCLOUDS, target = true },
	{ name = "combat", interval = 4000, chance = 50, type = COMBAT_DEATHDAMAGE, minDamage = -600, maxDamage = -1500, length = 7, effect = CONST_ME_POFF, target = false },
	{ name = "dread rcircle", interval = 2000, chance = 40, minDamage = -400, maxDamage = -1000 },
}

monster.defenses = {
	defense = 170,
	armor = 170,
	--	mitigation = ???,
	{ name = "speed", interval = 10000, chance = 40, speedChange = 510, effect = CONST_ME_MAGIC_GREEN, target = false, duration = 20000 },
	{ name = "combat", interval = 5000, chance = 60, type = COMBAT_HEALING, minDamage = 1000, maxDamage = 2500, effect = CONST_ME_MAGIC_BLUE, target = false },
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
