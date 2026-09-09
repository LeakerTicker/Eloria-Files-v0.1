local mType = Game.createMonsterType("Echo Ascendant")
local monster = {}

monster.description = "Echo Ascendant"
monster.experience = 70000000
monster.outfit = {
	lookType = 2785,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.bosstiary = {
	bossRaceId = 2691,
	bossRace = RARITY_NEMESIS,
}

monster.health = 4000000
monster.maxHealth = 4000000
monster.race = "undead"
monster.corpse = 6068
monster.speed = 800
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8,
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
	runHealth = 10000,
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
		{ name = "Hounds of Agony", chance = 100, interval = 3000, count = 2 },
		{ name = "Elder Guardian",  chance = 100, interval = 3000, count = 2 },
	},
}

monster.voices = {
	interval = 5000,
	chance = 20,
	{ text = "You defeated ECHO — but I am what ECHO could only dream of becoming.", yell = true },
	{ text = "THE RESONANCE WILL CONSUME ALL!", yell = true },
	{ text = "Your journey prepared you for absolutely nothing.", yell = true },
	{ text = "I have ascended beyond your comprehension. Kneel.", yell = true },
}

monster.loot = {
	{ id = 49435, chance = 1000000, minCount = 300,  maxCount = 3000 }, -- hunting task token
	{ id = 49393, chance = 100000,  minCount = 100,  maxCount = 550  }, -- reward token
	{ name = "red crystal coin",   chance = 100000,  minCount = 500,  maxCount = 725  },
	{ name = "green crystal coin", chance = 100000,  minCount = 550,  maxCount = 755  },
	{ id = 3043,  chance = 1000000, minCount = 600,  maxCount = 1020 }, -- crystal coin
	{ id = 18339, chance = 3000,    maxCount = 1    }, -- Zaoan chess box
	{ id = 39040, chance = 91000,   minCount = 3,    maxCount = 15   }, -- fiery tear
	{ id = 44604, chance = 30000,   minCount = 1,    maxCount = 5    }, -- greater guardian gem
	{ id = 44607, chance = 30010,   minCount = 1,    maxCount = 5    }, -- greater marksman gem
	{ id = 44613, chance = 30020,   minCount = 1,    maxCount = 5    }, -- greater mystic gem
	{ id = 44610, chance = 30030,   minCount = 1,    maxCount = 5    }, -- greater sage gem
	{ id = 39037, chance = 100000,  minCount = 5,    maxCount = 28   }, -- cobalt ridge
	{ id = 49921, chance = 1000000, minCount = 5,    maxCount = 10   }, -- Boss Token
	{ id = 43898, chance = 60000                                      }, -- Bag you covet - GRAND
	{ id = 34109, chance = 97000                                      }, -- Bag you desire
	{ id = 22721, chance = 98000,   minCount = 5,    maxCount = 8    }, -- Gold Token
	{ id = 37110, chance = 1000000, minCount = 5,    maxCount = 15   }, -- Exalted core
	{ id = 19391, chance = 5000                                       }, -- furious frock
	{ id = 43895, chance = 85050                                      }, -- Bag you covet - zwykly
	{ id = 39546, chance = 50320                                      }, -- Primal Bag
	{ id = 3364,  chance = 22000                                      }, -- golden legs
	{ id = 8074,  chance = 22000                                      }, -- spellbook of mind control
	{ id = 3420,  chance = 20000                                      }, -- demon shield
	{ id = 8057,  chance = 20000                                      }, -- divine plate
	{ id = 46290, chance = 7000,    minCount = 1,    maxCount = 2    }, -- chronobag
	{ id = 46302, chance = 7001,    minCount = 1,    maxCount = 2    }, -- mistery bag
	{ id = 46294, chance = 6001,    minCount = 1,    maxCount = 1    }, -- Dread Bag
	{ id = 46289, chance = 6000,    minCount = 1,    maxCount = 1    }, -- Eternal Bag
	{ id = 46289, chance = 5000,    minCount = 1,    maxCount = 1    }, -- brainstealer bag
}

-- ECHO base x2 (+100%), remixed visual effects
monster.attacks = {
	{ name = "melee",     interval = 2000, chance = 100, skill = 420, attack = 520 },
	-- Fire condition (remixed: FIREATTACK instead of BLOCKHIT)
	{ name = "condition", type = CONDITION_FIRE,        interval = 1000, chance = 7,  minDamage = -2880, maxDamage = -6720,  range = 2,  shootEffect = CONST_ANI_FIRE,         effect = CONST_ME_FIREATTACK,  target = false },
	-- Physical radius (remixed: HITAREA instead of EXPLOSIONHIT)
	{ name = "combat",    interval = 2000, chance = 30, type = COMBAT_PHYSICALDAMAGE, minDamage = 2500,  maxDamage = -4400,  radius = 6, effect = CONST_ME_HITAREA,            target = false },
	-- Fire radius (remixed: EXPLOSIONAREA instead of BLOCKHIT)
	{ name = "combat",    interval = 2000, chance = 30, type = COMBAT_FIREDAMAGE,     minDamage = -5120, maxDamage = -8000,  radius = 5, effect = CONST_ME_EXPLOSIONAREA,      target = false },
	-- Firefield (unchanged)
	{ name = "firefield", interval = 4000, chance = 20, radius = 8, effect = CONST_ME_EXPLOSIONHIT, target = false },
	-- Fire ranged (remixed: EXPLOSIONHIT instead of FIREAREA)
	{ name = "combat",    interval = 2000, chance = 35, type = COMBAT_FIREDAMAGE,     minDamage = -3760, maxDamage = -7760,  range = 7,  radius = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_EXPLOSIONHIT, target = true },
	-- Death spread (remixed: MORTAREA instead of POFF)
	{ name = "combat",    interval = 2000, chance = 25, type = COMBAT_DEATHDAMAGE,    minDamage = -3360, maxDamage = -6560,  length = 8, spread = 5, effect = CONST_ME_MORTAREA,   target = false },
	-- Death ranged (remixed: BIGCLOUDS instead of MORTAREA)
	{ name = "combat",    interval = 2000, chance = 25, type = COMBAT_DEATHDAMAGE,    minDamage = -3360, maxDamage = -7680,  range = 7,  radius = 6, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_BIGCLOUDS, target = true },
	-- Fire spread wide (remixed: FIREAREA instead of EXPLOSIONHIT)
	{ name = "combat",    interval = 2000, chance = 25, type = COMBAT_FIREDAMAGE,     minDamage = -4000, maxDamage = -12000, length = 8, spread = 3, effect = CONST_ME_FIREAREA,   target = false },
	-- Fire spread (remixed: EXPLOSIONAREA instead of FIREAREA)
	{ name = "combat",    interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE,     minDamage = -4480, maxDamage = -11600, length = 8, spread = 3, effect = CONST_ME_EXPLOSIONAREA, target = false },
}

monster.defenses = {
	defense = 120,
	armor = 100,
	{ name = "combat",    interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 21800, maxDamage = 35000, effect = CONST_ME_MAGIC_GREEN, target = false },
	{ name = "invisible", interval = 4000, chance = 20, effect = CONST_ME_MAGIC_BLUE },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE,   percent = 0 },
	{ type = COMBAT_EARTHDAMAGE,    percent = 0 },
	{ type = COMBAT_FIREDAMAGE,     percent = 0 },
	{ type = COMBAT_LIFEDRAIN,      percent = 0 },
	{ type = COMBAT_MANADRAIN,      percent = 0 },
	{ type = COMBAT_DROWNDAMAGE,    percent = 0 },
	{ type = COMBAT_ICEDAMAGE,      percent = 0 },
	{ type = COMBAT_HOLYDAMAGE,     percent = 0 },
	{ type = COMBAT_DEATHDAMAGE,    percent = 0 },
}

monster.immunities = {
	{ type = "paralyze",  condition = true },
	{ type = "outfit",    condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed",     condition = false },
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
