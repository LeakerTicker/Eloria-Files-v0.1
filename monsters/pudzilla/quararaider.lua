local mType = Game.createMonsterType("Quara Raider")
local monster = {}

monster.description = "a quara raider"
monster.experience = 8150
monster.outfit = {
	lookType = 1759,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2541
monster.Bestiary = {
	class = "Aquatic",
	race = BESTY_RACE_AQUATIC,
	toKill = 2500,
	FirstUnlock = 200,
	SecondUnlock = 2500,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 1,
	Locations = "Podzilla Bottom, Podzilla Underwater ",
}

monster.health = 11500
monster.maxHealth = 11500
monster.race = "undead"
monster.corpse = 48388
monster.speed = 215
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 11,
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
	runHealth = 300,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
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
	{ text = "<blubber>", yell = false },
	{ text = "Gloh! Gloooh!", yell = false },
	{ text = "Boohacha!!!", yell = false },
}

monster.loot = {
    { name = "crystal coin", chance = 1238, maxCount = 1 },
    { name = "platinum coin", chance = 66380, maxCount = 25 },
    { id = 48508, chance = 3460 }, -- Amber Souvenir
	{ id = 3039, chance = 5460 }, -- Red Gem
    { id = 3324, chance = 4460 }, -- Skull Staff
    { id = 48509, chance = 6460 }, -- Resinous Fish Fin
    { id = 824, chance = 5560 }, -- Glacier Robe
    { id = 3041, chance = 3500 }, -- Blue Gem
    { id = 8050, chance = 2500 }, -- Crystalline Armor
    { id = 11490, chance = 1460 }, -- Quara Pincers
    { id = 7414, chance = 3550 }, -- Abyss Hammer
    { id = 45654, chance = 550 }, -- Preserved Light Blue Seed
    { id = 45656, chance = 550 }, -- Preserved Purple Seed
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 500, maxDamage = -1200 },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -600, maxDamage = -1050, length = 5, spread = 3, effect = CONST_ME_GROUNDSHAKER, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_ICEDAMAGE, minDamage = -650, maxDamage = -1060, range = 7, shootEffect = CONST_ANI_SNOWBALL, effect = CONST_ME_ICEATTACK, target = true },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -300, maxDamage = -1250, radius = 4, effect = CONST_ME_MORTAREA, target = false },
}

monster.defenses = {
	defense = 95,
	armor = 95,
	mitigation = 2.75,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 10 },
	{ type = COMBAT_ENERGYDAMAGE, percent = -10 },
	{ type = COMBAT_EARTHDAMAGE, percent = -15 },
	{ type = COMBAT_FIREDAMAGE, percent = 20 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 100 },
	{ type = COMBAT_HOLYDAMAGE, percent = 10 },
	{ type = COMBAT_DEATHDAMAGE, percent = 0 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
