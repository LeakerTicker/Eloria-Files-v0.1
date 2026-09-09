local mType = Game.createMonsterType("Urmahlullu the Weakened")
local monster = {}

monster.description = "Urmahlullu the Weakened"
monster.experience = 55000
monster.outfit = {
	lookType = 1197,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.bosstiary = {
	bossRaceId = 1811,
	bossRace = RARITY_ARCHFOE,
}

monster.health = 100000
monster.maxHealth = 100000
monster.race = "blood"
monster.corpse = 31413
monster.speed = 95
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
	rewardBoss = true,
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
	{ text = "You will regret this!", yell = false },
	{ text = "Now you have to die!", yell = false },
}

monster.loot = {
	{ name = "platinum coin", chance = 100000, maxCount = 9 },
	{ name = "green gem", chance = 100000, maxCount = 2 },
	{ id = 3039, chance = 53850, maxCount = 2 }, -- red gem
	{ name = "lightning pendant", chance = 30770 },
	{ name = "magma coat", chance = 230080 },
	{ name = "magma amulet", chance = 190230 },
	{ name = "greater sage gem", chance = 500 },
	{ name = "greater spiritualist gem", chance = 500 },
	{ name = "greater mystic gem", chance = 500 },
	{ name = "greater marksman gem", chance = 500 },
	{ name = "greater guardian gem", chance = 500 },
	{ name = "gold ingot", chance = 192300 },
	{ name = "blue gem", chance = 153800 },
	{ name = "magma monocle", chance = 150380 },
	{ name = "yellow gem", chance = 150380 },
	{ name = "crystal coin", chance = 110540, maxCount = 5 },
	{ id = 46387, chance = 1500}, -- Arcana Backpack
	{ name = "violet gem", chance = 76900 },
	{ name = "urmahlullu's paw", chance = 76900 },
	{ id = 281, chance = 7690 }, -- giant shimmering pearl
	{ name = "tagralt blade", chance = 8500 },
	{ name = "giant sapphire", chance = 38500 },
	{ name = "urmahlullu's mane", chance = 38500 },
	{ name = "winged boots", chance = 7850 },
	{ name = "urmahlullu's tail", chance = 69800 },
	{ name = "lightning legs", chance = 64000 },
	{ name = "giant emerald", chance = 34900 },
	{ name = "giant ruby", chance = 34900 },
	{ id = 30403, chance = 8740 }, -- enchanted theurgic amulet
	{ name = "winged backpack", chance = 2500 },
	{ name = "rainbow necklace", chance = 11600 },
	{ id = 30403, chance = 6600 }, -- enchanted theurgic amulet
	{ name = "gold token", chance = 7080 },
    { name = "silver token", chance = 7140 },
    { id = 49921, chance = 10000 },  -- Boss Token
	{ id = 43946, chance = 30000 },  -- Abridged Promotion Scroll
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -50, maxDamage = -1100 },
	{ name = "combat", interval = 3000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -500, maxDamage = -800, radius = 4, effect = CONST_ME_FIREAREA, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -550, maxDamage = -800, radius = 3, effect = CONST_ME_FIREAREA, target = false },
	{ name = "urmahlulluring", interval = 2000, chance = 18, minDamage = -450, maxDamage = -600, target = false },
}

monster.defenses = {
	defense = 84,
	armor = 84,
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
