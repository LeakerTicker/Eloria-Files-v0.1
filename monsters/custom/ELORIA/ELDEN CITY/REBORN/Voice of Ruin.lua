local mType = Game.createMonsterType("Voice of Ruin") -- reborn 12
local monster = {}

monster.description = "an Voice of Ruin"
monster.experience = 639000
monster.outfit = {
	lookType = 544,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2654
monster.Bestiary = {
	class = "Undead",
	race = BESTY_RACE_HUMAN,
	toKill = 15000,
	FirstUnlock = 5000,
	SecondUnlock = 10000,
	CharmsPoints = 350,
	Stars = 5,
	Occurrence = 0,
	Locations = ".",
}

monster.health = 540000
monster.maxHealth = 540000
monster.race = "blood"
monster.corpse = 5972
monster.speed = 690
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
	interval = 10000,
	chance = 10,
	{ text = "Do you really think you can stand?", yell = false },
}

monster.loot = {
 	{ name = "red crystal coin", chance = 50000, minCount = 1, maxCount = 8 }, -- red crystal coin - wartość 20k
	{ name = "pink crystal coin", chance = 15000, minCount = 1, maxCount = 10 }, -- pink crystal coin - wartość 30k
	{ name = "green crystal coin", chance = 7000, minCount = 1, maxCount = 10 }, -- green crystal coin - wartość 10k
	{ name = "crystal coin", chance = 12000, minCount = 1, maxCount = 10 },
	{ name = "cursed gold", chance = 1300, minCount = 1, maxCount = 2 },
    { id = 9388, chance = 100, minCount = 1, maxCount = 1 }, -- Bounty task item 
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -840, maxDamage = -3500, effect = CONST_ME_DRAWBLOOD },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_DEATHDAMAGE, minDamage = -2450, maxDamage = -4900, radius = 3, effect = CONST_ME_MORTAREA, target = false },
	{ name = "combat", interval = 2000, chance = 50, type = COMBAT_ICEDAMAGE, minDamage = -1505, maxDamage = -3080, length = 4, spread = 0, effect = CONST_ME_ICEATTACK, target = false },
	{ name = "singlecloudchain", interval = 2000, chance = 30, minDamage = -1960, maxDamage = -3115, range = 4, effect = CONST_ME_ENERGYHIT, target = true },
}


monster.defenses = {
	defense = 86,
	armor = 83,
	mitigation = 2.40,
	{ name = "combat", interval = 4000, chance = 40, type = COMBAT_HEALING, minDamage = 200, maxDamage = 5050, effect = CONST_ME_MAGIC_BLUE, target = false },
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
