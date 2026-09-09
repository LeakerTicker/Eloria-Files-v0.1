local mType = Game.createMonsterType("ELDEN")
local monster = {}

monster.description = "a ELDEN"
monster.experience = 15000000
monster.outfit = {
	lookType = 4092,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}


monster.bosstiary = {
	bossRaceId = 2675,
	bossRace = RARITY_NEMESIS,
}



monster.health = 700000
monster.maxHealth = 700000
monster.race = "undead"
monster.corpse = 6068
monster.speed = 650
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
	maxSummons = 2,
	summons = {
		{ name = "Hounds of Agony", chance = 35, interval = 3000, count = 2 },


	},
}

monster.voices = {
    interval = 5000,
    chance = 100,
    { text = "Act 2 is over? Do not flatter yourself.", yell = true },
    { text = "You are still weak, and you have no idea what you have stepped into.", yell = true },
    { text = "So you think finishing Act 2 means something?", yell = true },
    { text = "Every victory you claim only proves how much you still lack", yell = true },
    { text = "This was nothing. You will not endure what lies ahead.", yell = true }
}



monster.loot = {
	{ id = 49435, chance = 1000000, minCount = 200, maxCount = 2000 }, -- hunting task token
	{ id = 49393, chance = 100000, minCount = 100, maxCount = 350 }, -- reward token
	{ name = "red crystal coin", chance = 100000, minCount = 200, maxCount = 325 },
	{ name = "green crystal coin", chance = 100000, minCount = 250, maxCount = 455 },
	{ id = 3043, chance = 1000000, minCount = 300, maxCount = 1020 }, -- crystal coin
	{ id = 18339, chance = 3000, maxCount = 1 }, -- Zaoan chess box
	{ id = 39040, chance = 91000, minCount = 3, maxCount = 15 }, -- fiery tear
	{ id = 44604, chance = 30000, minCount = 1, maxCount = 4 }, -- greater guardian gem
	{ id = 44607, chance = 30010, minCount = 1, maxCount = 4 }, -- greater marksman gem
	{ id = 44613, chance = 30020, minCount = 1, maxCount = 4 }, -- greater mystic gem
	{ id = 44610, chance = 30030, minCount = 1, maxCount = 4 }, -- greater sage gem
	{ id = 39037, chance = 100000, minCount = 5, maxCount = 8 }, -- cobalt ridge 
	{ id = 63667, chance = 100000, minCount = 1, maxCount = 4 },  -- UE UPGRADE
	{ id = 49921, chance = 1000000, minCount = 5, maxCount = 8 },  -- Boss Token
	{ id = 43898, chance = 26000 },  -- Bag you covet - GRAND
	{ id = 34109, chance = 29700 },  -- Bag you desire
	{ id = 22721, chance = 98000, minCount = 5, maxCount = 8 },  -- Gold Token
	{ id = 37110, chance = 1000000, minCount = 5, maxCount = 5 },  -- Exalted core
    { id = 19391, chance = 5000 }, -- furious frock
    { id = 43895, chance = 55050 },  -- Bag you covet - zwykly
    { id = 39546, chance = 30320 },  -- Primal Bag
	{ id = 3364, chance = 22000 }, -- golden legs
	{ id = 8074, chance = 22000 }, -- spellbook of mind control
	{ id = 3420, chance = 20000 }, -- demon shield
	{ id = 8057, chance = 20000 }, -- divine plate
	{ id = 46290, chance = 8000, minCount = 1, maxCount = 2 }, -- chronobag
	{ id = 46302, chance = 8000, minCount = 1, maxCount = 2 }, -- mistery bag
	{ id = 46294, chance = 5000, minCount = 1, maxCount = 1 }, -- Dread Bag
    { id = 46289, chance = 5000, minCount = 1, maxCount = 1 }, -- Eternal Bag

}

monster.attacks = {
	{ name = "melee", interval = 1000, chance = 100, minDamage = -1500, maxDamage = -2200 },
	{ name = "combat", interval = 2000, chance = 30, type = COMBAT_DEATHDAMAGE, minDamage = -1800, maxDamage = -2900, radius = 9, effect = CONST_ME_MORTAREA, target = false },
	{ name = "speed", interval = 2000, chance = 40, speedChange = -1000, radius = 6, effect = CONST_ME_POISONAREA, target = false, duration = 60000 },
	{ name = "strength", interval = 2000, chance = 10, minDamage = -1600, maxDamage = -2450, radius = 5, effect = CONST_ME_HITAREA, target = false },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_FIREDAMAGE, minDamage = -1300, maxDamage = -1800, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_MANADRAIN, minDamage = -1600, maxDamage = -2700, radius = 10, effect = CONST_ME_ENERGYAREA, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -1400, maxDamage = -2800, length = 8, spread = 0, effect = CONST_ME_MAGIC_RED, target = false },
	{ name = "condition", type = CONDITION_POISON, interval = 1000, chance = 55, minDamage = -1800, maxDamage = -2300, effect = CONST_ME_HITBYPOISON, target = false },
	{ name = "combat", interval = 2000, chance = 30, type = COMBAT_LIFEDRAIN, minDamage = -1600, maxDamage = -2200, radius = 14, effect = CONST_ME_MAGIC_GREEN, target = false },
}

monster.defenses = {
	defense = 120,
	armor = 100,
	--	mitigation = ???,
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 2900, maxDamage = 4500, effect = CONST_ME_MAGIC_GREEN, target = false },
	{ name = "invisible", interval = 4000, chance = 10, effect = CONST_ME_MAGIC_BLUE },
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