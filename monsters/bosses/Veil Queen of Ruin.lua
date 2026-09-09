local mType = Game.createMonsterType("Veil Queen of Ruin")
if not mType then
	return
end
local monster = {}

monster.description = "Veil Queen of Ruin"
monster.experience = 2200000
monster.outfit = {
lookType = 2796,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 3,
	lookMount = 0,
}


monster.bosstiary = {
	bossRaceId = 2672,
	bossRace = RARITY_NEMESIS,
}

monster.health = 2200000
monster.maxHealth = 2200000
monster.race = "blood"
monster.corpse = 0
monster.speed = 1000
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 25,
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
	{ text = "I have never known defeat!", yell = true },
	{ text = "My dear twin, accept this gift", yell = true },
}

monster.loot = {
	{ id = 49921, chance = 1000000, minCount = 1, maxCount = 5 },  -- Boss Token
	{ id = 49393, chance = 1000000, minCount = 100, maxCount = 500 }, -- reward token
	{ id = 49435, chance = 1000000, minCount = 1500, maxCount = 5000 }, -- hunting task token
	{ id = 3043, chance = 1000000, minCount = 300, maxCount = 1020 }, -- crystal coin
	{ id = 18339, chance = 3000, maxCount = 1 }, -- Zaoan chess box
	{ id = 39040, chance = 91000, minCount = 1, maxCount = 13 }, -- fiery tear
	{ name = "greater sage gem", chance = 55000, minCount = 1, maxCount = 2 }, 
	{ name = "greater mystic gem", chance = 55000, minCount = 1, maxCount = 2 },  
	{ name = "greater marksman gem", chance = 55000, minCount = 1, maxCount = 2 }, 
	{ name = "greater guardian gem", chance = 55000, minCount = 1, maxCount = 2 }, 
	{ name = "greater spiritualist gem", chance = 55000, minCount = 1, maxCount = 2 }, 
	{ id = 39037, chance = 90000, minCount = 1, maxCount = 3 }, -- cobalt ridge 
	{ id = 23509, chance = 10000, minCount = 1, maxCount = 12 }, -- mysterious remains
	{ id = 43898, chance = 15000 },  -- Bag you covet - GRAND
	{ id = 34109, chance = 45700 },  -- Bag you desire
	{ id = 22721, chance = 98000, minCount = 1, maxCount = 5 },  -- Gold Token
	{ id = 39546, chance = 29800 },  -- Primal Bag
	{ id = 49429, chance = 8000 },  -- lasting exercise boox
	{ id = 37110, chance = 1000000, minCount = 1, maxCount = 5 },  -- Exalted core
	{ id = 4115, chance = 2203 }, -- Phoenix statue
	{ id = 12042, chance = 2204 }, -- Frozen Heart  
	{ id = 44060, chance = 3205 }, -- Aylie v.2
	{ id = 44059, chance = 4206 }, -- Aylie v.1 
	{ id = 46094, chance = 5301, unique = true }, -- Eternal Bag 
	{ id = 46294, chance = 5300, unique = true }, -- Dread Bag
	{ id = 63667, chance = 100000, minCount = 1, maxCount = 3 }, -- UE upgrade
}


monster.summon = {
	maxSummons = 1,
	summons = {
		{ name = "Elder Guardian", chance = 70, interval = 2000, count = 1 },
		{ name = "Elder Guard", chance = 30, interval = 2000, count = 1 },
	},
}

monster.attacks = {
	{ name = "melee", interval = 1000, chance = 100, minDamage = -1000, maxDamage = -2950 },
	{ name = "combat", interval = 4000, chance = 10, type = COMBAT_MANADRAIN, minDamage = -2500, maxDamage = -3900, range = 7, effect = CONST_ME_MAGIC_RED, target = false },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -2300, maxDamage = -2950, length = 8, spread = 3, effect = CONST_ME_ROZ, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_LIFEDRAIN, minDamage = -1450, maxDamage = -1500, radius = 6, effect = CONST_ME_ROZZ, target = false },
	{ name = "combat", interval = 1000, chance = 30, type = COMBAT_ICEDAMAGE, minDamage = -2000, maxDamage = -3430, radius = 6, effect = CONST_ME_ICETORNADO, target = false },
	{ name = "condition", type = CONDITION_POISON, interval = 1000, chance = 35, minDamage = -1320, maxDamage = -1540, range = 7, shootEffect = CONST_ME_REAPER, target = false },
	{ name = "condition", type = CONDITION_ENERGY, interval = 1000, chance = 20, minDamage = -2300, maxDamage = -2500, radius = 6, effect = CONST_ME_REAPER, target = false },
	{ name = "condition", type = CONDITION_FIRE, interval = 1000, chance = 35, minDamage = -1500, maxDamage = -2700, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true },
}

monster.defenses = {
	defense = 165,
	armor = 155,
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
	{ type = "outfit", condition = true },
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
