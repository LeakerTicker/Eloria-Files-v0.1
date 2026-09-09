local mType = Game.createMonsterType("Battlemage")
local monster = {}

monster.description = "a battlemage"
monster.experience = 42600
monster.outfit = {
	lookType = 1162,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2582
monster.Bestiary = {
	class = "Demon",
	race = BESTY_RACE_DEMON,
	toKill = 4000,
	FirstUnlock = 500,
	SecondUnlock = 2000,
	CharmsPoints = 70,
	Stars = 4,
	Occurrence = 0,
	Locations = "Elden Room Eclipse",
}

monster.health = 50000
monster.maxHealth = 50000
monster.race = "venom"
monster.corpse = 111
monster.speed = 500
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 20,
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
	runHealth = 1,
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
	{ text = "You will make sssuch a fine ssstatue!", yell = false },
	{ text = "There isss no chhhanccce of essscape", yell = false },
	{ text = "Are you tired or why are you moving thhat ssslow <chuckle>", yell = false },
	{ text = "Jussst look at me!", yell = false },
}

monster.loot = {
	{ name = "green crystal coin", chance = 100000, minCount = 1, maxCount = 2 },
	{ name = "crystal coin", chance = 10000, minCount = 1, maxCount = 2 },
    { name = "platinum coin", chance = 100000, minCount = 1, maxCount = 90 },
	{ id = 31428, chance = 100, minCount = 1, maxCount = 1 }, -- Bounty task item
}



monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -140, maxDamage = -420 },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -560, maxDamage = -994, radius = 3, effect = CONST_ME_YELLOWENERGY, target = false },
	{ name = "wyrm wave", interval = 2000, chance = 40, minDamage = -91, maxDamage = -560, target = false },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_ENERGYDAMAGE, minDamage = -490, maxDamage = -997, range = 7, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYHIT, target = false },
	{ name = "combat", interval = 2000, chance = 30, type = COMBAT_LIFEDRAIN, minDamage = -69, maxDamage = -102, length = 4, spread = 3, effect = CONST_ME_POFF, target = false },
}





monster.defenses = {
	defense = 52,
	armor = 53,
	mitigation = 1.46,
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
