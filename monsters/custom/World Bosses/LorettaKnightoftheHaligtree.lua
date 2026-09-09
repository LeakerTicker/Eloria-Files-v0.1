local mType = Game.createMonsterType("Loretta Knight of the Haligtree")
local monster = {}

monster.description = "a Loretta Knight of the Haligtree"
monster.experience = 150000
monster.outfit = {
	lookType = 1278,
	lookHead = 2,
	lookBody = 94,
	lookLegs = 78,
	lookFeet = 79,
	lookAddons = 0,
	lookMount = 0,
}

monster.bosstiary = {
	bossRaceId = 2629,
	bossRace = RARITY_NEMESIS,
}


monster.health = 4000000
monster.maxHealth = 4000000
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
		{ name = "burning guard", chance = 100, interval = 3000, count = 2 },
	},
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "I AM THE NIGHTMARE WOVEN INTO REALITY, WHERE DREAD BLOSSOMS AND HAUNTS BECOME ACTUALITY!", yell = true },
	{ text = "BENEATH THE VEIL OF NIGHT, I WEAVE YOUR NIGHTMARES INTO A TAPESTRY OF FRIGHT!", yell = true },
	{ text = "MY SEED IS FEAR AND MY HARVEST ARE YOUR SOULS!", yell = true },

}

monster.loot = {
	{ id = 49921, chance = 1000000, minCount = 5, maxCount = 10 },  -- Boss Token
	{ id = 49393, chance = 1000000, minCount = 100, maxCount = 300 }, -- reward token
	{ id = 49435, chance = 1000000, minCount = 1000, maxCount = 4000 }, -- hunting task token
	{ id = 63667, chance = 1000000, minCount = 2, maxCount = 4 }, -- Ue Upgrade
	{ id = 3360, chance = 24000 }, -- golden armor
	{ id = 3364, chance = 22000 }, -- golden legs
	{ id = 8074, chance = 22000 }, -- spellbook of mind control
	{ id = 3420, chance = 20000 }, -- demon shield
	{ id = 8057, chance = 20000 }, -- divine plate
	{ name = "terra mantle", chance = 110250 },
	{ name = "magma amulet", chance = 105500 },
	{ name = "silver token", chance = 5000 },
	{ name = "gold ingot", chance = 500000 },
	{ name = "terra amulet", chance = 240800 },
	{ name = "giant sapphire", chance = 100800 },
	{ name = "magma monocle", chance = 67000 },
	{ name = "cobra club", chance = 2007 },
	{ name = "cobra axe", chance = 2006 },
	{ name = "cobra crossbow", chance = 2005 },
	{ name = "cobra hood", chance = 2004 },
	{ name = "cobra rod", chance = 2003 },
	{ name = "cobra sword", chance = 2002 },
	{ name = "cobra wand", chance = 2001 },
	{ name = "cobra amulet", chance = 5000 },
	{ name = "cobra bo", chance = 3000 },
	{ id = 46290, chance = 4150}, -- chronobag
	{ id = 46302, chance = 4151}, -- mistery bag
	{ id = 46294, chance = 2570}, -- Dread Bag
	{ id = 3309, chance = 1666 }, -- Thunder Hammer
    { id = 46094, chance = 2550 }, -- Eternal Bag

}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -3286 },
	{ name = "combat", interval = 2000, chance = 30, type = COMBAT_PHYSICALDAMAGE, minDamage = -575, maxDamage = -1750, range = 7, radius = 6, effect = CONST_ME_WATERSPLASH, target = false },
	{ name = "combat", interval = 3000, chance = 24, type = COMBAT_PHYSICALDAMAGE, minDamage = -480, maxDamage = -1950, range = 7, radius = 1, shootEffect = CONST_ANI_WHIRLWINDSWORD, target = true },
	{ name = "combat", interval = 4000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -1550, maxDamage = -2200, length = 8, spread = 3, effect = CONST_ME_MORTAREA, target = false },
	{ name = "combat", interval = 3000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -1500, maxDamage = -2720, range = 14, radius = 5, effect = CONST_ME_GIANTICE, target = false },
	{ name = "combat", interval = 4000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = -1150, maxDamage = -1975, range = 7, radius = 13, effect = CONST_ME_SUPREME_CUBE, target = false },
	{ name = "combat", interval = 4000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -1300, maxDamage = -2500, radius = 14, effect = CONST_ME_FATAL, target = false },
	{ name = "combat", interval = 3000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -500, maxDamage = -1125, range = 7, radius = 4, effect = CONST_ME_WATER_DROP, target = false },
}

monster.defenses = {
	defense = 100,
	armor = 100,
	--	mitigation = ???,
	{ name = "combat", interval = 3000, chance = 35, type = COMBAT_HEALING, minDamage = 800, maxDamage = 3100, effect = CONST_ME_MAGIC_BLUE, target = false },
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
	{ type = COMBAT_ICEDAMAGE, percent = 10 },
	{ type = COMBAT_HOLYDAMAGE, percent = 10 },
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
