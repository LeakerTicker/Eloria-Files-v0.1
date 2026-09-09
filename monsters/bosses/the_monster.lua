local mType = Game.createMonsterType("The Monster")
local monster = {}

monster.description = "The Monster"
monster.experience = 190000
monster.outfit = {
	lookType = 1600,
}

monster.bosstiary = {
	bossRaceId = 2299,
	bossRace = RARITY_ARCHFOE,
}

monster.health = 190000
monster.maxHealth = 190000
monster.race = "blood"
monster.corpse = 42247
monster.speed = 180
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 15,
}

monster.strategiesTarget = {
	nearest = 60,
	health = 30,
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
	critChance = 10,
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

monster.loot = {
	{ name = "crystal coin", chance = 1000000, maxcount = 30 },
	{ id = 3039, chance = 35542, maxCount = 12 }, -- red gem
	{ name = "yellow gem", chance = 262000, maxcount = 25 },
	{ name = "blue gem", chance = 251000 },
	{ name = "green gem", chance = 246000 },
	{ name = "violet gem", chance = 253500 },
	{ name = "giant amethyst", chance = 43000 },
	{ name = "giant topaz", chance = 46000 },
	{ name = "Mutant Hide Trousers", chance = 2500 },
	{ id = 46272, chance = 1500}, -- Terramorfo backpack
	{ id = 33778, chance = 900 }, -- raw watermelon turmaline
	{ name = "alchemist's notepad", chance = 2420 },
	{ name = "antler-horn helmet", chance = 2390 },
	{ name = "mutant bone kilt", chance = 2450 },
	{ name = "mutated skin armor", chance = 2430 },
	{ name = "mutated skin legs", chance = 2410 },
	{ name = "stitched mutant hide legs", chance = 2440 },
	{ name = "greater sage gem", chance = 500 },
	{ name = "greater spiritualist gem", chance = 500 },
	{ name = "greater mystic gem", chance = 500 },
	{ name = "greater marksman gem", chance = 500 },
	{ name = "greater guardian gem", chance = 500 },
	{ name = "alchemist's boots", chance = 4460 },
	{ name = "mutant bone boots", chance = 4400 },
	{ id = 49921, chance = 10000 },  -- Boss Token
    { name = "gold token", chance = 10080 },
    { name = "silver token", chance = 10040 },
    { id = 43946, chance = 40000 },  -- Abridged Promotion Scroll
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -2800 },
	{ name = "combat", interval = 2000, chance = 35, type = COMBAT_ENERGYDAMAGE, minDamage = -600, maxDamage = -1200, effect = CONST_ME_ENERGYAREA, target = true, radius = 5, range = 3 },
}

monster.defenses = {
	defense = 54,
	armor = 59,
	mitigation = 3.7,
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_HEALING, minDamage = 900, maxDamage = 2400, effect = CONST_ME_MAGIC_BLUE, target = false },
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
