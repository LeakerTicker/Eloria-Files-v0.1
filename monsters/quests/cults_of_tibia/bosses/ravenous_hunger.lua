local mType = Game.createMonsterType("Ravenous Hunger")
local monster = {}

monster.description = "Ravenous Hunger"
monster.experience = 0
monster.outfit = {
	lookType = 556,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}



monster.bosstiary = {
	bossRaceId = 1427,
	bossRace = RARITY_ARCHFOE,
}

monster.health = 80000
monster.maxHealth = 80000
monster.race = "blood"
monster.corpse = 6323
monster.speed = 140
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
	rewardBoss = true,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 95,
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

monster.summon = {
	maxSummons = 4,
	summons = {
		{ name = "Mutated Bat", chance = 100, interval = 2000, count = 1 },
		{ name = "Mutated Bat", chance = 100, interval = 2000, count = 1 },
		{ name = "Mutated Bat", chance = 100, interval = 2000, count = 1 },
		{ name = "Mutated Bat", chance = 100, interval = 2000, count = 1 },
	},
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "SU-*burp* SUFFEEER!", yell = false },
}

monster.loot = {
	{ name = "bed of nails", chance = 67000 },
	{ name = "small sapphire", chance = 210000, maxCount = 10 },
	{ name = "yellow gem", chance = 120000 },
	{ id = 282, chance = 50000 }, -- giant shimmering pearl (brown)
	{ name = "platinum coin", chance = 682099, maxCount = 30 },
	{ name = "lightning legs", chance = 180000 },
	{ name = "sacred tree amulet", chance = 150000 },
	{ name = "wood cape", chance = 90000 },
	{ name = "gold coin", chance = 1000000, maxCount = 200 },
	{ name = "small emerald", chance = 19000, maxCount = 10 },
	{ id = 3039, chance = 120000 }, -- red gem
	{ name = "oriental shoes", chance = 110000 },
	{ name = "torn shirt", chance = 420000 },
	{ name = "greater sage gem", chance = 500 },
	{ name = "greater spiritualist gem", chance = 500 },
	{ name = "greater mystic gem", chance = 500 },
	{ name = "greater marksman gem", chance = 500 },
	{ name = "greater guardian gem", chance = 500 },
	{ name = "fig leaf", chance = 320000 },
	{ id = 46335, chance = 1500}, -- Dark Backpack
	{ name = "luminous orb", chance = 35000 },
	{ name = "wooden spellbook", chance = 4500 },
	{ name = "elven legs", chance = 16000 },
	{ name = "small diamond", chance = 21000, maxCount = 10 },
	{ name = "energy bar", chance = 530000, maxCount = 5 },
	{ name = "green gem", chance = 120000 },
	{ name = "broken key ring", chance = 40000 },
	{ name = "muck rod", chance = 10000 },
	{ name = "mysterious remains", chance = 100000 },
	{ name = "cobra crown", chance = 4000 },
	{ name = "elven mail", chance = 8000 },
	{ name = "gold token", chance = 7080 },
	{ name = "silver token", chance = 7140 },
	{ id = 49921, chance = 10000 },  -- Boss Token
	{ id = 43946, chance = 30000 },  -- Abridged Promotion Scroll
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -900 },
	{ name = "sudden death rune", interval = 2000, chance = 16, minDamage = -400, maxDamage = -600, target = true },
	{ name = "combat", interval = 2000, chance = 13, type = COMBAT_HOLYDAMAGE, minDamage = -450, maxDamage = -640, length = 7, effect = CONST_ME_HOLYAREA, target = false },
}

monster.defenses = {
	defense = 50,
	armor = 35,
	--	mitigation = ???,
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
