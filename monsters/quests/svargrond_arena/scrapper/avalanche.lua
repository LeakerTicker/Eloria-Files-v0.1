local mType = Game.createMonsterType("Avalanche")
local monster = {}

monster.description = "Avalanche"
monster.experience = 3050
monster.outfit = {
	lookType = 1298,
	lookHead = 81,
	lookBody = 114,
	lookLegs = 85,
	lookFeet = 83,
	lookAddons = 0,
	lookMount = 0,
}

monster.health = 5000
monster.maxHealth = 5000
monster.race = "undead"
monster.corpse = 34121
monster.speed = 104
monster.manaCost = 0

monster.changeTarget = {
	interval = 0,
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
	staticAttackChance = 95,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = true,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "Puny warmblood.", yell = false },
	{ text = "You will pay for imprisoning me here.", yell = false },
	{ text = "You're not cool.", yell = false },
}

monster.loot = {}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -380 },
	{ name = "combat", interval = 1000, chance = 100, type = COMBAT_DROWNDAMAGE, minDamage = -10, maxDamage = -550, length = 5, spread = 6, effect = CONST_ME_ENERGYAREA, target = false },
	{ name = "speed", interval = 2000, chance = 100, speedChange = -400, radius = 3, effect = CONST_ME_POFF, target = false, duration = 10000 },
	{ name = "combat", interval = 4000, chance = 100, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -400, range = 5, radius = 1, shootEffect = CONST_ANI_LARGEROCK, target = true },
}

monster.defenses = {
	defense = 27,
	armor = 26,
	--	mitigation = ???,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = -10 },
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
