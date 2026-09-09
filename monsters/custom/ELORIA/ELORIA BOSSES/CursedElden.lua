local mType = Game.createMonsterType("Treasure Reaper")
local monster = {}

monster.description = "a Treasure Reaper"
monster.experience = 146300
monster.outfit = {
	lookType = 944
}



monster.health = 150000
monster.maxHealth = 150000
monster.race = "undead"
monster.corpse = 25085  
monster.speed = 600
monster.manaCost = 0

monster.bosstiary = {
	bossRaceId = 2636,
	bossRace = RARITY_NEMESIS,
}




monster.changeTarget = {
	interval = 4000,
	chance = 0,
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
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
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
	{ text = "I am the CURSED.", yell = false },
	{ text = "You should not have awakened me.", yell = true },
}

monster.loot = {

	-- Common
	{ id = 3043, chance = 78750, maxCount = 100 }, -- CC
	{ id = 49393, chance = 78750, maxCount = 30 }, -- RT
	{ id = 22721, chance = 78750, maxCount = 3 }, -- GoldToken
	{ id = 3043, chance = 43737, maxCount = 10 }, -- LUNAR SOUL
	{ id = 3043, chance = 43736, maxCount = 10 }, -- ECLIPSE SOUL
	{ id = 44746, chance = 2500 }, -- green gem




}



monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -400, maxDamage = -1705 },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -1699, maxDamage = -2625, range = 7, radius = 4, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYHIT, target = true },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -1199, maxDamage = -2625, length = 9, spread = 3, effect = CONST_ME_ELECTRICALSPARK, target = false },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -1199, maxDamage = -2625, length = 9, spread = 3, effect = CONST_ME_BLUE_GHOST, target = false },
	-- energy damage
	{ name = "condition", type = CONDITION_ENERGY, interval = 2000, chance = 20, minDamage = -3000, maxDamage = -4400, radius = 5, effect = CONST_ME_FATAL, target = false },
	-- bleed
	{ name = "condition", type = CONDITION_BLEEDING, interval = 2000, chance = 20, minDamage = -2000, maxDamage = -2000, length = 9, spread = 3, effect = CONST_ME_ELECTRICALSPARK, target = false },
}







monster.defenses = {
	defense = 70,
	armor = 70,
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
	{ type = "outfit", condition = true },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
