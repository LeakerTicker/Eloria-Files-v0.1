local mType = Game.createMonsterType("Charybdis")
local monster = {}

monster.description = "a charybdis"
monster.experience = 42000
monster.outfit = {
	lookType = 1562,
}

monster.raceId = 2584
monster.Bestiary = {
	class = "Demon",
	race = BESTY_RACE_DEMON,
	toKill = 5000,
	FirstUnlock = 500,
	SecondUnlock = 2500,
	CharmsPoints = 80,
	Stars = 4,
	Occurrence = 0,
	Locations = "Elden Room Eclipse",
}

monster.health = 46000
monster.maxHealth = 46000
monster.race = "blood"
monster.corpse = 39344
monster.speed = 180
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 0,
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
	targetDistance = 2,
	runHealth = 1,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
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
	{ text = "splash", yell = false },
	{ text = "gurgle", yell = false },
	{ text = "dribble", yell = false },
}

monster.loot = {

    { name = "platinum coin", chance = 100000, minCount = 1, maxCount = 180 },
	{ name = "green crystal coin", chance = 100000, minCount = 1, maxCount = 2 },
	{ name = "crystal coin", chance = 10000, minCount = 1, maxCount = 2 },
	{ id = 33929, chance = 1380, minCount = 1, maxCount = 2 }, -- rod
	{ id = 25782, chance = 100, minCount = 1, maxCount = 1 }, -- Bounty task item
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -490, maxDamage = -910 },
	{ name = "foamsplash", interval = 3000, chance = 30, minDamage = -490, maxDamage = -910 },
	{ name = "combat", interval = 2500, chance = 40, type = COMBAT_ICEDAMAGE, minDamage = -490, maxDamage = -1050, length = 6, spread = 0, effect = CONST_ME_LOSEENERGY },
	{ name = "combat", interval = 2000, chance = 35, type = COMBAT_ICEDAMAGE, minDamage = -490, maxDamage = -980, range = 4, radius = 1, target = true, effect = CONST_ME_ICEATTACK, shootEffect = CONST_ANI_ICE },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_ICEDAMAGE, minDamage = -490, maxDamage = -910, radius = 4, target = false, effect = CONST_ME_ICEAREA },
}


monster.defenses = {
	defense = 64,
	armor = 64,
	mitigation = 1.74,
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_HEALING, minDamage = 80, maxDamage = 113 },
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
