local mType = Game.createMonsterType("Darklight Matter")
local monster = {}

monster.description = "a darklight matter"
monster.experience = 25250
monster.outfit = {
	lookType = 1624,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2380
monster.Bestiary = {
	class = "Slime",
	race = BESTY_RACE_SLIME,
	toKill = 5000,
	FirstUnlock = 200,
	SecondUnlock = 2000,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = ".",
}

monster.health = 30150
monster.maxHealth = 30150
monster.race = "venom"
monster.corpse = 43571
monster.speed = 230
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
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
	staticAttackChance = 85,
	targetDistance = 1,
	runHealth = 0,
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
	{ text = "*twiggle*", yell = false },
	{ text = "SSSSHRRR...", yell = false },
}

monster.loot = {
	{ name = "crystal coin", chance = 30000, maxCount = 1 },
	{ id = 3039, chance = 1430 }, -- red gem
	{ name = "rubber cap", chance = 7180, maxCount = 1 },
	{ id = 61728, chance = 2470 }, -- ring of orange plasma
	{ id = 61726, chance = 2470 }, -- collar of orange plasma
	{ id = 23544, chance = 3500, maxCount = 1 }, -- collar of red plasma
	{ name = "green gem", chance = 3500, maxCount = 1 },
	{ name = "shadow sceptre", chance = 3500, maxCount = 1 },
    { id = 22724, chance = 100, minCount = 1, maxCount = 1 }, -- Bounty task item
    { id = 43895, chance = 15 },  -- Bag you covet - zwykly
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -900 },
	{ name = "combat", interval = 2500, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -1100, maxDamage = -1300, radius = 5, effect = CONST_ME_PURPLESMOKE, target = true },
	{ name = "combat", interval = 2500, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -1200, maxDamage = -1400, radius = 5, effect = CONST_ME_GHOSTLY_BITE, target = true },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -1200, maxDamage = -1350, length = 8, spread = 3, effect = CONST_ME_ELECTRICALSPARK, target = false },
	{ name = "largeredring", interval = 2000, chance = 15, minDamage = -600, maxDamage = -900, target = false },
}

monster.defenses = {
	defense = 98,
	armor = 98,
	mitigation = 3.28,
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
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = false },
	{ type = "bleed", condition = false },
}

mType:register(monster)
