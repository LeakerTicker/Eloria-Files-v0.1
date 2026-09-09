local mType = Game.createMonsterType("Kroazur")
local monster = {}

monster.description = "Kroazur"
monster.experience = 10000
monster.outfit = {
	lookType = 842,
	lookHead = 0,
	lookBody = 114,
	lookLegs = 94,
	lookFeet = 80,
	lookAddons = 2,
	lookMount = 0,
}



monster.bosstiary = {
	bossRaceId = 1515,
	bossRace = RARITY_BANE,
}

monster.health = 10000
monster.maxHealth = 10000
monster.race = "undead"
monster.corpse = 6324
monster.speed = 250
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
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
	canPushCreatures = true,
	staticAttackChance = 98,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false,
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
	{ name = "fairy wings", chance = 100000 },
	{ name = "crystal coin", chance = 100000, maxCount = 5 },
	{ name = "platinum coin", chance = 100000, maxCount = 7 },
	{ name = "small enchanted amethyst", chance = 53560, maxCount = 5 },
	{ name = "ancient coin", chance = 46980, maxCount = 3 },
	{ name = "gemmed figurine", chance = 32030 },
	{ name = "greater sage gem", chance = 500 },
	{ name = "greater spiritualist gem", chance = 500 },
	{ name = "greater mystic gem", chance = 500 },
	{ name = "greater marksman gem", chance = 500 },
	{ name = "greater guardian gem", chance = 500 },
	{ name = "small enchanted emerald", chance = 11003, maxCount = 5 },
	{ name = "small enchanted ruby", chance = 2000 },
	{ name = "cluster of solace", chance = 19960 },
	{ name = "red crystal fragment", chance = 9960 },
	{ name = "small enchanted sapphire", chance = 8900 },
	{ name = "nightmare blade", chance = 3020 },
	{ name = "gold token", chance = 7080 },
    { name = "silver token", chance = 7140 },
    { id = 49921, chance = 10000 },  -- Boss Token
	{ id = 43946, chance = 30000 },  -- Abridged Promotion Scroll
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 20, minDamage = 0, maxDamage = -650 },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -300, maxDamage = -500, target = false },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -200, maxDamage = -300, length = 8, spread = 0, effect = CONST_ME_MORTAREA, target = true },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -250, maxDamage = -300, radius = 8, effect = CONST_ME_MORTAREA, target = false },
}

monster.defenses = {
	defense = 65,
	armor = 55,
	--	mitigation = ???,
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
