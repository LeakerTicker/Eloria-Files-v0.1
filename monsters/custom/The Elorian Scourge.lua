local mType = Game.createMonsterType("The Elorian Scourge")
local monster = {}

monster.description = "The Elorian Scourge"
monster.experience = 375000
monster.outfit = {
	lookType = 1747,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.bosstiary = {
	bossRaceId = 2666,
	bossRace = RARITY_NEMESIS,
}

monster.health = 1000000
monster.maxHealth = 1000000
monster.race = "undead"
monster.corpse = 44012
monster.speed = 250
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
	{ text = "Stop! You won't change anything! It's already too late!", yell = false },
}

monster.loot = {
	{ id = 3043, chance = 155000, minCount = 190, maxCount = 325 },
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
	{ name = "falcon battleaxe", chance = 1470, maxCount = 1 },
	{ name = "falcon longsword", chance = 1460, maxCount = 1 },
	{ name = "falcon mace", chance = 1450, maxCount = 1 },
	{ name = "grant of arms", chance = 5000, maxCount = 1 },
	{ name = "falcon bow", chance = 2500, maxCount = 1 },
	{ name = "falcon circlet", chance = 2400, maxCount = 1 },
	{ name = "falcon coif", chance = 2350, maxCount = 1 },
	{ name = "falcon rod", chance = 2250, maxCount = 1 },
	{ name = "falcon wand", chance = 2350, maxCount = 1 },
	{ name = "falcon shield", chance = 3000, maxCount = 1 },
		{ name = "falcon sai", chance = 2350, maxCount = 1 },
	{ name = "falcon greaves", chance = 2000, maxCount = 1 },
	{ name = "falcon plate", chance = 2100, maxCount = 1 },
	{ id = 43895, chance = 4250 }, -- Bag you covet
	{ id = 51036, chance = 7000}, -- Upgrade Crystal lvl 6
	{ id = 43949, chance = 155000, minCount = 1, maxCount = 3 }, -- Wheel Scroll 13 pkt
	{ name = "gold token", chance = 100000, maxCount = 4 },
	{ name = "silver token", chance = 100000, maxCount = 4 },
	{ id = 37053, chance = 5000 },  -- Bonelrd Tome - book level +20
	{ id = 46290, chance = 5550}, -- chronobag
	{ id = 46302, chance = 5551}, -- mistery bag
	{ id = 49393, chance = 1000000, minCount = 50, maxCount = 150 }, -- reward token
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -1600, maxDamage = -3800 },
	{ name = "combat", interval = 2000, chance = 35, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -4400, length = 8, spread = 0, effect = CONST_ME_WHITE_ENERGY_SPARK },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_ICEDAMAGE, minDamage = -3200, maxDamage = -4400, effect = CONST_ME_ICEATTACK },
	{ name = "combat", interval = 2000, chance = 35, type = COMBAT_MANADRAIN, minDamage = -800, maxDamage = -2400, range = 7, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_POFF, target = false },
	{ name = "combat", interval = 2000, chance = 35, type = COMBAT_FIREDAMAGE, minDamage = -2480, maxDamage = -3520, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true },
	{ name = "combat", interval = 2000, chance = 45, type = COMBAT_LIFEDRAIN, minDamage = -2800, maxDamage = -3680, length = 8, spread = 0, effect = CONST_ME_MAGIC_RED, target = false },
}

monster.defenses = {
	defense = 135,
	armor = 135,
	{ name = "combat", interval = 5000, chance = 30, type = COMBAT_HEALING, minDamage = 3500, maxDamage = 5000, effect = 236, target = false },
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
