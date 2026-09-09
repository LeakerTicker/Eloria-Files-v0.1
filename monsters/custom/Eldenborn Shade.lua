local mType = Game.createMonsterType("Eldenborn Shade")
local monster = {}

monster.description = "Eldenborn Shade"
monster.experience = 400000
monster.outfit = {
	lookType = 1996,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.bosstiary = {
	bossRaceId = 2660,
	bossRace = RARITY_NEMESIS,
}

monster.health = 1150000
monster.maxHealth = 1150000
monster.race = "undead"
monster.corpse = 10458
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
	{ name = "falcon sai", chance = 2350, maxCount = 1 },
	{ id = 49393, chance = 1000000, minCount = 50, maxCount = 150 }, -- reward token
	{ name = "falcon shield", chance = 3000, maxCount = 1 },
	{ name = "falcon greaves", chance = 2000, maxCount = 1 },
	{ name = "falcon plate", chance = 2100, maxCount = 1 },
	{ id = 43895, chance = 4250 }, -- Bag you covet
	{ id = 51036, chance = 7000}, -- Upgrade Crystal lvl 6
	{ id = 43949, chance = 155000, minCount = 1, maxCount = 3 }, -- Wheel Scroll 13 pkt
	{ name = "gold token", chance = 100000, maxCount = 4 },
	{ name = "silver token", chance = 100000, maxCount = 4 },
	{ id = 37053, chance = 5500 },  -- Bonelrd Tome - book level +20
		{ id = 46290, chance = 6150}, -- chronobag
	{ id = 46302, chance = 6151}, -- mistery bag
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -1600, maxDamage = -3800 },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_HOLYDAMAGE, minDamage = -3040, maxDamage = -3360, length = 8, effect = CONST_ME_HOLYAREA, target = false },
	{ name = "combat", interval = 2250, chance = 25, type = COMBAT_EARTHDAMAGE, minDamage = -2800, maxDamage = -4000, radius = 5, effect = CONST_ME_HITAREA, target = false },
	{ name = "combat", interval = 2000, chance = 27, type = COMBAT_DEATHDAMAGE, minDamage = -3600, maxDamage = -4400, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = false },
	{ name = "combat", interval = 2000, chance = 35, type = COMBAT_FIREDAMAGE, minDamage = -2480, maxDamage = -3520, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true },
	{ name = "combat", interval = 2000, chance = 35, type = COMBAT_LIFEDRAIN, minDamage = -2800, maxDamage = -4680, length = 8, spread = 0, effect = CONST_ME_MAGIC_RED, target = false },
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
