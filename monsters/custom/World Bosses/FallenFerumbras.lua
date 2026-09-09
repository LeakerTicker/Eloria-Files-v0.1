local mType = Game.createMonsterType("Fallen Ferumbras")
local monster = {}

monster.description = "a Fallen Ferumbras"
monster.experience = 1500000
monster.outfit = {
	lookType = 844,
	lookHead = 2,
	lookBody = 94,
	lookLegs = 78,
	lookFeet = 79,
	lookAddons = 0,
	lookMount = 0,

}



monster.bosstiary = {
	bossRaceId = 2628,
	bossRace = RARITY_NEMESIS,
}

monster.health = 5000000
monster.maxHealth = 5000000
monster.race = "undead"
monster.corpse = 6068
monster.speed = 500
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 80,
}

monster.strategiesTarget = {
	nearest = 30,
	health = 50,
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
	maxSummons = 6,
	summons = {
		{ name = "Sphere", chance = 60, interval = 3000, count = 1 },
		{ name = "Sphere", chance = 70, interval = 3000, count = 1 },
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
	{ id = 49921, chance = 1000000, minCount = 5, maxCount = 10 },  -- Boss Token
	{ id = 49393, chance = 1000000, minCount = 100, maxCount = 300 }, -- reward token
	{ id = 49435, chance = 1000000, minCount = 1000, maxCount = 4000 }, -- hunting task token
	{ id = 63667, chance = 1000000, minCount = 2, maxCount = 4 }, -- Ue Upgrade
	{ id = 5903, chance = 100, unique = true }, -- Ferumbras' Hat - unique loot
	{ id = 20066, chance = 1100 }, -- umbral masterblade
	{ id = 20069, chance = 1200 }, -- umbral master slayer
	{ id = 20072, chance = 1000 }, -- umbral master axe
	{ id = 20075, chance = 1500 }, -- umbral master chopper
	{ id = 20081, chance = 1000 }, -- umbral master hammer
	{ id = 20078, chance = 1500 }, -- umbral master mace
	{ id = 20084, chance = 1250 }, -- umbral master bow
	{ id = 20087, chance = 1400 }, -- umbral master crossbow
	{ id = 20090, chance = 1200 }, -- umbral master spellbook
	{ id = 61717, chance = 1250 }, -- umbral master katar
	{ id = 61718, chance = 1250 }, -- umbral katar
	{ id = 3360, chance = 500, unique = true }, -- Winged Helmet
	{ id = 3364, chance = 22000 }, -- golden legs
	{ id = 8074, chance = 22000 }, -- spellbook of mind control
	{ id = 3420, chance = 20000 }, -- demon shield
	{ id = 8057, chance = 20000 }, -- divine plate
	{ id = 46290, chance = 4150}, -- chronobag
	{ id = 46302, chance = 4151}, -- mistery bag

}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -350 },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_MANADRAIN, minDamage = -500, maxDamage = -700, range = 7, effect = CONST_ME_SLEEP, target = false },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_LIFEDRAIN, minDamage = -1300, maxDamage = -5450, length = 8, spread = 3, effect = CONST_ME_SMALLCLOUDS, target = false },
	{ name = "combat", interval = 2000, chance = 21, type = COMBAT_LIFEDRAIN, minDamage = -450, maxDamage = -2500, radius = 6, effect = CONST_ME_ORCSHAMAN_FIRE, target = false },
	-- poison
	{ name = "condition", type = CONDITION_POISON, interval = 2000, chance = 15, minDamage = -1320, maxDamage = -2740, range = 7, shootEffect = CONST_ANI_POISON, target = false },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -900, maxDamage = -1500, range = 4, radius = 3, effect = CONST_ME_SLEEP, target = false },
	-- energy damage
	{ name = "condition", type = CONDITION_ENERGY, interval = 2000, chance = 18, minDamage = -1200, maxDamage = -2400, radius = 6, effect = CONST_ME_GHOST_SMOKE, target = false },
	-- fire
	{ name = "condition", type = CONDITION_FIRE, interval = 3000, chance = 20, minDamage = -900, maxDamage = -3000, range = 7, radius = 2, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FERUMBRAS, target = true },
}


monster.defenses = {
	defense = 100,
	armor = 100,
	--	mitigation = ???,
	{ name = "combat", interval = 9000, chance = 15, type = COMBAT_HEALING, minDamage = 300, maxDamage = 4000, effect = CONST_ME_MAGIC_BLUE, target = false },
	{ name = "speed", interval = 4000, chance = 80, speedChange = 470, effect = CONST_ME_MAGIC_RED, target = false, duration = 6000 },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 10 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 20 },
	{ type = COMBAT_EARTHDAMAGE, percent = 10 },
	{ type = COMBAT_FIREDAMAGE, percent = 10 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 15 },
	{ type = COMBAT_HOLYDAMAGE, percent = 15 },
	{ type = COMBAT_DEATHDAMAGE, percent = 80 },
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
