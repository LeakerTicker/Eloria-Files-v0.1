local mType = Game.createMonsterType("Echoing Oblivion")
if not mType then
	return
end
local monster = {}

monster.description = "a Echoing Oblivion"
monster.experience = 700000
monster.outfit = {
	lookType = 2899,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 3,
	lookMount = 0,
}


monster.bosstiary = {
	bossRaceId = 2669,
	bossRace = RARITY_NEMESIS,
}

monster.health = 700000
monster.maxHealth = 700000
monster.race = "venom"
monster.corpse = 0
monster.speed = 960
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8,
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
	staticAttackChance = 90,
	targetDistance = 1,
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
	{ id = 21435, chance = 400, maxCount = 1 }, -- black knight doll
	{ id = 33777, chance = 401, maxCount = 1 }, -- bard doll
	{ id = 38677, chance = 402, maxCount = 1 }, -- beaver of wisdomo doll
	{ id = 37054, chance = 403, maxCount = 1 }, -- Bella Bonecrusher's doll
	{ id = 37743, chance = 404, maxCount = 1 }, -- draptor doll  
	{ id = 36996, chance = 404, maxCount = 1 }, -- luna doll
	{ id = 34326, chance = 404, maxCount = 1 }, -- wicked witch doll
	{ id = 18339, chance = 3000, maxCount = 1 }, -- Zaoan chess box
	{ id = 43895, chance = 5050 },  -- Bag you covet - zwykly
	{ id = 49429, chance = 100000 },  -- lasting exercise boox
	{ name = "greater sage gem", chance = 55000, minCount = 1, maxCount = 2 }, 
	{ name = "greater mystic gem", chance = 55000, minCount = 1, maxCount = 2 },  
	{ name = "greater marksman gem", chance = 55000, minCount = 1, maxCount = 2 }, 
	{ name = "greater guardian gem", chance = 55000, minCount = 1, maxCount = 2 }, 
	{ name = "greater spiritualist gem", chance = 55000, minCount = 1, maxCount = 2 }, 
	{ id = 39546, chance = 7320 },  -- Primal Bag
	{ id = 34075, chance = 7500, maxCount = 5 }, -- skull of a beast
	{ id = 34109, chance = 8000 },  -- Bag you desire
	{ id = 63667, chance = 100000, minCount = 1, maxCount = 5 },  -- UE UPGRADE
	{ id = 23509, chance = 10000, maxCount = 12 }, -- mysterious remains
	{ id = 49422, chance = 20000 }, -- Durable Exercise Box
	{ id = 39037, chance = 90000, maxCount = 5 }, -- cobalt ridge
	{ id = 39040, chance = 91000, maxCount = 5 }, -- fiery tear
	{ id = 22721, chance = 98000, maxCount = 5 },  -- Gold Token
	{ id = 49393, chance = 100000, maxCount = 150 }, -- reward token
	{ name = "red crystal coin", chance = 100000, minCount = 100, maxCount = 225 },
	{ name = "green crystal coin", chance = 100000, minCount = 150, maxCount = 355 },
	{ id = 49921, chance = 100000 },  -- Boss Token
    { id = 46290, chance = 3150}, -- chronobag
	{ id = 46302, chance = 3151}, -- mistery bag

}


monster.attacks = {
	{ name = "melee", interval = 1000, chance = 100, minDamage = -1500, maxDamage = -2550 },
	{ name = "condition", type = CONDITION_FIRE, interval = 1000, chance = 55, minDamage = -1200, maxDamage = -2100, range = 2, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_BLOCKHIT, target = false },
	{ name = "combat", interval = 1000, chance = 35, type = COMBAT_PHYSICALDAMAGE, minDamage = -1350, maxDamage = -2050, radius = 6, effect = CONST_ME_EXPLOSIONHIT, target = false },
	{ name = "combat", interval = 1000, chance = 40, type = COMBAT_FIREDAMAGE, minDamage = -1220, maxDamage = -1100, radius = 5, effect = CONST_ME_BLOCKHIT, target = false },
	{ name = "firefield", interval = 1000, chance = 60, radius = 8, effect = CONST_ME_EXPLOSIONHIT, target = false },
	{ name = "combat", interval = 4000, chance = 100, type = COMBAT_FIREDAMAGE, minDamage = -1000, maxDamage = -1500, range = 7, length = 6, spread = 0, shootEffect = CONST_ANI_POISON, effect = CONST_ME_HITBYPOISON, target = false },
	{ name = "combat", interval = 2500, chance = 25, type = COMBAT_DEATHDAMAGE, minDamage = -1400, maxDamage = -2400, range = 3, length = 6, spread = 0, effect = CONST_ME_MORTAREA, target = false },
	{ name = "combat", interval = 1500, chance = 25, type = COMBAT_FIREDAMAGE, minDamage = -1000, maxDamage = -2000, range = 3, length = 6, spread = 0, effect = CONST_ME_HITBYFIRE, target = false },
	{ name = "stone shower rune", interval = 2000, chance = 25, minDamage = -2230, maxDamage = -4450, range = 7, target = false },
}


monster.defenses = {
	defense = 220,
	armor = 200,
	--	mitigation = ???,
	{ name = "combat", interval = 2000, chance = 100, type = COMBAT_HEALING, minDamage = 900, maxDamage = 5500, effect = CONST_ME_MAGIC_GREEN, target = false },
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
