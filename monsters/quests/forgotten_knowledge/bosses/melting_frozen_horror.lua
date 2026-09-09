local mType = Game.createMonsterType("Melting Frozen Horror")
local monster = {}

monster.description = "a melting frozen horror"
monster.experience = 95000
monster.outfit = {
	lookType = 261,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}


monster.health = 90000
monster.maxHealth = 90000
monster.race = "undead"
monster.corpse = 7282
monster.speed = 120
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 5,
}

monster.bosstiary = {
	bossRaceId = 1336,
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
	{ text = "Chrrrrrk! Chrrrk!", yell = false },
}

monster.loot = {
	{ id = 3031, chance = 1000000, maxCount = 100 }, -- gold coin
	{ id = 3031, chance = 1000000, maxCount = 11 }, -- gold coin
	{ id = 9661, chance = 141110 }, -- frosty heart
	{ id = 7441, chance = 51000 }, -- ice cube
	{ name = "greater sage gem", chance = 500 },
	{ name = "greater spiritualist gem", chance = 500 },
	{ name = "greater mystic gem", chance = 500 },
	{ name = "greater marksman gem", chance = 500 },
	{ name = "greater guardian gem", chance = 500 },
	{ id = 3284, chance = 3200 }, -- ice rapier
	{ id = 7449, chance = 5800 }, -- crystal sword
	{ id = 46410, chance = 1500}, -- Celestial Backpack
	{ id = 3028, chance = 7300 }, -- small diamond
	{ id = 16120, chance = 96600, maxCount = 5 }, -- violet crystal shard
	{ id = 3041, chance = 50000 }, -- blue gem
	{ id = 16121, chance = 96600, maxCount = 5 }, -- green crystal shard
	{ id = 7459, chance = 9660 }, -- pair of earmuffs
	{ id = 23516, chance = 9660 }, -- instable proto matter
	{ id = 3333, chance = 9660 }, -- crystal mace
	{ id = 16160, chance = 9660 }, -- crystalline sword
	{ id = 16175, chance = 2000 }, -- shiny blade
	{ id = 14247, chance = 2000 }, -- ornate crossbow
	{ id = 8059, chance = 5000 }, -- frozen plate
	{ id = 19363, chance = 2000 }, -- runic ice shield
	{ name = "spark sphere", chance = 100000 },
	{ name = "gold token", chance = 7080 },
    { name = "silver token", chance = 7140 },
    { id = 49921, chance = 10000 },  -- Boss Token
	{ id = 43946, chance = 30000 },  -- Abridged Promotion Scroll
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -70, maxDamage = -300 },
	{ name = "hirintror freeze", interval = 2000, chance = 15, target = false },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -750, maxDamage = -1050, range = 7, radius = 3, shootEffect = CONST_ANI_ICE, effect = CONST_ME_BLOCKHIT, target = true },
	{ name = "ice golem paralyze", interval = 2000, chance = 11, target = false },
	{ name = "hirintror skill reducer", interval = 2000, chance = 10, target = false },
}

monster.defenses = {
	defense = 60,
	armor = 60,
	--	mitigation = ???,
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_HEALING, radius = 7, effect = CONST_ME_BLOCKHIT, target = false },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 1 },
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
