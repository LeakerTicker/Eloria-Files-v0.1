local mType = Game.createMonsterType("ELDER")
local monster = {}

monster.description = "a ELDER"
monster.experience = 15000000
monster.outfit = {
	lookType = 4090,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}


monster.bosstiary = {
	bossRaceId = 2638,
	bossRace = RARITY_NEMESIS,
}



monster.health = 1000000
monster.maxHealth = 1000000
monster.race = "undead"
monster.corpse = 6068
monster.speed = 700
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
	maxSummons = 3,
	summons = {
		{ name = "Hounds of Agony", chance = 30, interval = 3000, count = 1 },
	},
}

monster.voices = {
    interval = 5000,
    chance = 100,
    { text = "Act 3 is over? Pathetic.", yell = true },
    { text = "If you think this was a challenge, Act 4 will break you.", yell = true },
    { text = "You reached the end of Act 3 by luck alone.", yell = true },
    { text = "Act 3 completed? Congratulations.", yell = true },
    { text = "This was a trial for the unprepared, and you still do not measure up.", yell = true },
}



monster.loot = {
	{ id = 49435, chance = 1000000, minCount = 200, maxCount = 3000 }, -- hunting task token
	{ id = 49393, chance = 100000, minCount = 100, maxCount = 400 }, -- reward token
	{ name = "red crystal coin", chance = 100000, minCount = 400, maxCount = 525 },
	{ name = "green crystal coin", chance = 100000, minCount = 450, maxCount = 655 },
	{ id = 3043, chance = 1000000, minCount = 300, maxCount = 1020 }, -- crystal coin
	{ id = 18339, chance = 3000, maxCount = 1 }, -- Zaoan chess box
	{ id = 39040, chance = 91000, minCount = 3, maxCount = 15 }, -- fiery tear
	{ id = 44604, chance = 30000, minCount = 1, maxCount = 4 }, -- greater guardian gem
	{ id = 44607, chance = 30010, minCount = 1, maxCount = 4 }, -- greater marksman gem
	{ id = 44613, chance = 30020, minCount = 1, maxCount = 4 }, -- greater mystic gem
	{ id = 44610, chance = 30030, minCount = 1, maxCount = 4 }, -- greater sage gem
	{ id = 39037, chance = 100000, minCount = 5, maxCount = 8 }, -- cobalt ridge 
	{ id = 63667, chance = 100000, minCount = 1, maxCount = 5 },  -- UE UPGRADE
	{ id = 49921, chance = 1000000, minCount = 5, maxCount = 8 },  -- Boss Token
	{ id = 43898, chance = 6000 },  -- Bag you covet - GRAND
	{ id = 34109, chance = 97000 },  -- Bag you desire
	{ id = 22721, chance = 98000, minCount = 5, maxCount = 8 },  -- Gold Token
	{ id = 37110, chance = 1000000, minCount = 5, maxCount = 5 },  -- Exalted core
    { id = 19391, chance = 15000 }, -- furious frock
    { id = 43895, chance = 55050 },  -- Bag you covet - zwykly
    { id = 39546, chance = 50320 },  -- Primal Bag
	{ id = 3364, chance = 22000 }, -- golden legs
	{ id = 8074, chance = 22000 }, -- spellbook of mind control
	{ id = 3420, chance = 20000 }, -- demon shield
	{ id = 8057, chance = 20000 }, -- divine plate
	{ id = 46290, chance = 7000, minCount = 1, maxCount = 2 }, -- chronobag
	{ id = 46302, chance = 7000, minCount = 1, maxCount = 2 }, -- mistery bag
	{ id = 46294, chance = 5000, minCount = 1, maxCount = 2 }, -- Dread Bag
    { id = 46289, chance = 5000, minCount = 1, maxCount = 2 }, -- Eternal Bag
	{ id = 46289, chance = 3000, minCount = 1, maxCount = 1 }, -- brainstealer bag
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -2500, maxDamage = -4000 },
	{ name = "energy beam", interval = 4000, chance = 40, minDamage = -2000, maxDamage = -3200, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYAREA, target = false },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_FIREDAMAGE, minDamage = -1350, maxDamage = -3500, radius = 3, Effect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = false },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_DEATHDAMAGE, minDamage = -1335, maxDamage = -3450, radius = 4, Effect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = false },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_PHYSICALDAMAGE, minDamage = -1330, maxDamage = -3380, length = 7, effect = CONST_ME_EXPLOSIONAREA, target = false },
	{ name = "combat", interval = 2000, chance = 30, type = COMBAT_FIREDAMAGE, minDamage = -1300, maxDamage = -3410, range = 4, radius = 4, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_ENERGYDAMAGE, minDamage = -1385, maxDamage = -3535, range = 4, radius = 1, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYAREA, target = true },
	{ name = "energy wave", interval = 2000, chance = 10, minDamage = -2500, maxDamage = -5200, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYAREA, target = false },
}

monster.defenses = {
	defense = 120,
	armor = 100,
	--	mitigation = ???,
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 3900, maxDamage = 6500, effect = CONST_ME_MAGIC_GREEN, target = false },
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