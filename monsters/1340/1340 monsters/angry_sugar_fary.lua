local mType = Game.createMonsterType("Angry Sugar Fairy")
local monster = {}

monster.description = "a angry sugar fairy"
monster.experience = 3100
monster.outfit = {
	lookType = 1747,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2552
monster.Bestiary = {
	class = "Magical",
	race = BESTY_RACE_MAGICAL,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Chocolate Mines.",
}

monster.health = 3000
monster.maxHealth = 3000
monster.race = "blood"
monster.corpse = 48341
monster.speed = 200
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10,
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
	{ text = "Don't trample the beautiful sprinkles! That makes me angry!", yell = false },
	{ text = "No sweet sugar jewellery for you, intruder!", yell = false },
	{ text = "This is not the Candy Carnival! You should leave!", yell = false },
}

monster.loot = {
	{ name = "platinum coin", chance = 100000, maxCount = 5 },
	{ name = "small enchanted sapphire", chance = 15000, maxCount = 3 },
	{ name = "Small Enchanted Emerald", chance = 15000, maxCount = 3 },
	{ name = "Small Enchanted Ruby", chance = 15000, maxCount = 3 },
	{ name = "Green Crystal Splinter", chance = 10000, maxCount = 3 },
	{ name = "Violet Crystal Shard", chance = 7000, maxCount = 3 },
	{ name = "Prismatic Quartz", chance = 10000, maxCount = 3 },
	{ name = "Wild Flowers", chance = 6000, maxCount = 2 },
	{ name = "Wafer Paper Flower", chance = 7000, maxCount = 2 },
	{ name = "rainbow quartz", chance = 9000, maxCount = 2 },
	{ name = "White Pearl", chance = 5000, maxCount = 3 },
	{ name = "Ruby Necklace", chance = 5000 },
	{ name = "Wand of Cosmic Energy", chance = 8000 },
	{ name = "Butterfly Ring", chance = 5000 },
	{ name = "Spellbook of Enlightenment", chance = 2500 },
	{ name = "Hibiscus Dress", chance = 2000 },
	{ name = "Milk Chocolate Coin", chance = 4000, maxCount = 3 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -110, maxDamage = -400 },
	{ name = "combat", interval = 1300, chance = 14, type = COMBAT_HOLYDAMAGE, minDamage = -185, maxDamage = -210, length = 8, spread = 0, effect = CONST_ME_ICETORNADO, target = false },
	{ name = "combat", interval = 1000, chance = 9, type = COMBAT_ICEDAMAGE, minDamage = -120, maxDamage = -200, range = 7, shootEffect = CONST_ANI_SMALLICE, effect = CONST_ME_ICEATTACK, target = true },
}
monster.defenses = {
	defense = 38,
	armor = 74,
	mitigation = 2.31,
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
