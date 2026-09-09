local mType = Game.createMonsterType("Norg")
local monster = {}

monster.description = "a Norg"
monster.experience = 50000
monster.outfit = {
	lookType = 1856,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2643
monster.Bestiary = {
	class = "Demon",
	race = BESTY_RACE_DEMON,
	toKill = 5000,
	FirstUnlock = 1000,
	SecondUnlock = 2500,
	CharmsPoints = 100,
	Stars = 4,
	Occurrence = 0,
	Locations = "Elder.",
}

monster.health = 60000
monster.maxHealth = 60000
monster.race = "undead"
monster.corpse = 33817
monster.speed = 350
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 5,
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
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 1,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = true,
}

monster.light = {
	level = 4,
	color = 119,
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "GIVE ME YOUR SOUL!", yell = true },
	{ text = "I WILL FEAST ON YOUR SOUL!", yell = true },
}

monster.loot = {
	{ name = "green crystal coin", chance = 100000, minCount = 1, maxCount = 2 }, -- green crystal coin - wartość 10k
	{ id = 16136, chance = 1300, minCount = 1, maxCount = 2 }, -- Norg Heart
	{ name = "crystal coin", chance = 15000, minCount = 1, maxCount = 2 },
    { id = 31356, chance = 100, minCount = 1, maxCount = 1 }, -- Bounty task item 
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -70, maxDamage = -595 },  -- 100*0.7=70, 850*0.7=595
	{ name = "combat", interval = 3000, chance = 35, type = COMBAT_FIREDAMAGE, minDamage = -350, maxDamage = -847, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true },  -- 500*0.7=350, 1210*0.7=847
	{ name = "combat", interval = 1800, chance = 40, type = COMBAT_PHYSICALDAMAGE, minDamage = -70, maxDamage = -406, range = 7, radius = 5, effect = CONST_ME_HITAREA, target = false },  -- 100*0.7=70, 580*0.7=406
	{ name = "combat", interval = 3000, chance = 30, type = COMBAT_ENERGYDAMAGE, minDamage = -210, maxDamage = -1015, length = 8, spread = 3, effect = CONST_ME_ENERGYHIT, target = false },  -- 300*0.7=210, 1450*0.7=1015
	{ name = "combat", interval = 2500, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -140, maxDamage = -336, range = 7, radius = 5, effect = CONST_ME_MAGIC_GREEN, target = false },  -- 200*0.7=140, 480*0.7=336
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -175, maxDamage = -350, range = 7, radius = 13, effect = CONST_ME_SOUND_RED, target = false },  -- 250*0.7=175, 500*0.7=350
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -140, maxDamage = -315, radius = 14, effect = CONST_ME_LOSEENERGY, target = false },  -- 200*0.7=140, 450*0.7=315
	{ name = "combat", interval = 3000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -70, maxDamage = -140, range = 7, radius = 3, effect = CONST_ME_MAGIC_BLUE, target = false },  -- 100*0.7=70, 200*0.7=140
	{ name = "speed", interval = 2000, chance = 15, speedChange = -400, range = 7, effect = CONST_ME_SOUND_RED, target = false, duration = 20000 },
}


monster.defenses = {
	defense = 35,
	armor = 30,
	mitigation = 1.24,
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
