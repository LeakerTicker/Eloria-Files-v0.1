local mType = Game.createMonsterType("Murcion")
local monster = {}

monster.description = "Murcion"
monster.experience = 225000
monster.outfit = {
	lookType = 1664,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}



monster.bosstiary = {
	bossRaceId = 2362,
	bossRace = RARITY_NEMESIS,
}

monster.health = 220000
monster.maxHealth = 220000
monster.race = "undead"
monster.corpse = 44015
monster.speed = 250
monster.manaCost = 0

monster.changeTarget = {
	interval = 60000,
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
	runHealth = 0,
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
    maxSummons = 9,
    summons = {
        { name = "Mushroom", chance = 30, interval = 2000, count = 8 },
		{ name = "Elder Bloodjaw", chance = 50, interval = 2000, count = 1 },

    },
} 


monster.voices = {}

monster.loot = {
	{ name = "crystal coin", chance = 550000, minCount = 70, maxCount = 175 },
	{ name = "giant sapphire", chance = 105046, maxCount = 3 },
	{ name = "blue gem", chance = 100000, maxCount = 9 },
	{ name = "green gem", chance = 100000, maxCount = 9 },
	{ id = 46069, chance = 1500}, -- Sanguine Backpack
	{ name = "violet gem", chance = 100000, maxCount = 9 },
	{ name = "white gem", chance = 100000, maxCount = 9 },
	{ name = "yellow gem", chance = 100000, maxCount = 9 },
	{ name = "Amber with a Bug", chance = 326024 },
	{ name = "Amber with a Dragonfly", chance = 326025 },
	{ name = "Dragon Figurine", chance = 310970 },
	{ name = "greater sage gem", chance = 500 },
	{ name = "greater spiritualist gem", chance = 500 },
	{ name = "greater mystic gem", chance = 500 },
	{ name = "greater marksman gem", chance = 500 },
	{ name = "greater guardian gem", chance = 500 },
	{ id = 43501, chance = 3600 }, -- The Essence of Murcion
	{ id = 43895, chance = 2000 }, -- Bag you covet
	{ id = 49921, chance = 10000 },  -- Boss Token
    { name = "gold token", chance = 10080 },
    { name = "silver token", chance = 10040 },
    { id = 43946, chance = 40000 },  -- Abridged Promotion Scroll
	
	}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -2400, maxDamage = -4300 },
	{ name = "combat", interval = 2000, chance = 35, type = COMBAT_DEATHDAMAGE, minDamage = -2500, maxDamage = -3000, radius = 4, effect = CONST_ME_SMALLCLOUDS, target = false },
	{ name = "combat", interval = 2000, chance = 35, type = COMBAT_HOLYDAMAGE, minDamage = -2500, maxDamage = -3000, range = 5, radius = 4, shootEffect = 31, effect = 248, target = true },
	{ name = "combat", interval = 2000, chance = 35, type = COMBAT_ICEDAMAGE, minDamage = -1000, maxDamage = -3000, length = 10, spread = 0, effect = 53, target = false },
	{ name = "combat", interval = 2000, chance = 35, type = COMBAT_PHYSICALDAMAGE, minDamage = -2500, maxDamage = -3400, length = 10, spread = 0, effect = 158, target = false },
	{ name = "speed", interval = 2000, chance = 60, speedChange = -800, radius = 7, effect = CONST_ME_POFF, target = false, duration = 20000 },
	}

monster.defenses = {
	defense = 105,
	armor = 105,
	{ name = "combat", interval = 3000, chance = 10, type = COMBAT_HEALING, minDamage = 2500, maxDamage = 4000, effect = 236, target = false },
	{ name = "destroy magic walls", interval = 1000, chance = 100 },

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
