local mType = Game.createMonsterType("Darkfang")
local monster = {}

monster.description = "Darkfang"
monster.experience = 10000
monster.outfit = {
	lookType = 308,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.health = 10000
monster.maxHealth = 10000
monster.race = "blood"
monster.corpse = 18099
monster.speed = 125
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10,
}

monster.bosstiary = {
	bossRaceId = 1558,
	bossRace = RARITY_ARCHFOE,
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
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.summon = {
	maxSummons = 2,
	summons = {
		{ name = "Gloom Wolf", chance = 20, interval = 2000, count = 2 },
	},
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "You are my next meal! Grrr!", yell = false },
}

monster.loot = {
	{ name = "traditional sai", chance = 3500 },
	{ name = "platinum coin", chance = 13600000, maxCount = 10 },
	{ name = "black pearl", chance = 13600000, maxCount = 3 },
	{ name = "onyx chip", chance = 13600000, maxCount = 5 },
	{ name = "small enchanted sapphire", chance = 13600000, maxCount = 10 },
	{ name = "platinum amulet", chance = 13600000 },
	{ name = "troll green", chance = 13600000, maxCount = 2 },
	{ name = "werewolf fur", chance = 13600000, maxCount = 2 },
	{ name = "bonebreaker", chance = 4000 },
	{ name = "dreaded cleaver", chance = 4000 },
	{ name = "greater sage gem", chance = 500 },
	{ name = "greater spiritualist gem", chance = 500 },
	{ name = "greater mystic gem", chance = 500 },
	{ name = "greater marksman gem", chance = 500 },
	{ name = "greater guardian gem", chance = 500 },
	{ name = "werewolf amulet", chance = 4000 },
	{ id = 46383, chance = 1500}, -- Boneheart Backpack
	{ name = "sai", chance = 2500 },
	{ name = "wolf backpack", chance = 1000 },
	{ name = "gold token", chance = 7080 },
	{ name = "silver token", chance = 7140 },
	{ id = 49921, chance = 10000 },  -- Boss Token
	{ id = 43946, chance = 30000 },  -- Abridged Promotion Scroll
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -290 },
	{ name = "werewolf skill reducer", interval = 2000, chance = 15, range = 1, target = false },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -100, maxDamage = -300, radius = 8, effect = CONST_ME_SOUND_RED, target = false },
	{ name = "combat", interval = 2000, chance = 18, type = COMBAT_PHYSICALDAMAGE, minDamage = 200, maxDamage = 340, radius = 3, effect = CONST_ME_GROUNDSHAKER, target = false },
	{ name = "speed", interval = 2000, chance = 15, speedChange = -600, range = 7, effect = CONST_ME_MAGIC_RED, target = false, duration = 20000 },
}

monster.defenses = {
	defense = 45,
	armor = 40,
	--	mitigation = ???,
	{ name = "combat", interval = 4000, chance = 15, type = COMBAT_HEALING, minDamage = 150, maxDamage = 345, effect = CONST_ME_MAGIC_BLUE, target = false },
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
