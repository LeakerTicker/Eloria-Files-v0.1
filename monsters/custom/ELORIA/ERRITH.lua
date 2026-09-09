local mType = Game.createMonsterType("ERRITH")
local monster = {}

monster.description = "a ERRITH"
monster.experience = 25000000
monster.outfit = {
	lookType = 4093,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}


monster.bosstiary = {
	bossRaceId = 2674,
	bossRace = RARITY_NEMESIS,
}



monster.health = 1250000
monster.maxHealth = 1250000
monster.race = "undead"
monster.corpse = 6068
monster.speed = 750
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
	runHealth = 25000,
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
		{ name = "Hounds of Agony", chance = 60, interval = 4000, count = 2 },
		{ name = "Elder Guardian", chance = 60, interval = 4000, count = 2 },

	},
}

monster.voices = {
    interval = 5000,
    chance = 100,
    { text = "Act 4 ends here, but so does your illusion of strength.", yell = true },
    { text = "You still stand after Act 4, which surprises me. It will not last much longer.", yell = true },
    { text = "Every step forward only exposes how fragile you truly are.", yell = true },
    { text = "You crawled through Act 4, not conquered it.", yell = true },
}



monster.loot = {
	{ id = 49435, chance = 1000000, minCount = 600, maxCount = 5000 }, -- hunting task token
	{ id = 49393, chance = 100000, minCount = 100, maxCount = 750 }, -- reward token
	{ name = "red crystal coin", chance = 100000, minCount = 500, maxCount = 725 },
	{ name = "green crystal coin", chance = 100000, minCount = 550, maxCount = 755 },
	{ id = 3043, chance = 1000000, minCount = 600, maxCount = 1020 }, -- crystal coin
	{ id = 18339, chance = 3000, maxCount = 1 }, -- Zaoan chess box
	{ id = 39040, chance = 91000, minCount = 3, maxCount = 15 }, -- fiery tear
	{ id = 44604, chance = 30000, minCount = 1, maxCount = 5 }, -- greater guardian gem
	{ id = 44607, chance = 30010, minCount = 1, maxCount = 5 }, -- greater marksman gem
	{ id = 44613, chance = 30020, minCount = 1, maxCount = 5 }, -- greater mystic gem
	{ id = 44610, chance = 30030, minCount = 1, maxCount = 5 }, -- greater sage gem
	{ id = 39037, chance = 100000, minCount = 5, maxCount = 8 }, -- cobalt ridge 
	{ id = 49921, chance = 1000000, minCount = 5, maxCount = 9 },  -- Boss Token
	{ id = 43898, chance = 60000 },  -- Bag you covet - GRAND
	{ id = 34109, chance = 100000 },  -- Bag you desire
	{ id = 22721, chance = 98000, minCount = 3, maxCount = 8 },  -- Gold Token
	{ id = 37110, chance = 1000000, minCount = 5, maxCount = 5 },  -- Exalted core
    { id = 19391, chance = 15000 }, -- furious frock
    { id = 43895, chance = 65050 },  -- Bag you covet - zwykly
    { id = 39546, chance = 40320 },  -- Primal Bag
	{ id = 3364, chance = 220000}, -- golden legs
	{ id = 8074, chance = 220000 }, -- spellbook of mind control
	{ id = 3420, chance = 200000 }, -- demon shield
	{ id = 8057, chance = 200000 }, -- divine plate
	{ id = 46290, chance = 8000, minCount = 1, maxCount = 2 }, -- chronobag
	{ id = 46302, chance = 8010, minCount = 1, maxCount = 2 }, -- mistery bag
	{ id = 46294, chance = 6000, minCount = 1, maxCount = 1 }, -- Dread Bag
    { id = 46289, chance = 4000, minCount = 1, maxCount = 1 }, -- Eternal Bag
	{ id = 46289, chance = 4010, minCount = 1, maxCount = 1 }, -- brainstealer bag
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -1000, maxDamage = -2950 },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_MANADRAIN, minDamage = -2500, maxDamage = -4900, range = 7, effect = CONST_ME_MAGIC_RED, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_LIFEDRAIN, minDamage = -2300, maxDamage = -4950, length = 8, spread = 3, effect = CONST_ME_ROZ, target = false },
	{ name = "combat", interval = 2000, chance = 30, type = COMBAT_LIFEDRAIN, minDamage = -2450, maxDamage = -5500, radius = 6, effect = CONST_ME_ROZZ, target = false },
	{ name = "condition", type = CONDITION_POISON, interval = 2000, chance = 25, minDamage = -2320, maxDamage = -4540, range = 7, shootEffect = CONST_ME_REAPER, target = false },
	{ name = "condition", type = CONDITION_ENERGY, interval = 2000, chance = 35, minDamage = -2300, maxDamage = -5500, radius = 6, effect = CONST_ME_REAPER, target = false },
	{ name = "condition", type = CONDITION_FIRE, interval = 2000, chance = 25, minDamage = -2500, maxDamage = -5700, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true },
}

monster.defenses = {
	defense = 120,
	armor = 100,
	--	mitigation = ???,
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 5900, maxDamage = 7500, effect = CONST_ME_MAGIC_GREEN, target = false },
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