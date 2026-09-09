local mType = Game.createMonsterType("Rootthing Nutshell")
local monster = {}

monster.description = "a rootthing nutshell"
monster.experience = 9200
monster.outfit = {
	lookType = 1760,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2540
monster.Bestiary = {
	class = "Plant",
	race = BESTY_RACE_PLANT,
	toKill = 2500,
	FirstUnlock = 200,
	SecondUnlock = 2500,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 1,
	Locations = "Podzilla Stalk.",
}

monster.health = 11500
monster.maxHealth = 11500
monster.race = "undead"
monster.corpse = 49148
monster.speed = 190
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
	interval = 5000,
	chance = 10,
	{ text = "<CREEAK>", yell = false },
	{ text = "<KNARRR>", yell = false },
	{ text = "<KNOORRR>", yell = false },
}

monster.loot = {
    { name = "crystal coin",     chance =   619, maxCount = 1 },
    { name = "platinum coin",    chance = 33190, maxCount = 45 },
    { id   = 3038,               chance =  1730 },  -- Green Gem
    { id   = 48510,              chance =  2730 },  -- Demon Root
    { id   = 48511,              chance =  2230 },  -- Resin Parasite
    { id   = 45657,              chance =  2730 },  -- Preserved Yellow Seed
    { id   = 45653,              chance =  2730 },  -- Preserved Red Seed
    { id   = 3326,               chance =  2230 },  -- Epee
    { id   = 6553,               chance =  1250 },  -- Ruthless Axe
    { id   = 830,                chance =   730 },  -- Terra Hood
    { id   = 8052,               chance =  1750 },  -- Swamplair Armor
}


monster.attacks = {
		{ name = "melee", interval = 2000, chance = 100, minDamage = -320, maxDamage = -963 },
		{ name = "combat", interval = 4000, chance = 25, type = COMBAT_EARTHDAMAGE, minDamage = -550, maxDamage = -900, length = 10, spread = 3, effect = CONST_ME_CARNIPHILA, target = false },
		{ name = "combat", interval = 2000, chance = 24, type = COMBAT_HOLYDAMAGE, minDamage = -330, maxDamage = -420, range = 7, radius = 3, shootEffect = CONST_ANI_SMALLHOLY, effect = CONST_ME_YELLOW_ENERGY_SPARK, target = true },
		{ name = "combat", interval = 5000, chance = 25, type = COMBAT_EARTHDAMAGE, effect = CONST_ME_EARTHHIT, minDamage = -410, maxDamage = -430, range = 4, target = false },
		{ name = "combat", interval = 2700, chance = 35, type = COMBAT_EARTHDAMAGE, shootEffect = CONST_ANI_POISON, effect = CONST_ANI_EARTH, minDamage = -310, maxDamage = -880, range = 4, target = true },
}

monster.defenses = {
	defense = 100,
	armor = 92,
	mitigation = 2.51,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 25 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 15 },
	{ type = COMBAT_EARTHDAMAGE, percent = 100 },
	{ type = COMBAT_FIREDAMAGE, percent = -15 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -5 },
	{ type = COMBAT_HOLYDAMAGE, percent = 5 },
	{ type = COMBAT_DEATHDAMAGE, percent = -10 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = true },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
