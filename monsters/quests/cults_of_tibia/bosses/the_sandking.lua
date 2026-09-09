local mType = Game.createMonsterType("The Sandking")
local monster = {}

monster.description = "The Sandking"
monster.experience = 145000
monster.outfit = {
	lookType = 1013,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}



monster.bosstiary = {
	bossRaceId = 1444,
	bossRace = RARITY_ARCHFOE,
}

monster.health = 145000
monster.maxHealth = 145000
monster.race = "venom"
monster.corpse = 25866
monster.speed = 125
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 30,
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

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "CRRRK!", yell = true },
}

monster.loot = {
	{ name = "small amethyst", chance = 21000, maxCount = 10 },
	{ name = "small emerald", chance = 19000, maxCount = 10 },
	{ name = "greater sage gem", chance = 500 },
	{ name = "greater spiritualist gem", chance = 500 },
	{ name = "greater mystic gem", chance = 500 },
	{ name = "greater marksman gem", chance = 500 },
	{ name = "greater guardian gem", chance = 500 },
	{ id = 3039, chance = 12000 }, -- red gem
	{ name = "platinum coin", chance = 68299, maxCount = 30 },
	{ name = "gold coin", chance = 100000, maxCount = 200 },
	{ name = "small diamond", chance = 21000, maxCount = 10 },
	{ name = "green gem", chance = 12000 },
	{ name = "luminous orb", chance = 35000 },
	{ name = "cobra crown", chance = 40000 },
	{ id = 46218, chance = 1500}, -- Suncrest Backpack
	{ name = "small topaz", chance = 11520, maxCount = 10 },
	{ name = "blue gem", chance = 21892 },
	{ name = "yellow gem", chance = 29460 },
	{ name = "magic sulphur", chance = 18920 },
	{ id = 20062, chance = 120000, maxCount = 20 }, -- cluster of solace
	{ name = "hailstorm rod", chance = 34070 },
	{ id = 3036, chance = 10000 }, -- violet gem
	{ id = 3098, chance = 200000 }, -- ring of healing
	{ id = 3030, chance = 73060, maxCount = 10 }, -- small ruby
	{ id = 281, chance = 285040 }, -- giant shimmering pearl (green)
	{ name = "skull staff", chance = 137090 },
	{ name = "grasshopper legs", chance = 130790 },
	{ name = "huge chunk of crude iron", chance = 100000, maxCount = 2 },
	{ id = 7404, chance = 43000 }, -- assassin dagger
	{ name = "runed sword", chance = 6666 },
	{ name = "djinn blade", chance = 2000 },
	{ id = 16121, chance = 100000, maxCount = 3 }, -- green crystal shard
	{ id = 16120, chance = 100000, maxCount = 3 }, -- violet crystal shard
	{ id = 16119, chance = 100000, maxCount = 3 }, -- blue crystal shard
	{ id = 16161, chance = 70300 }, -- crystalline axe
	{ id = 3341, chance = 2000 }, -- arcane staff
	{ name = "heart of the mountain", chance = 4000 },
	{ name = "gold token", chance = 8080 },
    { name = "silver token", chance = 8040 },
    { id = 43946, chance = 35000 },  -- Abridged Promotion Scroll
    { id = 49921, chance = 10000 },  -- Boss Token
	
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -400 },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = 0, maxDamage = -500, range = 4, radius = 4, effect = CONST_ME_STONES, target = true },
	{ name = "speed", interval = 2000, chance = 20, speedChange = -650, radius = 5, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000 },
}

monster.defenses = {
	defense = 30,
	armor = 30,
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
