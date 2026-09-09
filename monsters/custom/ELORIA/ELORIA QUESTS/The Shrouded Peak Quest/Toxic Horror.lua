local mType = Game.createMonsterType("Toxic Horror")
local monster = {}

monster.description = "a Toxic Horror"
monster.experience = 130000
monster.outfit = {
	lookType = 1984,

}



monster.health = 192000
monster.maxHealth = 192000
monster.race = "blood"
monster.corpse = 33867
monster.speed = 500
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
	{ text = "One bite, and your life will rot from within!", yell = false },
	{ text = "I seep through your veins… nothing will save you.", yell = false },
}

monster.loot = {
	{ name = "green crystal coin", chance = 100000 }, -- green crystal coin - wartość 10k
	{ name = "crystal coin", chance = 15000 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -500, maxDamage = -1673 },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_MANADRAIN, minDamage = -666, maxDamage = -1775, range = 7, target = false },
	{ name = "firefield", interval = 2000, chance = 20, range = 7, radius = 1, shootEffect = CONST_ANI_FIRE, target = true },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_LIFEDRAIN, minDamage = -1575, maxDamage = -2900, length = 8, spread = 3, effect = CONST_ME_PURPLEENERGY, target = false },
	{ name = "energy strike", interval = 2000, chance = 30, minDamage = -1915, maxDamage = -2550, range = 1, target = false },
	{ name = "speed", interval = 2000, chance = 25, speedChange = -200, radius = 1, effect = CONST_ME_MAGIC_RED, target = true, duration = 45000 },
}

monster.defenses = {
	defense = 55,
	armor = 48,
	mitigation = 1.46,
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 75, maxDamage = 150, effect = CONST_ME_MAGIC_BLUE, target = false },
	{ name = "speed", interval = 2000, chance = 15, speedChange = 280, effect = CONST_ME_MAGIC_RED, target = false, duration = 6000 },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 100 },
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