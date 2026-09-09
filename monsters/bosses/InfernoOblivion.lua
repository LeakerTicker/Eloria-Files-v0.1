local mType = Game.createMonsterType("Inferno Oblivion")
if not mType then
	return
end
local monster = {}

monster.description = "a Inferno Oblivion"
monster.experience = 1000000
monster.outfit = {
	lookType = 2739,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}


monster.bosstiary = {
	bossRaceId = 2670,
	bossRace = RARITY_NEMESIS,
}

monster.health = 1000000
monster.maxHealth = 1000000
monster.race = "venom"
monster.corpse = 0
monster.speed = 950
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8,
}

monster.strategiesTarget = {
	nearest = 3,
	health = 3,
	damage = 91,
	random = 3,
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
	targetDistance = 2,
	runHealth = 2500,
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
		{ name = "Elder Guardian", chance = 100, interval = 3000, count = 2 },
	},
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "NO ONE WILL STOP ME THIS TIME!", yell = true },
	{ text = "THE POWER IS MINE!", yell = true },
	{ text = "I returned from death and you dream about defeating me?", yell = false },
	{ text = "Witness the first seconds of my eternal world domination!", yell = false },
	{ text = "Even in my weakened state I will crush you all!", yell = false },
}

monster.loot = {
	{ id = 49921, chance = 1000000, minCount = 1, maxCount = 4 },  -- Boss Token
	{ id = 49393, chance = 1000000, minCount = 100, maxCount = 300 }, -- reward token
	{ id = 49435, chance = 1000000, minCount = 1000, maxCount = 4000 }, -- hunting task token
	{ id = 3043, chance = 1000000, minCount = 300, maxCount = 1020 }, -- crystal coin
	{ id = 18339, chance = 3000, maxCount = 1 }, -- Zaoan chess box
	{ id = 39040, chance = 91000, minCount = 1, maxCount = 5 }, -- fiery tear
	{ name = "greater sage gem", chance = 55000, minCount = 1, maxCount = 2 }, 
	{ name = "greater mystic gem", chance = 55000, minCount = 1, maxCount = 2 },  
	{ name = "greater marksman gem", chance = 55000, minCount = 1, maxCount = 2 }, 
	{ name = "greater guardian gem", chance = 55000, minCount = 1, maxCount = 2 }, 
	{ name = "greater spiritualist gem", chance = 55000, minCount = 1, maxCount = 2 }, 
	{ id = 39037, chance = 90000, minCount = 1, maxCount = 3 }, -- cobalt ridge 
	{ id = 23509, chance = 10000, minCount = 1, maxCount = 12 }, -- mysterious remains
	{ id = 43898, chance = 9000 },  -- Bag you covet - GRAND
	{ id = 34109, chance = 19700 },  -- Bag you desire
	{ id = 22721, chance = 98000, minCount = 1, maxCount = 5 },  -- Gold Token
	{ id = 39546, chance = 13800 },  -- Primal Bag
	{ id = 49429, chance = 100000 },  -- lasting exercise boox
	{ name = "red crystal coin", chance = 100000, minCount = 100, maxCount = 225 },
	{ name = "green crystal coin", chance = 100000, minCount = 150, maxCount = 355 },
	{ id = 37110, chance = 1000000, minCount = 1, maxCount = 5 },  -- Exalted core
	{ id = 46302, chance = 3301, unique = true }, -- Mistery Bag 
	{ id = 46290, chance = 3300, unique = true }, -- Chronobag
	{ id = 63667, chance = 100000, minCount = 1, maxCount = 2 }, -- UE upgrade
}


monster.attacks = {
	{ name = "melee", interval = 1000, chance = 100, minDamage = -1500, maxDamage = -2200 },
	{ name = "combat", interval = 1000, chance = 30, type = COMBAT_DEATHDAMAGE, minDamage = -1800, maxDamage = -4900, radius = 9, effect = CONST_ME_MORTAREA, target = false },
	{ name = "speed", interval = 1000, chance = 20, speedChange = -1000, radius = 6, effect = CONST_ME_POISONAREA, target = false, duration = 60000 },
	{ name = "strength", interval = 4000, chance = 10, minDamage = -3600, maxDamage = -4450, radius = 5, effect = CONST_ME_HITAREA, target = false },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_FIREDAMAGE, minDamage = -1300, maxDamage = -2800, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true },
	{ name = "combat", interval = 2000, chance = 5, type = COMBAT_MANADRAIN, minDamage = -1600, maxDamage = -2700, radius = 10, effect = CONST_ME_ENERGYAREA, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -1400, maxDamage = -2800, length = 8, spread = 0, effect = CONST_ME_MAGIC_RED, target = false },
	{ name = "condition", type = CONDITION_POISON, interval = 1000, chance = 55, minDamage = -1800, maxDamage = -3000, effect = CONST_ME_HITBYPOISON, target = false },
	{ name = "combat", interval = 2000, chance = 30, type = COMBAT_LIFEDRAIN, minDamage = -1600, maxDamage = -2200, radius = 14, effect = CONST_ME_MAGIC_GREEN, target = false },
}



monster.defenses = {
	defense = 120,
	armor = 100,
	--	mitigation = ???,
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 900, maxDamage = 1500, effect = CONST_ME_MAGIC_GREEN, target = false },
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

mType.onThink = function(monster, interval) end

mType.onAppear = function(monster, creature)
	if monster:getType():isRewardBoss() then
		monster:setReward(true)
	end
end

mType.onDisappear = function(monster, creature) end

mType.onMove = function(monster, creature, fromPosition, toPosition) end

mType.onSay = function(monster, creature, type, message) end

mType:register(monster)
