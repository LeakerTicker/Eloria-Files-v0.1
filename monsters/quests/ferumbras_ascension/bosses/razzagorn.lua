local mType = Game.createMonsterType("Razzagorn")
local monster = {}

monster.description = "Razzagorn"
monster.experience = 145000
monster.outfit = {
	lookType = 842,
	lookHead = 78,
	lookBody = 94,
	lookLegs = 13,
	lookFeet = 126,
	lookAddons = 0,
	lookMount = 0,
}



monster.bosstiary = {
	bossRaceId = 1177,
	bossRace = RARITY_ARCHFOE,
}

monster.health = 145000
monster.maxHealth = 145000
monster.race = "fire"
monster.corpse = 22495
monster.speed = 170
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8,
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
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 1,
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
	maxSummons = 2,
	summons = {
		{ name = "Eruption of Destruction", chance = 15, interval = 2000, count = 2 },
	},
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "YOUR FUTILE ATTACKS ONLY FEED MY RAGE!", yell = false },
	{ text = "YOU-ARE-WEAK!!", yell = false },
	{ text = "DEEESTRUCTIOOON!!", yell = false },
}

monster.loot = {

	{ id = 3031, chance = 980900, maxCount = 200 }, -- gold coin
	{ id = 3026, chance = 120900, maxCount = 8 }, -- white pearl
	{ id = 3029, chance = 120900, maxCount = 9 }, -- small sapphire
	{ id = 3033, chance = 100900, maxCount = 5 }, -- small amethyst
	{ id = 3035, chance = 80900, maxCount = 58 }, -- platinum coin
	{ id = 46101, chance = 1500}, -- Horror Backpack
	{ id = 3036, chance = 10900 }, -- violet gem
	{ id = 3037, chance = 10090 }, -- yellow gem
	{ id = 3039, chance = 10090 }, -- red gem
	{ id = 3041, chance = 10090 }, -- blue gem
	{ id = 3065, chance = 139000 }, -- terra rod
	{ id = 3356, chance = 8000 }, -- devil helmet
	{ id = 22193, chance = 461900, maxCount = 5 }, -- onyx chip
	{ name = "greater sage gem", chance = 500 },
	{ name = "greater spiritualist gem", chance = 500 },
	{ name = "greater mystic gem", chance = 500 },
	{ name = "greater marksman gem", chance = 500 },
	{ name = "greater guardian gem", chance = 500 },
	{ id = 22194, chance = 469100, maxCount = 5 }, -- opal
	{ id = 22762, chance = 4500, unique = true }, -- maimer
	{ id = 5021, chance = 469100, maxCount = 5 }, -- orichalcum pearl
	{ id = 6499, chance = 119000 }, -- demonic essence
	{ id = 281, chance = 194000, maxCount = 5 }, -- giant shimmering pearl (green)
	{ id = 282, chance = 194000, maxCount = 5 }, -- giant shimmering pearl (brown)
	{ id = 3422, chance = 5100, unique = true }, -- great shield
	{ id = 9057, chance = 190000, maxCount = 8 }, -- small topaz
	{ name = "gold token", chance = 8080 },
    { name = "silver token", chance = 8040 },
    { id = 43946, chance = 35000 },  -- Abridged Promotion Scroll
    { id = 49921, chance = 10000 },  -- Boss Token
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -1000, maxDamage = -2000 },
	{ name = "combat", interval = 3000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -500, maxDamage = -1000, length = 10, spread = 3, effect = CONST_ME_HITBYFIRE, target = false },
	{ name = "speed", interval = 2000, chance = 25, speedChange = -600, radius = 7, effect = CONST_ME_GREEN_RINGS, target = false, duration = 15000 },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -500, maxDamage = -700, radius = 7, effect = CONST_ME_LOSEENERGY, target = false },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -300, maxDamage = -700, radius = 5, effect = CONST_ME_EXPLOSIONHIT, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -1500, maxDamage = -1800, length = 12, spread = 3, effect = CONST_ME_MORTAREA, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -500, maxDamage = -800, length = 10, spread = 3, effect = CONST_ME_HITBYFIRE, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -500, maxDamage = -800, length = 10, spread = 3, effect = CONST_ME_ENERGYHIT, target = false },
}

monster.defenses = {
	defense = 145,
	armor = 188,
	--	mitigation = ???,
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 1000, maxDamage = 3000, effect = CONST_ME_MAGIC_BLUE, target = false },
	{ name = "speed", interval = 2000, chance = 8, speedChange = 480, effect = CONST_ME_MAGIC_RED, target = false, duration = 6000 },
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
