local mType = Game.createMonsterType("Eloriak the Blighted")
local monster = {}

monster.description = "Eloriak the Blighted"
monster.experience = 470000
monster.outfit = {
	lookType = 2745,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.bosstiary = {
	bossRaceId = 2663,
	bossRace = RARITY_NEMESIS,
}

monster.health = 1500000
monster.maxHealth = 1500000
monster.race = "undead"
monster.corpse = 37704
monster.speed = 750
monster.manaCost = 0

monster.changeTarget = {
	interval = 60000,
	chance = 40,
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
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true,
}

monster.events = {
	"dungeonBosses",
}

monster.light = {
	level = 0,
	color = 0,
}


monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "The world is falling apart because of people like you!", yell = false },
}

monster.loot = {
	{ id = 3043, chance = 155000, minCount = 190, maxCount = 325 },
	{ name = "blue gem", chance = 100000, maxCount = 9 },
	{ name = "green gem", chance = 100000, maxCount = 9 },
	{ id = 49393, chance = 1000000, minCount = 50, maxCount = 150 }, -- reward token
	{ name = "violet gem", chance = 100000, maxCount = 9 },
	{ name = "white gem", chance = 100000, maxCount = 9 },
	{ name = "yellow gem", chance = 100000, maxCount = 9 },
	{ name = "Gold Ingot", chance = 100000, maxCount = 3 },
	{ name = "giant amethyst", chance = 100000, maxCount = 4 },
	{ name = "giant topaz", chance = 100000, maxCount = 6 },
	{ name = "giant ruby", chance = 100000, maxCount = 3 },
	{ name = "giant sapphire", chance = 100000, maxCount = 4 },
	{ name = "Dragon Figurine", chance = 31970 },
	{ name = "bag you desire", chance = 9050 },
	{ name = "Fiery Tear", chance = 100970 },
	{ id = 43898, chance = 8000 },  -- Grand Sanguine Bag
	{ id = 43895, chance = 15050 },  -- Bag you covet - zwykly
	{ id = 39546, chance = 7320 },  -- Primal Bag
	{ id = 51039, chance = 6000}, -- Upgrade Crystal lvl 9
	{ id = 43950, chance = 155000, minCount = 1, maxCount = 3 }, -- Wheel Scroll 20 pkt
	{ name = "gold token", chance = 100000, maxCount = 4 },
	{ name = "silver token", chance = 100000, maxCount = 4 },
	{ id = 37053, chance = 6000 },  -- Bonelrd Tome - book level +20
		{ id = 46290, chance = 4150}, -- chronobag
	{ id = 46302, chance = 4151}, -- mistery bag
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -1600, maxDamage = -4800 },
	{ name = "combat", interval = 2000, chance = 100, type = COMBAT_PHYSICALDAMAGE, minDamage = -3200, maxDamage = -6496, range = 7, shootEffect = CONST_ANI_ARROW, target = false },
	{ name = "combat", interval = 2000, chance = 55, type = COMBAT_FIREDAMAGE, minDamage = -2000, maxDamage = -3600, range = 7, shootEffect = CONST_ANI_FIRE, target = false },
	{ name = "combat", interval = 2000, chance = 35, type = COMBAT_DEATHDAMAGE, minDamage = -2600, maxDamage = -4000, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_SMALLCLOUDS, target = false },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_EARTHDAMAGE, minDamage = -2404, maxDamage = -4036, range = 7, shootEffect = CONST_ANI_POISON, target = false },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_DEATHDAMAGE, minDamage = -2564, maxDamage = -3560, range = 7, shootEffect = CONST_ANI_DEATH, target = false },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_LIFEDRAIN, minDamage = -4000, maxDamage = -4836, range = 7, effect = CONST_ME_MAGIC_RED, target = false },
}

monster.defenses = {
	defense = 135,
	armor = 135,
	{ name = "combat", interval = 5000, chance = 30, type = COMBAT_HEALING, minDamage = 4500, maxDamage = 5000, effect = 236, target = false },
	{ name = "speed", interval = 4000, chance = 80, speedChange = 900, effect = CONST_ME_MAGIC_RED, target = false, duration = 6000 },
	{ name = "destroy magic walls", interval = 2000, chance = 100 },

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
	{ type = "drunk", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
