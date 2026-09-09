local mType = Game.createMonsterType("Elder Soul")
local monster = {}

monster.description = "a Elder Soul"
monster.experience = 290600
monster.outfit = {
	lookType = 390,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}






monster.health = 1550000
monster.maxHealth = 1550000
monster.race = "blood"
monster.corpse = 0
monster.speed = 800
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10,
}
monster.strategiesTarget = {
	nearest = 100,
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
	{ text = "I am the soul of ancient power, lingering beyond the realm of mortals.", yell = false },
	{ text = "The echoes of Elder beasts roar within me, their fury undying.", yell = false },
	{ text = "The might of the Elders flows through my essence, eternal and unforgiving.", yell = false },
}




monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -8510 }, -- boosted to match the melee damage in the reference
	{ name = "combat", interval = 2000, chance = 30, type = COMBAT_DEATHDAMAGE, minDamage = -7500, maxDamage = -8160, range = 7, radius = 1, shootEffect = CONST_ANI_DEATH, effect = CONST_ME_SMALLCLOUDS, target = true }, -- boosted to match holy damage
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -6928, maxDamage = -8620, range = 7, radius = 4, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = true }, -- boosted to match death damage
	{ name = "root", interval = 2000, chance = 10, target = true },

}

monster.defenses = {
	defense = 76,
	armor = 76,
	mitigation = 1.96,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 50 },
	{ type = COMBAT_ENERGYDAMAGE, percent = -10 },
	{ type = COMBAT_EARTHDAMAGE, percent = -10 },
	{ type = COMBAT_FIREDAMAGE, percent = 0 },
	{ type = COMBAT_LIFEDRAIN, percent = 50 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 11 },
	{ type = COMBAT_HOLYDAMAGE, percent = -10 },
	{ type = COMBAT_DEATHDAMAGE, percent = 0 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
