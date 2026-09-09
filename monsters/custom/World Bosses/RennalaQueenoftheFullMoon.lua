local mType = Game.createMonsterType("Rennala Queen of the Full Moon")
local monster = {}

monster.description = "a Rennala Queen of the Full Moon"
monster.experience = 150000
monster.outfit = {
	lookType = 1119,
	lookHead = 2,
	lookBody = 94,
	lookLegs = 78,
	lookFeet = 79,
	lookAddons = 0,
	lookMount = 0,

}

monster.bosstiary = {
	bossRaceId = 2634,
	bossRace = RARITY_NEMESIS,
}


monster.health = 12000000
monster.maxHealth = 12000000
monster.race = "fire"
monster.corpse = 6068
monster.speed = 305
monster.manaCost = 0

monster.changeTarget = {
	interval = 10000,
	chance = 20,
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
		{ name = "Ancestral Follower", chance = 100, interval = 3000, count = 2 },
		{ name = "Ancestral Spirit", chance = 100, interval = 3000, count = 2 },
	},
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "I AM Rennala Queen of the Full Moon... AND YOU ARE LOST!", yell = true },
	{ text = "MY SEED IS FEAR AND MY HARVEST ARE YOUR SOULS!", yell = true },

}

monster.loot = {
	{ id = 49921, chance = 1000000, minCount = 10, maxCount = 15 },  -- Boss Token
	{ id = 49393, chance = 1000000, minCount = 300, maxCount = 500 }, -- reward token
	{ id = 49435, chance = 1000000, minCount = 3000, maxCount = 6000 }, -- hunting task token
	{ id = 63667, chance = 1000000, minCount = 2, maxCount = 4 }, -- Ue Upgrade
	{ id = 3360, chance = 240000 }, -- golden armor
	{ id = 3363, chance = 500, unique = true }, -- dragon scale legs
	{ id = 8074, chance = 220000 }, -- spellbook of mind control
	{ id = 3420, chance = 200000 }, -- demon shield
	{ id = 8057, chance = 200000 }, -- divine plate
	{ name = "muck rod", chance = 10420 },
	{ name = "crystal coin", chance = 6250 },
	{ name = "gnome shield", chance = 7170 },
	{ name = "crystalline armor", chance = 4170 },
	{ name = "gnome sword", chance = 4170 },
	{ name = "terra mantle", chance = 2080 },
	{ name = "violet gem", chance = 2080 },
	{ name = "gnome legs", chance = 6390 },
	{ id = 46290, chance = 7150}, -- chronobag
	{ id = 46302, chance = 7151}, -- mistery bag
	{ id = 46294, chance = 5570}, -- Dread Bag
	{ id = 3309, chance = 1666 }, -- Thunder Hammer
    { id = 46094, chance = 5550 }, -- Eternal Bag
	{ id = 46303, chance = 3550 }, -- monster bag
	{ id = 46289, chance = 3540 }, -- brainstealer bag
	
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -2250 },
	{ name = "combat", interval = 3000, chance = 35, type = COMBAT_FIREDAMAGE, minDamage = -400, maxDamage = -1210, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true },
	{ name = "combat", interval = 3000, chance = 30, type = COMBAT_ENERGYDAMAGE, minDamage = -300, maxDamage = -1450, length = 8, spread = 3, effect = CONST_ME_ENERGYHIT, target = false },
	{ name = "combat", interval = 2000, chance = 21, type = COMBAT_LIFEDRAIN, minDamage = -450, maxDamage = -2500, radius = 6, effect = CONST_ME_ORCSHAMAN_FIRE, target = false },
	-- poison
	{ name = "condition", type = CONDITION_POISON, interval = 2000, chance = 15, minDamage = -1320, maxDamage = -2740, range = 7, shootEffect = CONST_ANI_POISON, target = false },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -900, maxDamage = -1500, range = 4, radius = 3, effect = CONST_ME_SLEEP, target = false },
	-- energy damage
	{ name = "condition", type = CONDITION_ENERGY, interval = 2000, chance = 18, minDamage = -1200, maxDamage = -2400, radius = 6, effect = CONST_ME_GHOST_SMOKE, target = false },
	-- fire
	{ name = "combat", interval = 3000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -100, maxDamage = -1500, range = 7, radius = 3, effect = CONST_ME_MAGIC_BLUE, target = false },
	{ name = "speed", interval = 2000, chance = 15, speedChange = -400, range = 7, effect = CONST_ME_SOUND_RED, target = false, duration = 20000 },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_MANADRAIN, minDamage = -70, maxDamage = -920, radius = 3, effect = CONST_ME_HITAREA, target = true },
	{ name = "dark torturer skill reducer", interval = 2000, chance = 5, target = false },
}

monster.defenses = {
	defense = 100,
	armor = 100,
	--	mitigation = ???,
	{ name = "combat", interval = 9000, chance = 15, type = COMBAT_HEALING, minDamage = 3800, maxDamage = 4000, effect = CONST_ME_MAGIC_BLUE, target = false },
	{ name = "speed", interval = 4000, chance = 80, speedChange = 470, effect = CONST_ME_MAGIC_RED, target = false, duration = 6000 },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 10 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 10 },
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
