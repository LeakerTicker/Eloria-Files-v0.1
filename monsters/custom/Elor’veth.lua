local mType = Game.createMonsterType("Elorveth")
local monster = {}

monster.description = "Elorveth"
monster.experience = 200000
monster.outfit = {
	lookType = 2746,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.bosstiary = {
	bossRaceId = 2662,
	bossRace = RARITY_NEMESIS,
}

monster.health = 675000
monster.maxHealth = 675000
monster.race = "undead"
monster.corpse = 25811
monster.speed = 550
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

monster.events = {
	"dungeonBosses",
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

monster.light = {
	level = 0,
	color = 0,
}


monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "I won't let you destroy the world of Eloria!", yell = false },
}

monster.loot = {
	{ id = 3043, chance = 155000, minCount = 120, maxCount = 255 },
	{ name = "blue gem", chance = 100000, maxCount = 9 },
	{ name = "green gem", chance = 100000, maxCount = 9 },
	{ name = "violet gem", chance = 100000, maxCount = 9 },
	{ name = "white gem", chance = 100000, maxCount = 9 },
	{ name = "yellow gem", chance = 100000, maxCount = 9 },
	{ name = "Gold Ingot", chance = 100000, maxCount = 3 },
	{ name = "giant amethyst", chance = 100000, maxCount = 4 },
	{ name = "giant topaz", chance = 100000, maxCount = 6 },
	{ name = "giant ruby", chance = 100000, maxCount = 3 },
	{ name = "giant sapphire", chance = 100000, maxCount = 4 },
	{ name = "Dragon Figurine", chance = 31970 },
	{ name = "bag you desire", chance = 5050 },
	{ name = "Fiery Tear", chance = 100970 },
	{ id = 43895, chance = 3250 }, -- Bag you covet
	{ id = 51032, chance = 1500}, -- Upgrade Crystal lvl 2
	{ id = 30060, chance = 10000 }, -- Giant Emerald
	{ id = 14112, chance = 10000 }, -- Bar of Gold
	{ id = 43947, chance = 155000, minCount = 1, maxCount = 2 }, -- Wheel Scroll 5 pkt
	{ name = "gold token", chance = 100000, maxCount = 4 },
	{ name = "silver token", chance = 100000, maxCount = 4 },
	{ id = 37053, chance = 5000 },  -- Bonelrd Tome - book level +20
	{ id = 46290, chance = 2550}, -- chronobag
	{ id = 46302, chance = 2551}, -- mistery bag
	{ id = 49393, chance = 1000000, minCount = 50, maxCount = 150 }, -- reward token
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -600, maxDamage = -1000 },
	{ name = "combat", interval = 3000, chance = 35, type = COMBAT_ICEDAMAGE, minDamage = -2320, maxDamage = -3200, range = 7, radius = 7, shootEffect = CONST_ANI_ICE, effect = 243, target = true },
	{ name = "combat", interval = 2000, chance = 45, type = COMBAT_DEATHDAMAGE, minDamage = -1200, maxDamage = -1400, length = 8, spread = 0, effect = 252, target = false },
	{ name = "combat", interval = 3000, chance = 35, type = COMBAT_FIREDAMAGE, minDamage = -1600, maxDamage = -1800, length = 8, spread = 0, effect = 249, target = false },
	{ name = "combat", interval = 2000, chance = 45, type = COMBAT_ICEDAMAGE, minDamage = -1560, maxDamage = -2800, range = 7, radius = 3, shootEffect = 37, effect = 240, target = true },
	{ name = "combat", interval = 2000, chance = 35, type = COMBAT_DEATHDAMAGE, minDamage = -1600, maxDamage = -2800, length = 8, spread = 0, effect = 244, target = false },
}

monster.defenses = {
	defense = 135,
	armor = 135,
	{ name = "combat", interval = 5000, chance = 30, type = COMBAT_HEALING, minDamage = 2500, maxDamage = 3000, effect = 236, target = false },
	{ name = "speed", interval = 4000, chance = 80, speedChange = 900, effect = CONST_ME_MAGIC_RED, target = false, duration = 6000 },
	{ name = "destroy magic walls", interval = 1000, chance = 100 },

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
