local mType = Game.createMonsterType("EMBER")
local monster = {}

monster.description = "a EMBER"
monster.experience = 10000000
monster.outfit = {
	lookType = 4094,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}


monster.bosstiary = {
	bossRaceId = 2673,
	bossRace = RARITY_NEMESIS,
}



monster.health = 350000
monster.maxHealth = 350000
monster.race = "undead"
monster.corpse = 6068
monster.speed = 600
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
	runHealth = 20000,
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
	maxSummons = 1,
	summons = {
		{ name = "Hounds of Agony", chance = 30, interval = 3000, count = 1 },

	},
}

monster.voices = {
	interval = 5000,
	chance = 100,
	{ text = "So this is the end of Act", yell = true },
	{ text = "Your moves are weak, your choices worse.", yell = true },
	{ text = "You made it this far… by luck alone.", yell = true },
	{ text = "You won’t survive what comes next.", yell = true },
}



monster.loot = {
	{ id = 49435, chance = 1000000, minCount = 100, maxCount = 1000 }, -- hunting task token
	{ id = 49393, chance = 100000, minCount = 10, maxCount = 250 }, -- reward token
	{ name = "red crystal coin", chance = 100000, minCount = 100, maxCount = 225 },
	{ name = "green crystal coin", chance = 100000, minCount = 150, maxCount = 355 },
	{ id = 49921, chance = 1000000, minCount = 3, maxCount = 5 },  -- Boss Token
    { id = 46290, chance = 7000}, -- chronobag
	{ id = 46302, chance = 7000}, -- mistery bag
	{ id = 18339, chance = 20000, maxCount = 1 }, -- Zaoan chess box
	{ id = 39040, chance = 91000, minCount = 3, maxCount = 15 }, -- fiery tear
	{ id = 44604, chance = 30000, minCount = 1, maxCount = 3 }, -- greater guardian gem
	{ id = 44607, chance = 30010, minCount = 1, maxCount = 3 }, -- greater marksman gem
	{ id = 44613, chance = 30020, minCount = 1, maxCount = 3 }, -- greater mystic gem
	{ id = 44610, chance = 30030, minCount = 1, maxCount = 3 }, -- greater sage gem
	{ id = 39037, chance = 100000, minCount = 3, maxCount = 5 }, -- cobalt ridge 
	{ id = 63667, chance = 100000, minCount = 1, maxCount = 2 },  -- UE UPGRADE
	{ id = 43898, chance = 6000 },  -- Bag you covet - GRAND
	{ id = 34075, chance = 100000, maxCount = 5 }, -- skull of a beast
	{ id = 37110, chance = 1000000, minCount = 1, maxCount = 5 },  -- Exalted core
    { id = 43895, chance = 55050 },  -- Bag you covet - zwykly
    { id = 39546, chance = 27320 },  -- Primal Bag
    { id = 34109, chance = 58000 },  -- Bag you desire
	{ id = 3364, chance = 22000 }, -- golden legs
	{ id = 8074, chance = 22000 }, -- spellbook of mind control
	{ id = 3420, chance = 20000 }, -- demon shield
	{ id = 8057, chance = 20000 }, -- divine plate
	{ id = 3309, chance = 1666 }, -- Thunder Hammer
}

monster.attacks = {
	{ name = "melee", interval = 1000, chance = 100, minDamage = -350, maxDamage = -700 },
	{ name = "condition", type = CONDITION_FIRE, interval = 2000, chance = 35, minDamage = -840, maxDamage = -1050, range = 2, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_BLOCKHIT, target = false },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_PHYSICALDAMAGE, minDamage = -945, maxDamage = -980, radius = 6, effect = CONST_ME_EXPLOSIONHIT, target = false },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -854, maxDamage = -1050, radius = 5, effect = CONST_ME_BLOCKHIT, target = false },
	{ name = "firefield", interval = 1000, chance = 30, radius = 8, effect = CONST_ME_EXPLOSIONHIT, target = false },
	{ name = "combat", interval = 4000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -700, maxDamage = -770, range = 7, length = 6, spread = 0, shootEffect = CONST_ANI_POISON, effect = CONST_ME_HITBYPOISON, target = false },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_DEATHDAMAGE, minDamage = -980, maxDamage = -1050, range = 3, length = 6, spread = 0, effect = CONST_ME_MORTAREA, target = false },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -700, maxDamage = -770, range = 3, length = 6, spread = 0, effect = CONST_ME_HITBYFIRE, target = false },
	{ name = "stone shower rune", interval = 4000, chance = 100, minDamage = -700, maxDamage = -700, range = 7, target = false },
}

monster.defenses = {
	defense = 120,
	armor = 100,
	--	mitigation = ???,
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 900, maxDamage = 1500, effect = CONST_ME_MAGIC_GREEN, target = false },
	{ name = "invisible", interval = 4000, chance = 20, effect = CONST_ME_MAGIC_BLUE },
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