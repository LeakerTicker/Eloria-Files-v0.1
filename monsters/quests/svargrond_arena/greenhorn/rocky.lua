local mType = Game.createMonsterType("Rocky")
local monster = {}

monster.description = "Rocky"
monster.experience = 16000
monster.outfit = {
	lookType = 607,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.health = 12500
monster.maxHealth = 12500
monster.race = "undead"
monster.corpse = 20996
monster.speed = 150
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
	canWalkOnEnergy = true,
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
	{ text = "Another little gladiator!", yell = false },
	{ text = "Come into my embrace.", yell = false },
	{ text = "You are too soft for a fight.", yell = false },
	{ text = "You'll be history soon enough.", yell = false },
}

monster.loot = {}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, skill = 180, attack = 200 },
	{ name = "combat", interval = 2000, chance = 19, type = COMBAT_LIFEDRAIN, minDamage = -200, maxDamage = -400, radius = 6, effect = CONST_ME_MAGIC_RED, target = false },
	{ name = "condition", type = CONDITION_BLEEDING, interval = 2000, chance = 9, minDamage = -400, maxDamage = -600, radius = 8, effect = CONST_ME_ICEATTACK, target = false },
	{ name = "combat", interval = 2000, chance = 8, type = COMBAT_PHYSICALDAMAGE, minDamage = -250, maxDamage = -400, range = 7, radius = 6, shootEffect = CONST_ANI_LARGEROCK, effect = CONST_ME_STONES, target = true },
	{ name = "combat", interval = 2000, chance = 13, type = COMBAT_PHYSICALDAMAGE, minDamage = -200, maxDamage = -400, range = 7, radius = 4, shootEffect = CONST_ANI_WHIRLWINDCLUB, effect = CONST_ME_EXPLOSIONHIT, target = true },
	{ name = "bullwark paralyze", interval = 2000, chance = 6, target = false },
}

monster.defenses = {
	defense = 66,
	armor = 48,
	--	mitigation = ???,
	{ name = "bullwark summon", interval = 2000, chance = 20, target = false },
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
