local mType = Game.createMonsterType("Tenmora") -- reborn 1
local monster = {}

monster.description = "a Tenmora"
monster.experience = 378000
monster.outfit = {
	lookType = 2049,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2651
monster.Bestiary = {
	class = "Undead",
	race = BESTY_RACE_UNDEAD,
	toKill = 10000,
	FirstUnlock = 2000,
	SecondUnlock = 5000,
	CharmsPoints = 300,
	Stars = 5,
	Occurrence = 0,
	Locations = "Reborn - Elden Room.",
}


monster.health = 333000
monster.maxHealth = 333000
monster.race = "undead"
monster.corpse = 5972
monster.speed = 750
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
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
	interval = 10000,
	chance = 10,
	{ text = "I'm not here. I am there.", yell = false },
	{ text = "The night is coming for you.", yell = false },
}

monster.loot = {
	{ name = "red crystal coin", chance = 50000, minCount = 1, maxCount = 4 }, -- red crystal coin - wartość 20k
	{ name = "pink crystal coin", chance = 15000, minCount = 1, maxCount = 4 }, -- pink crystal coin - wartość 30k
	{ name = "green crystal coin", chance = 7000, minCount = 1, maxCount = 2 }, -- green crystal coin - wartość 10k
	{ name = "crystal coin", chance = 20000, minCount = 1, maxCount = 5 },
	{ name = "Tenmora Broken Heart", chance = 1300, minCount = 1, maxCount = 2 },
    { id = 51429, chance = 100, minCount = 1, maxCount = 1 }, -- Bounty task item 
}

monster.attacks = {

    { name = "melee", interval = 2000, chance = 100, minDamage = -175, maxDamage = -1750 },  -- 250*0.7=175, 2500*0.7=1750
    { name = "combat", interval = 2000, chance = 30, type = COMBAT_DEATHDAMAGE, minDamage = -2450, maxDamage = -4312, length = 4, spread = 1, effect = CONST_ME_EXPLOSIONAREA, target = false },  -- 3500*0.7=2450, 6160*0.7≈4312
    { name = "combat", interval = 2000, chance = 25, type = COMBAT_DEATHDAMAGE, minDamage = -2120, maxDamage = -3514, length = 4, effect = CONST_ME_GROUNDSHAKER, spread = 1, target = false },  -- 3028*0.7≈2120, 5020*0.7≈3514
    { name = "combat", interval = 2000, chance = 30, type = COMBAT_ICEDAMAGE, minDamage = -2334, maxDamage = -2821, range = 7, shootEffect = CONST_ANI_CAKE, effect = CONST_ME_FIREATTACK, target = false },  -- 3335*0.7≈2334, 4030*0.7≈2821
}


monster.defenses = {
	defense = 55,
	armor = 44,
	mitigation = 1.74,
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 180, maxDamage = 1250, effect = CONST_ME_MAGIC_BLUE, target = false },
	{ name = "speed", interval = 2000, chance = 15, speedChange = 320, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000 },
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
