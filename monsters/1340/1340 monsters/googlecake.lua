local mType = Game.createMonsterType("Goggle Cake")
local monster = {}

monster.description = "a goggle cake"
monster.experience = 2700
monster.outfit = {
	lookType = 1740,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2534
monster.Bestiary = {
	class = "Construct",
	race = BESTY_RACE_CONSTRUCT,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Dessert Dungeons.",
}

monster.health = 2800
monster.maxHealth = 2800
monster.race = "blood"
monster.corpse = 48381
monster.speed = 200
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10,
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
	staticAttackChance = 90,
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
	{ text = "Hm? Where... where are you now?", yell = false },
	{ text = "Hunger!", yell = false },
}

monster.loot = {
	{ name = "platinum coin", chance = 100000, maxCount = 11 },
	{ name = "gold coin", chance = 100000, maxCount = 211 },
	{ name = "gummy rotworm", chance = 5000, maxCount = 4 },
	{ name = "Cream Cake", chance = 10000, maxCount = 3 },
	{ name = "Small Sapphire", chance = 7000, maxCount = 3 },
	{ name = "Small Enchanted Sapphire", chance = 10000, maxCount = 3 },
	{ name = "Rainbow Quartz", chance = 6000, maxCount = 2 },
	{ name = "Churro Heart", chance = 6000, },
	{ name = "Glacier Amulet", chance = 600 },
	{ name = "Glacier Robe", chance = 6000 },
	{ name = "Ice Rapier", chance = 10000 },
	{ name = "Epee", chance = 8000 },
	{ name = "Milk Chocolate Coin", chance = 6000, maxCount = 2 },
}
monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -225 },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -175, maxDamage = -380, length = 8, spread = 3, effect = CONST_ME_POFF, target = false },
	{ name = "speed", interval = 2000, chance = 5, speedChange = -700, radius = 3, effect = CONST_ME_POFF, target = false, duration = 12000 },
	{ name = "speed", interval = 2000, chance = 15, speedChange = -850, length = 7, spread = 3, effect = CONST_ME_ICEATTACK, target = false, duration = 18000 },
	{ name = "combat", interval = 2000, chance = 5, type = COMBAT_ICEDAMAGE, minDamage = -60, maxDamage = -120, radius = 3, effect = CONST_ME_ICETORNADO, target = false },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -100, maxDamage = -240, radius = 4, effect = CONST_ME_ICEAREA, target = true },
	{ name = "combat", interval = 2000, chance = 5, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -220, length = 1, spread = 3, effect = CONST_ME_POFF, target = false },
	{ name = "speed", interval = 2000, chance = 20, speedChange = -600, radius = 4, effect = CONST_ME_ICEAREA, target = true, duration = 12000 },
}
monster.defenses = {
	defense = 38,
	armor = 74,
	mitigation = 2.31,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 5 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 15 },
	{ type = COMBAT_EARTHDAMAGE, percent = -5 },
	{ type = COMBAT_FIREDAMAGE, percent = -10 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 15 },
	{ type = COMBAT_HOLYDAMAGE, percent = 5 },
	{ type = COMBAT_DEATHDAMAGE, percent = 5 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
