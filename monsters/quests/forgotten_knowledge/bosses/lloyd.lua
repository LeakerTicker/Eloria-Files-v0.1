local mType = Game.createMonsterType("Lloyd")
local monster = {}

monster.description = "Lloyd"
monster.experience = 90000
monster.outfit = {
	lookType = 940,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}


monster.bosstiary = {
	bossRaceId = 1329,
	bossRace = RARITY_ARCHFOE,
}

monster.health = 90000
monster.maxHealth = 90000
monster.race = "venom"
monster.corpse = 24927
monster.speed = 200
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

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{ name = "gold coin", chance = 100000, maxCount = 329 },
	{ name = "platinum coin", chance = 100000, maxCount = 35 },
	{ id = 3100, chance = 100000 }, -- ring of healing
	{ name = "wand of starstorm", chance = 100000 },
	{ name = "violet crystal shard", chance = 71790, maxCount = 5 },
	{ name = "blue crystal shard", chance = 69230, maxCount = 5 },
	{ id = 23542, chance = 38460 }, -- collar of blue plasma
	{ id = 61728, chance = 2470 }, -- ring of orange plasma
	{ id = 61726, chance = 2470 }, -- collar of orange plasma
	{ id = 282, chance = 30770 }, -- giant shimmering pearl
	{ id = 46410, chance = 1500}, -- Celestial Backpack
	{ id = 3039, chance = 28210 }, -- red gem
	{ name = "small emerald", chance = 25640, maxCount = 10 },
	{ name = "small amethyst", chance = 25640, maxCount = 12 },
	{ name = "silver token", chance = 25640 },
	{ name = "small topaz", chance = 20510, maxCount = 10 },
	{ name = "small ruby", chance = 17950, maxCount = 18 },
	{ name = "spellbook of warding", chance = 15380 },
	{ name = "yellow gem", chance = 12820 },
	{ name = "small diamond", chance = 10260, maxCount = 10 },
	{ name = "white piece of cloth", chance = 10260, maxCount = 3 },
	{ name = "piece of hell steel", chance = 10260, maxCount = 3 },
	{ name = "blue gem", chance = 10260 },
	{ name = "green gem", chance = 10260 },
	{ name = "lightning legs", chance = 7690 },
	{ name = "greater sage gem", chance = 500 },
	{ name = "greater spiritualist gem", chance = 500 },
	{ name = "greater mystic gem", chance = 500 },
	{ name = "greater marksman gem", chance = 500 },
	{ name = "greater guardian gem", chance = 500 },
	{ name = "violet gem", chance = 7690 },
	{ name = "spellweaver's robe", chance = 5130 },
	{ name = "demon helmet", chance = 5130 },
	{ name = "boots of haste", chance = 25600 },
	{ name = "pillow backpack", chance = 2560 },
	{ name = "gold token", chance = 7080 },
    { name = "silver token", chance = 7140 },
    { id = 49921, chance = 10000 },  -- Boss Token
	{ id = 43946, chance = 30000 },  -- Abridged Promotion Scroll
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -200, maxDamage = -1400 },
	{ name = "combat", interval = 2000, chance = 12, type = COMBAT_ENERGYDAMAGE, minDamage = -330, maxDamage = -660, length = 6, spread = 0, effect = CONST_ME_PURPLEENERGY, target = false },
	{ name = "lloyd wave", interval = 2000, chance = 12, minDamage = -430, maxDamage = -560, target = false },
	{ name = "lloyd wave2", interval = 2000, chance = 12, minDamage = -230, maxDamage = -460, target = false },
	{ name = "lloyd wave3", interval = 2000, chance = 12, minDamage = -430, maxDamage = -660, target = false },
}

monster.defenses = {
	defense = 55,
	armor = 55,
	mitigation = 2.35,
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 180, maxDamage = 250, target = false },
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
