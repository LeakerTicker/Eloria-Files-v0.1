local mType = Game.createMonsterType("Maliketh the Black Blade")
local monster = {}

monster.description = "a Maliketh the Black Blade"
monster.experience = 5000000
monster.outfit = {
	lookType = 1120,
	lookHead = 2,
	lookBody = 94,
	lookLegs = 78,
	lookFeet = 79,
	lookAddons = 0,
	lookMount = 0,
}

monster.bosstiary = {
	bossRaceId = 2631,
	bossRace = RARITY_NEMESIS,
}



monster.health = 20000000
monster.maxHealth = 20000000
monster.race = "undead"
monster.corpse = 6068
monster.speed = 800
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
		{ name = "Eternal Demon", chance = 100, interval = 3000, count = 2 },
		{ name = "Eternal Demon", chance = 100, interval = 3000, count = 2 },
	},
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "I AM the Black Blade... AND YOU ARE LOST!", yell = true },
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
	{ name = "giant sapphire", chance = 2041 },
	{ name = "Naga Katar", chance = 2041 },
	{ name = "dawnfire sherwani", chance = 2009 },
	{ name = "frostflower boots", chance = 3001 },
	{ name = "feverbloom boots", chance = 3000 },
	{ id = 39233, chance = 2600 }, -- enchanted turtle amulet
	{ name = "midnight tunic", chance = 2008 },
	{ name = "midnight sarong", chance = 2007 },
	{ name = "naga quiver", chance = 2006 },
	{ name = "naga sword", chance = 2005 },
	{ name = "naga axe", chance = 2004 },
	{ name = "naga club", chance = 2003 },
	{ name = "naga wand", chance = 2002 },
	{ name = "naga rod", chance = 2001 },
	{ name = "naga crossbow", chance = 2000 },
	{ id = 46290, chance = 4150}, -- chronobag
	{ id = 46302, chance = 4151}, -- mistery bag
	{ id = 46294, chance = 2570}, -- Dread Bag
	{ id = 3309, chance = 1666 }, -- Thunder Hammer
    { id = 46094, chance = 2550 }, -- Eternal Bag
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -2250 },
	{ name = "combat", interval = 3000, chance = 35, type = COMBAT_FIREDAMAGE, minDamage = -1400, maxDamage = -2210, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_INSECTS, target = true },
	{ name = "combat", interval = 1800, chance = 40, type = COMBAT_PHYSICALDAMAGE, minDamage = 330, maxDamage = -1580, range = 7, radius = 5, effect = CONST_ME_BIG_SCRATCH, target = false },
	{ name = "combat", interval = 3000, chance = 30, type = COMBAT_ENERGYDAMAGE, minDamage = -1400, maxDamage = -3450, length = 8, spread = 3, effect = CONST_ME_ASSASSIN, target = false },
	{ name = "combat", interval = 2500, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -200, maxDamage = -1850, range = 7, radius = 5, effect = CONST_ME_MAGIC_GREEN, target = false },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -250, maxDamage = -1050, range = 7, radius = 13, effect = CONST_ME_FATAL, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -200, maxDamage = -1550, radius = 14, effect = CONST_ME_BLACK_BLOOD, target = false },
	{ name = "combat", interval = 3000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -100, maxDamage = -1500, range = 7, radius = 3, effect = CONST_ME_ASSASSIN, target = false },
	{ name = "speed", interval = 2000, chance = 15, speedChange = -800, range = 7, effect = CONST_ME_ROOTS, target = false, duration = 20000 },
	{ name = "combat", interval = 2000, chance = 35, type = COMBAT_MANADRAIN, minDamage = -70, maxDamage = -520, radius = 3, effect = CONST_ME_BLACK_BLOOD, target = true },
	{ name = "dark torturer skill reducer", interval = 2000, chance = 5, target = false },
}

monster.defenses = {
	defense = 100,
	armor = 100,
	--	mitigation = ???,
	{ name = "combat", interval = 3000, chance = 35, type = COMBAT_HEALING, minDamage = 800, maxDamage = 3100, effect = CONST_ME_MAGIC_BLUE, target = false },
	{ name = "speed", interval = 4000, chance = 80, speedChange = 470, effect = CONST_ME_MAGIC_RED, target = false, duration = 6000 },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 20 },
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
