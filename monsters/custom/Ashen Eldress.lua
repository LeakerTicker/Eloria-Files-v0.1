local mType = Game.createMonsterType("Ashen Eldress")
local monster = {}

monster.description = "Ashen Eldress"
monster.experience = 290000
monster.outfit = {
	lookType = 2744,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.bosstiary = {
	bossRaceId = 2655,
	bossRace = RARITY_NEMESIS,
}

monster.health = 1350000
monster.maxHealth = 1350000
monster.race = "undead"
monster.corpse = 12823
monster.speed = 650
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
	{ text = "Stop! You won't change anything! It's already too late!", yell = false },
}

monster.loot = {
	{ id = 3043, chance = 155000, minCount = 190, maxCount = 325 },
	{ name = "blue gem", chance = 100000, maxCount = 9 },
	{ name = "green gem", chance = 100000, maxCount = 9 },
	{ name = "violet gem", chance = 100000, maxCount = 9 },
	{ id = 49393, chance = 1000000, minCount = 50, maxCount = 150 }, -- reward token
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
	{ id = 46071, chance = 1500}, -- Spiritthorn Backpack
	{ id = 46073, chance = 957}, -- Arboreal Crown
	{ id = 46072, chance = 1500}, -- Arcanomancer Backpack
	{ name = "arcanomancer regalia", chance = 956 },
	{ name = "arcanomancer folio", chance = 955 },
	{ id = 39183, chance = 954 }, -- name = "charged arcanomancer sigil"
	{ id = 39186, chance = 953 }, -- name = "charged arboreal ring"
	{ id = 39180, chance = 952 }, -- name = "charged alicorn ring"
	{ id = 39177, chance = 951 }, -- name = "charged spiritthorn ring"
	{ id = 43895, chance = 6250 }, -- Bag you covet
	{ id = 51038, chance = 7000}, -- Upgrade Crystal lvl 8
	{ id = 43950, chance = 155000, minCount = 1, maxCount = 3 }, -- Wheel Scroll 20 pkt
	{ name = "gold token", chance = 100000, maxCount = 4 },
	{ name = "silver token", chance = 100000, maxCount = 4 },
	{ id = 37053, chance = 6000 },  -- Bonelrd Tome - book level +20
		{ id = 46290, chance = 7150}, -- chronobag
	{ id = 46302, chance = 7151}, -- mistery bag
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -1600, maxDamage = -4800 },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_EARTHDAMAGE, minDamage = -2872, maxDamage = -4920, length = 2, spread = 0, effect = CONST_ME_GROUNDSHAKER, target = false },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -4560, maxDamage = -5400, range = 6, radius = 2, effect = CONST_ME_ICETORNADO, target = true },
	{ name = "combat", interval = 2000, chance = 100, type = COMBAT_HOLYDAMAGE, minDamage = -1736, maxDamage = -5784, range = 5, radius = 5, shootEffect = CONST_ANI_HOLY, effect = CONST_ME_HOLYAREA, target = true },
	{ name = "combat", interval = 2000, chance = 45, type = COMBAT_LIFEDRAIN, minDamage = -2712, maxDamage = -4120, length = 2, spread = 0, effect = CONST_ME_MAGIC_RED, target = false },
	{ name = "combat", interval = 2000, chance = 45, type = COMBAT_ENERGYDAMAGE, minDamage = -2552, maxDamage = -4168, length = 2, spread = 0, effect = CONST_ME_ENERGYHIT, target = false },
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
