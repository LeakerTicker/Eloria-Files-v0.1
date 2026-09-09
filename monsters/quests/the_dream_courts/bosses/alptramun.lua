local mType = Game.createMonsterType("Alptramun")
local monster = {}

monster.description = "Alptramun"
monster.experience = 150000
monster.outfit = {
	lookType = 1143,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}


monster.health = 100000
monster.maxHealth = 100000
monster.race = "blood"
monster.corpse = 30155
monster.speed = 125
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10,
}

monster.bosstiary = {
	bossRaceId = 1698, -- or 1715 need test
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
	{ id = 23529, chance = 7500 }, -- ring of blue plasma
	{ id = 23531, chance = 8330 }, -- ring of green plasma
	{ id = 23533, chance = 7500 }, -- ring of red plasma
	{ id = 23542, chance = 10000 }, -- collar of blue plasma
	{ id = 23543, chance = 15000 }, -- collar of green plasma
	{ id = 61728, chance = 2470 }, -- ring of orange plasma
	{ id = 61726, chance = 2470 }, -- collar of orange plasma
	{ id = 3039, chance = 27500, maxCount = 2 }, -- red gem
	{ name = "abyss hammer", chance = 2500 },
	{ name = "alptramun's toothbrush", chance = 75000 },
	{ name = "blue gem", chance = 20000, maxCount = 2 },
	{ name = "chaos mace", chance = 100000 },
	{ name = "crystal coin", chance = 200000 },
	{ name = "dream shroud", chance = 70000 },
	{ name = "energy bar", chance = 925000 },
	{ name = "giant ruby", chance = 25000 },
	{ id = 282, chance = 7500 }, -- giant shimmering pearl
	{ name = "gold ingot", chance = 200000 },
	{ id = 46321, chance = 1500}, -- Core Backpack
	{ name = "gold token", chance = 750000, maxCount = 2 },
	{ name = "green gem", chance = 200000, maxCount = 2 },
	{ name = "greater sage gem", chance = 500 },
	{ name = "greater spiritualist gem", chance = 500 },
	{ name = "greater mystic gem", chance = 500 },
	{ name = "greater marksman gem", chance = 500 },
	{ name = "greater guardian gem", chance = 500 },
	{ name = "huge chunk of crude iron", chance = 37500 },
	{ name = "magic sulphur", chance = 75000 },
	{ name = "mysterious remains", chance = 92500 },
	{ name = "pair of dreamwalkers", chance = 8000 },
	{ name = "ring of the sky", chance = 50000 },
	{ name = "skull staff", chance = 325000 },
	{ name = "violet gem", chance = 175000 },
	{ name = "yellow gem", chance = 325000, maxCount = 2 },
	{ name = "gold token", chance = 7080 },
    { name = "silver token", chance = 7140 },
    { id = 49921, chance = 10000 },  -- Boss Token
	{ id = 43946, chance = 30000 },  -- Abridged Promotion Scroll
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -200, maxDamage = -1000 },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -700, maxDamage = -2000, range = 7, length = 6, spread = 0, shootEffect = CONST_ANI_POISON, effect = CONST_ME_HITBYPOISON, target = false },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -400, maxDamage = -700, range = 3, length = 6, spread = 0, effect = CONST_ME_MORTAREA, target = false },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -200, maxDamage = -500, range = 3, length = 6, spread = 0, effect = CONST_ME_HITBYFIRE, target = false },
	{ name = "stone shower rune", interval = 2000, chance = 10, minDamage = -230, maxDamage = -450, range = 7, target = false },
}

monster.defenses = {
	defense = 60,
	armor = 60,
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
