local mType = Game.createMonsterType("Burning Guard")
local monster = {}

monster.description = "a burning guard"
monster.experience = 1
monster.outfit = {
	lookType = 242,

}



monster.health = 110000
monster.maxHealth = 110000
monster.race = "fire"
monster.corpse = 6323
monster.speed = 200
monster.manaCost = 0 






monster.changeTarget = {
	interval = 4000,
	chance = 10,
}

monster.strategiesTarget = {
	nearest = 80,
	random = 20,
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
	staticAttackChance = 80,
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
	{ text = "May the flames consume you!", yell = false },
	{ text = "Encounter the flames of destiny!", yell = false },
	{ text = "Fire and destruction!", yell = false },
}

monster.loot = {

}

monster.attacks = {
	{ name = "melee", interval = 4000, chance = 200, minDamage = -1000, maxDamage = -1040 },
	{ name = "firefield", interval = 4000, chance = 20, range = 7, radius = 3, shootEffect = CONST_ANI_FIRE, target = false },
	{ name = "combat", interval = 4000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -1784, maxDamage = -3000, length = 16, spread = 6, effect = CONST_ME_FIREATTACK, target = false },
	{ name = "combat", interval = 4000, chance = 30, type = COMBAT_FIREDAMAGE, minDamage = -620, maxDamage = -1160, range = 7, radius = 3, effect = CONST_ME_HITBYFIRE, target = false },
	{ name = "hellfire fighter soulfire", interval = 4000, chance = 30, target = false },
	{ name = "speed", interval = 2000, chance = 25, speedChange = -999, range = 7, radius = 4, shootEffect = CONST_ANI_POISON, effect = CONST_ME_GREEN_RINGS, target = true, duration = 25000 },

	
}

monster.defenses = {
	defense = 55,
	armor = 48,
	mitigation = 1.46,
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 75, maxDamage = 150, effect = CONST_ME_MAGIC_BLUE, target = false },  -- Buffed min and max damage (original: 50, 100)
	{ name = "speed", interval = 2000, chance = 15, speedChange = 480, effect = CONST_ME_MAGIC_RED, target = false, duration = 6000 },  -- Buffed speed change and duration (original: 320, 5000)
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 30 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = 40 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -20 },
	{ type = COMBAT_HOLYDAMAGE, percent = -25 },
	{ type = COMBAT_DEATHDAMAGE, percent = 50 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = true },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)