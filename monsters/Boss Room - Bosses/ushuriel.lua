local mType = Game.createMonsterType("Ushuriel")
local monster = {}

monster.description = "Ushuriel"
monster.experience = 10000
monster.outfit = {
	lookType = 12,
	lookHead = 0,
	lookBody = 57,
	lookLegs = 0,
	lookFeet = 80,
	lookAddons = 0,
	lookMount = 0,
}


monster.health = 150000
monster.maxHealth = 150000
monster.race = "fire"
monster.corpse = 6068
monster.speed = 220
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8,
}

monster.bosstiary = {
	bossRaceId = 415,
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
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 85,
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
	{ text = "You can't run or hide forever!", yell = false },
	{ text = "I'm the executioner of the Seven!", yell = false },
	{ text = "The final punishment awaits you!", yell = false },
	{ text = "The judgement is guilty! The sentence is death!", yell = false },
}

monster.loot = {

}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1088 },
	{ name = "combat", interval = 1000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = -250, maxDamage = -500, length = 10, spread = 3, effect = CONST_ME_MORTAREA, target = false },
	{ name = "combat", interval = 1000, chance = 8, type = COMBAT_DEATHDAMAGE, minDamage = -30, maxDamage = -760, radius = 5, shootEffect = CONST_ANI_DEATH, effect = CONST_ME_MORTAREA, target = false },
	{ name = "combat", interval = 2000, chance = 9, type = COMBAT_EARTHDAMAGE, minDamage = -200, maxDamage = -585, length = 8, spread = 3, effect = CONST_ME_SMALLPLANTS, target = false },
	{ name = "combat", interval = 1000, chance = 8, type = COMBAT_ICEDAMAGE, minDamage = 0, maxDamage = -430, radius = 6, effect = CONST_ME_ICETORNADO, target = false },

}

monster.defenses = {
	defense = 45,
	armor = 50,
	{ name = "combat", interval = 1000, chance = 12, type = COMBAT_HEALING, minDamage = 400, maxDamage = 600, effect = CONST_ME_MAGIC_GREEN, target = false },
	{ name = "speed", interval = 1000, chance = 4, speedChange = 400, effect = CONST_ME_MAGIC_BLUE, target = false, duration = 7000 },
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
