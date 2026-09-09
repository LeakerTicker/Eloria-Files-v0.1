local mType = Game.createMonsterType("Acrid")
local monster = {}

monster.description = "a Acrid"
monster.experience = 38000
monster.outfit = {
	lookType = 1598,
	lookHead = 94,
	lookBody = 77,
	lookLegs = 78,
	lookFeet = 79,
	lookAddons = 2,
	lookMount = 0,
}

monster.raceId = 2581
monster.Bestiary = {
	class = "Demon",
	race = BESTY_RACE_DEMON,
	toKill = 4000,
	FirstUnlock = 500,
	SecondUnlock = 2000,
	CharmsPoints = 60,
	Stars = 4,
	Occurrence = 0,
	Locations = "Elden Room Eclipse",
}
monster.health = 46000
monster.maxHealth = 46000
monster.race = "blood"
monster.corpse = 18118
monster.speed = 200
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
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 1,
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
	{ text = "Ahhhhrrrr!", yell = false },
	{ text = "Waaaaah!", yell = false },
	{ text = "Caaarnaaage!", yell = false },
	{ text = "Dieee!", yell = false },
}

monster.loot = {

	{ name = "green crystal coin", chance = 100000, minCount = 1, maxCount = 2 },
	{ name = "crystal coin", chance = 15000, minCount = 1, maxCount = 2 },
    { name = "platinum coin", chance = 100000, minCount = 1, maxCount = 80 },
	{ id = 31336, chance = 100, minCount = 1, maxCount = 1 }, -- Bounty task item
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1057 },
	{ name = "combat", interval = 2000, chance = 30, type = COMBAT_FIREDAMAGE, minDamage = -350, maxDamage = -560, length = 8, spread = 3, effect = CONST_ME_EXPLOSIONAREA, target = false },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_DEATHDAMAGE, minDamage = -364, maxDamage = -490, length = 8, spread = 3, effect = CONST_ME_EXPLOSIONAREA, target = false },
	{ name = "combat", interval = 2000, chance = 30, type = COMBAT_DEATHDAMAGE, minDamage = -364, maxDamage = -210, radius = 4, effect = CONST_ME_EXPLOSIONAREA, target = false },
	{ name = "fury skill reducer", interval = 2000, chance = 5, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_LIFEDRAIN, minDamage = -364, maxDamage = -630, radius = 3, effect = CONST_ME_HITAREA, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -367, maxDamage = -665, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_SMALLCLOUDS, target = false },
}


monster.defenses = {
	defense = 20,
	armor = 35,
	mitigation = 1.32,
	{ name = "speed", interval = 2000, chance = 15, speedChange = 800, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000 },
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
