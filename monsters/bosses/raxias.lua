local mType = Game.createMonsterType("Raxias")
local monster = {}

monster.description = "a raxias"
monster.experience = 1000000
monster.outfit = {
	lookType = 1975,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.health = 16000000
monster.maxHealth = 16000000
monster.race = "blood"
monster.corpse = 25814
monster.speed = 500
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8,
}

monster.bosstiary = {
	bossRaceId = 1624,
	bossRace = RARITY_NEMESIS,
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
	rewardBoss = true,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
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
	chance = 50,
	{ text = "It's a nightmare to fight someone like you...", yell = false },
	{ text = "Hop, jump and kick!", yell = false },
	{ text = "Do you want to get your ass kicked? xD", yell = false },
}

monster.loot = {
    { id = 43949, chance = 100500, minCount = 1, maxCount = 3 },  -- Promotion Scroll
	{ name = "greater sage gem", chance = 55000, minCount = 1, maxCount = 2 }, 
	{ name = "greater mystic gem", chance = 55000, minCount = 1, maxCount = 2 },  
	{ name = "greater marksman gem", chance = 55000, minCount = 1, maxCount = 2 }, 
	{ name = "greater guardian gem", chance = 55000, minCount = 1, maxCount = 2 }, 
	{ name = "greater spiritualist gem", chance = 55000, minCount = 1, maxCount = 2 }, 
    { id = 3007, chance = 100000 }, -- crystal ring
    { id = 6300, chance = 60000 }, -- death ring
    { id = 3439, chance = 1000 }, -- phoenix shield
	{ id = 49393, chance = 1000000, minCount = 50, maxCount = 150 }, -- reward token
    { id = 49435, chance = 1000000, minCount = 100, maxCount = 1000 }, -- hunting task token
    { id = 49921, chance = 1000000, minCount = 5, maxCount = 10 },  -- Boss Token
    { id = 19391, chance = 1000 }, -- furious frock
    { id = 43898, chance = 8000 },  -- Grand Sanguine Bag
    { id = 43895, chance = 55050 },  -- Bag you covet - zwykly
    { id = 39546, chance = 7320 },  -- Primal Bag
    { id = 34109, chance = 8000 },  -- Bag you desire
    { id = 37053, chance = 4000 },  -- Bonelrd Tome
    { id = 55014, chance = 200 },  -- Unicorn Backpack
	{ id = 3364, chance = 22000 }, -- golden legs
	{ id = 8074, chance = 22000 }, -- spellbook of mind control
	{ id = 3420, chance = 20000 }, -- demon shield
	{ id = 8057, chance = 20000 }, -- divine plate
	{ id = 46290, chance = 4150}, -- chronobag
	{ id = 46302, chance = 4151}, -- mistery bag
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -1200, maxDamage = -5200 },
	{ name = "combat", interval = 2500, chance = 57, type = COMBAT_EARTHDAMAGE, minDamage = -3700, maxDamage = -5100, range = 1, effect = CONST_ME_BLACKSMOKE, target = true },
	{ name = "combat", interval = 4200, chance = 45, type = COMBAT_PHYSICALDAMAGE, minDamage = -3700, maxDamage = -5050, length = 4, spread = 3, effect = CONST_ME_SLASH, target = false },
	{ name = "combat", interval = 1000, chance = 35, type = COMBAT_PHYSICALDAMAGE, minDamage = -3100, maxDamage = -5780, range = 7, shootEffect = CONST_ANI_SNOWBALL, effect = CONST_ME_POFF, target = false },
	{ name = "combat", interval = 1000, chance = 32, type = COMBAT_ENERGYDAMAGE, minDamage = -3256, maxDamage = -5860, length = 3, spread = 3, effect = CONST_ME_POFF, target = false },
}

monster.defenses = {
	defense = 33,
	armor = 28,
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
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
