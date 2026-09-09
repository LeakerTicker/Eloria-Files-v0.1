local mType = Game.createMonsterType("Orcus the Cruel")
local monster = {}

monster.description = "Orcus the Cruel"
monster.experience = 28000
monster.outfit = {
	lookType = 2,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.health = 23000
monster.maxHealth = 23000
monster.race = "blood"
monster.corpse = 6008
monster.speed = 120
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
	canWalkOnFire = true,
	canWalkOnPoison = false,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "Ocrus will rule!", yell = false },
	{ text = "I'll kill you slow and painful.", yell = false },
}

monster.loot = {}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1990 },
	{ name = "combat", interval = 1000, chance = 13, type = COMBAT_MANADRAIN, minDamage = -300, maxDamage = -600, range = 7, target = false },
	{ name = "combat", interval = 1000, chance = 6, type = COMBAT_MANADRAIN, minDamage = -150, maxDamage = -350, radius = 5, effect = CONST_ME_POISONAREA, target = false },
	{ name = "effect", interval = 1000, chance = 6, radius = 5, effect = CONST_ME_HITAREA, target = false },
	{ name = "combat", interval = 1000, chance = 34, type = COMBAT_FIREDAMAGE, minDamage = -310, maxDamage = -600, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true },
	{ name = "firefield", interval = 1000, chance = 10, range = 7, radius = 4, shootEffect = CONST_ANI_FIRE, target = true },
	{ name = "combat", interval = 1000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -500, maxDamage = -850, length = 8, spread = 3, effect = CONST_ME_ENERGYHIT, target = false },
}

monster.defenses = {
	defense = 111,
	armor = 90,
	--	mitigation = ???,
	{ name = "speed", interval = 1000, chance = 5, speedChange = 1901, effect = CONST_ME_MAGIC_RED, target = false, duration = 7000 },
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

monster.events = {
	"bossArenaReward",
}

mType:register(monster)
