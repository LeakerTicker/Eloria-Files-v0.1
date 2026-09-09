local mType = Game.createMonsterType("Shulgrax")
local monster = {}

monster.description = "Shulgrax"
monster.experience = 150000
monster.outfit = {
	lookType = 842,
	lookHead = 0,
	lookBody = 62,
	lookLegs = 2,
	lookFeet = 87,
	lookAddons = 1,
	lookMount = 0,
}


monster.health = 150000
monster.maxHealth = 150000
monster.race = "undead"
monster.corpse = 22495
monster.speed = 160
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8,
}

monster.bosstiary = {
	bossRaceId = 1191,
	bossRace = RARITY_ARCHFOE,
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
	{ text = "DAMMMMNNNNAAATIONN!", yell = false },
	{ text = "I WILL FEAST ON YOUR SOUL!", yell = true },
	{ text = "YOU ARE ALL DAMNED!", yell = true },
}

monster.loot = {
	{ id = 3019, chance = 19000 }, -- demonbone amulet
	{ id = 3026, chance = 129000, maxCount = 8 }, -- white pearl
	{ id = 3029, chance = 120900, maxCount = 9 }, -- small sapphire
	{ id = 3031, chance = 980900, maxCount = 200 }, -- gold coin
	{ id = 3033, chance = 100900, maxCount = 5 }, -- small amethyst
	{ id = 3035, chance = 80009, maxCount = 58 }, -- platinum coin
	{ id = 3036, chance = 199000 }, -- violet gem
	{ id = 3037, chance = 199000 }, -- yellow gem
	{ id = 3038, chance = 199000 }, -- green gem
	{ id = 3039, chance = 199000 }, -- red gem
	{ id = 3366, chance = 9700 }, -- magic plate armor
	{ name = "greater sage gem", chance = 500 },
	{ name = "greater spiritualist gem", chance = 500 },
	{ name = "greater mystic gem", chance = 500 },
	{ name = "greater marksman gem", chance = 500 },
	{ name = "greater guardian gem", chance = 500 },
	{ id = 22193, chance = 46100, maxCount = 5 }, -- onyx chip
	{ id = 22194, chance = 46100, maxCount = 5 }, -- opal
	{ id = 22726, chance = 11900 }, -- rift shield
	{ id = 46101, chance = 1500}, -- Horror Backpack
	{ id = 22727, chance = 9700 }, -- rift lance
	{ id = 22756, chance = 5500, unique = true }, -- treader of torment
	{ id = 22867, chance = 9700 }, -- rift crossbow
	{ id = 6299, chance = 13900 }, -- death ring
	{ id = 6499, chance = 191000 }, -- demonic essence
	{ id = 7416, chance = 10900 }, -- bloody edge
	{ id = 7419, chance = 13900 }, -- dreaded cleaver
	{ id = 7427, chance = 19000 }, -- chaos mace
	{ id = 7451, chance = 19900 }, -- shadow sceptre
	{ id = 281, chance = 140090, maxCount = 5 }, -- giant shimmering pearl (green)
	{ id = 282, chance = 140090, maxCount = 5 }, -- giant shimmering pearl (brown)
	{ id = 816, chance = 19000 }, -- lightning pendant
	{ id = 822, chance = 19000 }, -- lightning legs
	{ id = 9057, chance = 190000, maxCount = 5 }, -- small topaz
	{ name = "gold token", chance = 8080 },
    { name = "silver token", chance = 8040 },
    { id = 43946, chance = 35000 },  -- Abridged Promotion Scroll
    { id = 49921, chance = 10000 },  -- Boss Token
			

}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -1500, maxDamage = -2500 },
	{ name = "combat", interval = 3000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -500, maxDamage = -1000, length = 10, spread = 3, effect = CONST_ME_HITBYFIRE, target = false },
	{ name = "speed", interval = 2000, chance = 25, speedChange = -600, radius = 7, effect = CONST_ME_MAGIC_RED, target = false, duration = 15000 },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -300, maxDamage = -700, radius = 5, effect = CONST_ME_HITBYFIRE, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -500, maxDamage = -800, length = 10, spread = 3, effect = CONST_ME_EXPLOSIONHIT, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -500, maxDamage = -800, length = 8, spread = 3, effect = CONST_ME_FIREATTACK, target = false },
}

monster.defenses = {
	defense = 65,
	armor = 55,
	{ name = "combat", interval = 3000, chance = 35, type = COMBAT_HEALING, minDamage = 400, maxDamage = 6000, effect = CONST_ME_MAGIC_BLUE, target = false },
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
