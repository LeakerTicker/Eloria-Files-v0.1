local mType = Game.createMonsterType("Neferi the Spy")
local monster = {}

monster.description = "Neferi the Spy"
monster.experience = 55000
monster.outfit = {
	lookType = 149,
	lookHead = 95,
	lookBody = 121,
	lookLegs = 94,
	lookFeet = 1,
	lookAddons = 0,
	lookMount = 0,
}

monster.health = 55000
monster.maxHealth = 55000
monster.race = "blood"
monster.corpse = 36982
monster.speed = 115
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10,
}

monster.bosstiary = {
	bossRaceId = 2105,
	bossRace = RARITY_ARCHFOE,
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
}

monster.loot = {
	{ name = "crystal coin", chance = 4366, maxCount = 6 },
	{ name = "terra rod", chance = 2276 },
	{ name = "gold ingot", chance = 1045, maxCount = 1 },
	{ name = "fire sword", chance = 74600 },
	{ name = "terra boots", chance = 52200 },
	{ name = "hailstorm rod", chance = 48500 },
	{ name = "lightning headband", chance = 41000 },
	{ name = "terra hood", chance = 37300 },
	{ name = "knight axe", chance = 33600 },
	{ name = "lightning legs", chance = 33600 },
	{ id = 23533, chance = 29900 }, -- ring of red plasma
	{ name = "spellbook of warding", chance = 26100 },
	{ name = "glacier shoes", chance = 22400 },
	{ name = "knight armor", chance = 22400 },
	{ name = "eye-embroidered veil", chance = 18700 },
	{ name = "violet crystal shard", chance = 18700 },
	{ name = "glacier mask", chance = 1490 },
	{ name = "greater sage gem", chance = 500 },
	{ name = "greater spiritualist gem", chance = 500 },
	{ name = "greater mystic gem", chance = 500 },
	{ name = "greater marksman gem", chance = 500 },
	{ name = "greater guardian gem", chance = 500 },
	{ name = "sea horse figurine", chance = 1490 },
	{ id = 61728, chance = 2470 }, -- ring of orange plasma
	{ id = 61726, chance = 2470 }, -- collar of orange plasma
	{ id = 3049, chance = 1490 }, -- stealth ring
	{ name = "violet gem", chance = 14900 },
	{ name = "golden mask", chance = 7500 },
	{ name = "gold token", chance = 7080 },
	{ name = "silver token", chance = 7140 },
	{ id = 49921, chance = 10000 },  -- Boss Token
	{ id = 43946, chance = 30000 },  -- Abridged Promotion Scroll
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -150, maxDamage = -350 },
	{ name = "combat", interval = 2000, chance = 60, type = COMBAT_EARTHDAMAGE, minDamage = -700, maxDamage = -1100, radius = 3, effect = CONST_ME_SMALLPLANTS, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -650, maxDamage = -800, range = 5, radius = 3, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true },
}

monster.defenses = {
	defense = 60,
	armor = 82,
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
	{ type = "outfit", condition = true },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
