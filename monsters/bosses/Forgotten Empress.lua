local mType = Game.createMonsterType("Forgotten Empress")
if not mType then
	return
end
local monster = {}

monster.description = "a Forgotten Empress"
monster.experience = 1500000
monster.outfit = {
lookType = 2749,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 3,
	lookMount = 0,
}



monster.bosstiary = {
	bossRaceId = 2671,
	bossRace = RARITY_NEMESIS,
}


monster.health = 1500000
monster.maxHealth = 1500000
monster.race = "fire"
monster.corpse = 0
monster.speed = 987
monster.manaCost = 0

monster.changeTarget = {
	interval = 10000,
	chance = 20,
}

monster.strategiesTarget = {
	nearest = 3,
	health = 3,
	damage = 3,
	random = 91,
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
	staticAttackChance = 98,
	targetDistance = 1,
	runHealth = 100,
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
	maxSummons = 3,
	summons = {
		{ name = "Elden Guardian", chance = 100, interval = 1000, count = 2 },
	},
}


monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "MY SEED IS FEAR AND MY HARVEST ARE YOUR SOULS!", yell = true },

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
	{ id = 43898, chance = 12000 },  -- Bag you covet - GRAND
	{ id = 34109, chance = 25700 },  -- Bag you desire
	{ id = 22721, chance = 98000, minCount = 1, maxCount = 5 },  -- Gold Token
	{ id = 39546, chance = 19800 },  -- Primal Bag
	{ id = 49429, chance = 8000 },  -- lasting exercise boox
	{ id = 37110, chance = 1000000, minCount = 1, maxCount = 5 },  -- Exalted core
	{ id = 4115, chance = 2203 }, -- Phoenix statue
	{ id = 12042, chance = 2204 }, -- Frozen Heart  
	{ id = 44060, chance = 3205 }, -- Aylie v.2
	{ id = 44059, chance = 4206 }, -- Aylie v.1 
	{ id = 46094, chance = 3301, unique = true }, -- Eternal Bag 
	{ id = 46294, chance = 3300, unique = true }, -- Dread Bag
	{ id = 63667, chance = 100000, minCount = 1, maxCount = 2 }, -- UE upgrade
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -1500, maxDamage = -3000 },
	{ name = "energy beam", interval = 4000, chance = 100, minDamage = -1200, maxDamage = -1200, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYAREA, target = false },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_FIREDAMAGE, minDamage = -2350, maxDamage = -3500, radius = 3, Effect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = false },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_DEATHDAMAGE, minDamage = -1335, maxDamage = -2450, radius = 4, Effect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = false },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_PHYSICALDAMAGE, minDamage = -1330, maxDamage = -3380, length = 7, effect = CONST_ME_EXPLOSIONAREA, target = false },
	{ name = "combat", interval = 1000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -1300, maxDamage = -2410, range = 4, radius = 4, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true },
	{ name = "combat", interval = 1000, chance = 30, type = COMBAT_ENERGYDAMAGE, minDamage = -1385, maxDamage = -2535, range = 4, radius = 1, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYAREA, target = true },
	{ name = "energy wave", interval = 2000, chance = 10, minDamage = -1500, maxDamage = -5200, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYAREA, target = false },
}


monster.defenses = {
	defense = 265,
	armor = 230,
	--	mitigation = ???,
	{ name = "combat", interval = 9000, chance = 95, type = COMBAT_HEALING, minDamage = 3800, maxDamage = 4000, effect = CONST_ME_MAGIC_BLUE, target = false },
	{ name = "speed", interval = 4000, chance = 80, speedChange = 470, effect = CONST_ME_MAGIC_RED, target = false, duration = 6000 },
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