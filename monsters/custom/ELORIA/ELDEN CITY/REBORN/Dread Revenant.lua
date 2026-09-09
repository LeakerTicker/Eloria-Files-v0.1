local mType = Game.createMonsterType("Dread Revenant") -- reborn 1
local monster = {}

monster.description = "a Dread Revenant"
monster.experience = 378000
monster.outfit = {
	lookType = 167,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2648
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


monster.health = 380000
monster.maxHealth = 380000
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
	{ text = "Too late... No turning back now.", yell = false },
}

monster.loot = {
	{ name = "red crystal coin", chance = 50000, minCount = 1, maxCount = 4 }, -- red crystal coin - wartość 20k
	{ name = "pink crystal coin", chance = 15000, minCount = 1, maxCount = 4 },-- pink crystal coin - wartość 30k
	{ name = "green crystal coin", chance = 7000, minCount = 1, maxCount = 2 }, -- green crystal coin - wartość 10k
	{ name = "crystal coin", chance = 12000, maxCount = 2 },
    { id = 51429, chance = 100, minCount = 1, maxCount = 1 }, -- Bounty task item 
}

monster.attacks = {

    { name = "melee", interval = 2000, chance = 100, minDamage = -175, maxDamage = -1633 },  -- 250*0.7=175, 2333*0.7≈1633
    { name = "combat", interval = 2000, chance = 25, type = COMBAT_DEATHDAMAGE, minDamage = -1050, maxDamage = -2212, length = 4, spread = 1, effect = CONST_ME_EXPLOSIONAREA, target = false },  -- 1500*0.7=1050, 3160*0.7≈2212
    { name = "combat", interval = 2000, chance = 25, type = COMBAT_DEATHDAMAGE, minDamage = -1420, maxDamage = -2464, length = 4, effect = CONST_ME_GROUNDSHAKER, spread = 1, target = false },  -- 2028*0.7≈1420, 3520*0.7≈2464
    { name = "combat", interval = 2000, chance = 25, type = COMBAT_ENERGYDAMAGE, minDamage = -1420, maxDamage = -2464, radius = 4, effect = CONST_ME_GROUNDSHAKER, target = false },  -- 2028*0.7≈1420, 3520*0.7≈2464
    { name = "combat", interval = 2000, chance = 25, type = COMBAT_FIREDAMAGE, minDamage = -1420, maxDamage = -2842, radius = 3, effect = CONST_ME_FIREATTACK, target = false },  -- 2028*0.7≈1420, 4060*0.7≈2842
    { name = "combat", interval = 2000, chance = 20, type = COMBAT_ICEDAMAGE, minDamage = -935, maxDamage = -2121, range = 7, shootEffect = CONST_ANI_CAKE, effect = CONST_ME_FIREATTACK, target = false },  -- 1335*0.7≈935, 3030*0.7≈2121
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
