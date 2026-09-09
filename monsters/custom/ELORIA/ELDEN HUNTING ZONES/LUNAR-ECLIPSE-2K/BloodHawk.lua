local mType = Game.createMonsterType("Blood Hawk")
local monster = {}

monster.description = "a Blood Hawk"
monster.experience = 103200
monster.outfit = {
	lookType = 1064,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2583
monster.Bestiary = {
	class = "Undead",
	race = BESTY_RACE_UNDEAD,
	toKill = 6000,
	FirstUnlock = 500,
	SecondUnlock = 3000,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Elden Room, Pits of Eternity.",
}


monster.health = 106000
monster.maxHealth = 106000
monster.race = "undead"
monster.corpse = 6068
monster.speed = 800
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
	staticAttackChance = 70,
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
    { text = "You are but a pawn in a cosmic game.", yell = false },
    { text = "Fate laughs at your feeble attempts.", yell = false },
    { text = "Nightmares materialize before you.", yell = false },
}

monster.loot = {
	{ name = "green crystal coin", chance = 100000, minCount = 1, maxCount = 2 },
	{ name = "red crystal coin", chance = 10000, minCount = 1, maxCount = 2 }, -- red crystal coin - wartość 20k
	{ name = "crystal coin", chance = 15000, minCount = 1, maxCount = 2 },
	{ id = 21982, chance = 100, minCount = 1, maxCount = 1 }, -- Bounty task item
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1050 },  -- 1500*0.7=1050
	{ name = "combat", interval = 3000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -1015, maxDamage = -1540, range = 7, radius = 3, shootEffect = CONST_ANI_POISONARROW, effect = CONST_ME_GREEN_RINGS, target = true },  -- 1450*0.7=1015, 2200*0.7=1540
	{ name = "combat", interval = 2000, chance = 30, type = COMBAT_DEATHDAMAGE, minDamage = -910, maxDamage = -1365, length = 6, spread = 4, effect = CONST_ME_GREEN_RINGS, target = false },  -- 1300*0.7=910, 1950*0.7=1365
	{ name = "combat", interval = 3000, chance = 20, type = COMBAT_ICEDAMAGE, minDamage = -875, maxDamage = -1330, radius = 3, effect = CONST_ME_ICETORNADO, target = false },  -- 1250*0.7=875, 1900*0.7=1330
	{ name = "combat", interval = 3000, chance = 20, type = COMBAT_ICEDAMAGE, minDamage = -595, maxDamage = -770, range = 7, radius = 4, effect = CONST_ME_ICEATTACK, target = true },  -- 850*0.7=595, 1100*0.7=770
}


monster.defenses = {
	defense = 55,
	armor = 44,
	mitigation = 1.74,
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 180, maxDamage = 250, effect = CONST_ME_MAGIC_BLUE, target = false },
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
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
