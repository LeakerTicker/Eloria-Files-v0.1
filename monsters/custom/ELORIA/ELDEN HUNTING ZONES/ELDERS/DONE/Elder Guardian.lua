local mType = Game.createMonsterType("Elder Guardian")
local monster = {}

monster.description = "a Elder Guardian"
monster.experience = 90600
monster.outfit = {
	lookType = 1709,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2604


monster.Bestiary = {
	class = "Undead",
	race = BESTY_RACE_UNDEAD,
	toKill = 7000,
	FirstUnlock = 2000,
	SecondUnlock = 6000,
	CharmsPoints = 150,
	Stars = 5,
	Occurrence = 0,
	Locations = "Elder",
}







monster.health = 120000
monster.maxHealth = 120000
monster.race = "blood"
monster.corpse = 44667
monster.speed = 999
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
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 1200,
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
	{ text = "Behold, the veil of reality is torn, revealing the cosmic absurdity.", yell = false },
	{ text = "Echoes of forgotten prophecies haunt the corridors of fate.", yell = false },
	{ text = "Spectral tendrils of uncertainty grasp at the edges of your perception.", yell = false },
}

monster.loot = {




}




monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1000 }, -- same max damage as the first set
	{ name = "speed", interval = 2000, chance = 70, speedChange = -1000, range = 7, effect = CONST_ME_MAGIC_RED, target = true, duration = 10000 },
}

monster.defenses = {
	defense = 20,
	armor = 36,
	mitigation = 1.37,
	{ name = "combat", interval = 2000, chance = 8, type = COMBAT_HEALING, minDamage = 100, maxDamage = 150, effect = CONST_ME_MAGIC_RED, target = false },
	{ name = "haste", interval = 2000, chance = 90, speedChange = 700, effect = CONST_ME_MAGIC_RED, target = false, duration = 1000 },
}


monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = -20 },
	{ type = COMBAT_FIREDAMAGE, percent = 10 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -15 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = 5 },
}


monster.immunities = {
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}
mType:register(monster)
