local mType = Game.createMonsterType("Voice of Eloria")
local monster = {}

monster.description = "Voice of Eloria"
monster.experience = 425000
monster.outfit = {
	lookType = 2743,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.bosstiary = {
	bossRaceId = 2667,
	bossRace = RARITY_NEMESIS,
}

monster.health = 1200000
monster.maxHealth = 1200000
monster.race = "undead"
monster.corpse = 12821
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

monster.light = {
	level = 0,
	color = 0,
}

monster.events = {
	"dungeonBosses",
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
	{ name = "bag you desire", chance = 7050 },
	{ name = "Fiery Tear", chance = 100970 },
	{ name = "greater sage gem", chance = 55000, minCount = 1, maxCount = 2 }, 
	{ name = "greater mystic gem", chance = 55000, minCount = 1, maxCount = 2 },  
	{ name = "greater marksman gem", chance = 55000, minCount = 1, maxCount = 2 }, 
	{ name = "greater guardian gem", chance = 55000, minCount = 1, maxCount = 2 }, 
	{ name = "greater spiritualist gem", chance = 55000, minCount = 1, maxCount = 2 }, 
	{ id = 43895, chance = 5250 }, -- Bag you covet
	{ id = 51037, chance = 6000}, -- Upgrade Crystal lvl 7
	{ id = 43949, chance = 155000, minCount = 1, maxCount = 3 }, -- Wheel Scroll 13 pkt
	{ name = "gold token", chance = 100000, maxCount = 4 },
	{ name = "silver token", chance = 100000, maxCount = 4 },
	{ id = 37053, chance = 5500 },  -- Bonelrd Tome - book level +20
		{ id = 46290, chance = 6550}, -- chronobag
	{ id = 46302, chance = 6551}, -- mistery bag
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -1600, maxDamage = -4800 },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_HOLYDAMAGE, minDamage = -3040, maxDamage = -3360, length = 8, effect = CONST_ME_HOLYAREA, target = false },
	{ name = "combat", interval = 2000, chance = 35, type = COMBAT_EARTHDAMAGE, minDamage = -2800, maxDamage = -4000, radius = 5, effect = CONST_ME_HITAREA, target = false },
	{ name = "condition", type = CONDITION_POISON, interval = 2000, chance = 35, minDamage = -2656, maxDamage = -4432, range = 7, shootEffect = CONST_ANI_POISON, target = false },
	{ name = "condition", type = CONDITION_ENERGY, interval = 2000, chance = 30, minDamage = -4240, maxDamage = -6800, radius = 6, effect = CONST_ME_AVATAR_APPEAR, target = false },
	{ name = "condition", type = CONDITION_FIRE, interval = 2000, chance = 30, minDamage = -2800, maxDamage = -6160, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true },
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
