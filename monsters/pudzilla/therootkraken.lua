local mType = Game.createMonsterType("The Rootkraken")
local monster = {}

monster.description = "The Rootkraken"
monster.experience = 250000
monster.outfit = {
	lookType = 1765,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.bosstiary = {
	bossRaceId = 2528,
	bossRace = RARITY_ARCHFOE,
}

monster.health = 250000
monster.maxHealth = 250000
monster.race = "undead"
monster.corpse = 48418
monster.speed = 135
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
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
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false,
}


monster.light = {
	level = 0,
	color = 0,
}


	monster.loot = {
	{ name = "crystal coin", chance = 550000, minCount = 70, maxCount = 175 },
	{ name = "amber", chance = 115031, maxCount = 1 },
	{ name = "amber with a dragonfly", chance = 50917, maxCount = 1 },
	{ name = "amber with a bug", chance = 131096, maxCount = 1 },
	{ name = "white gem", chance = 62081, maxCount = 2 },
	{ name = "blue gem", chance = 85030, maxCount = 2 },
	{ name = "giant topaz", chance = 135059, maxCount = 1 },
	{ name = "Amber Kusarigama", chance = 2548, maxCount = 1 },
	{ name = "amber crusher", chance = 130000, maxCount = 1 },
	{ id = 49412, chance = 1500}, -- Morguls Backpack
	{ name = "fish eye", chance = 128007, maxCount = 1 },
	{ name = "giant sapphire", chance = 120734, maxCount = 1 },
	{ name = "root tentacle", chance = 64073, maxCount = 1 },
	{ name = "strange inedible fruit", chance = 100276, maxCount = 1 },
	{ name = "greater sage gem", chance = 500 },
	{ name = "greater spiritualist gem", chance = 500 },
	{ name = "greater mystic gem", chance = 500 },
	{ name = "greater marksman gem", chance = 500 },
	{ name = "greater guardian gem", chance = 500 },
	{ name = "giant topaz", chance = 500000 },
    { name = "yellow gem", chance = 500000 },
	{ name = "amber wand", chance = 3402, },
	{ name = "amber slayer", chance = 2450, },
	{ name = "amber sabre", chance = 2400, },
	{ name = "amber rod", chance = 3400, },
	{ name = "amber greataxe", chance = 2300, },
	{ name = "amber cudgel", chance = 2200, },
	{ name = "amber crossbow", chance = 3100, },
	{ name = "amber bludgeon", chance = 3000, },
	{ name = "amber bow", chance = 2500, },
	{ id = 49921, chance = 10000 },  -- Boss Token
    { name = "gold token", chance = 10080 },
    { name = "silver token", chance = 10040 },
    { id = 43946, chance = 40000 },  -- Abridged Promotion Scroll

}

monster.attacks = {
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -1000, maxDamage = -1500, length = 8, spread = 0, effect = CONST_ME_SMALLPLANTS },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -1500, maxDamage = -2100, effect = CONST_ME_SMALLPLANTS },
	{ name = "melee", interval = 2000, chance = 100, skill = 200, attack = 250 },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -1400, maxDamage = -2000, range = 7, effect = CONST_ANI_DEATH, target = true },
	{ name = "combat", interval = 2000, chance = 30, type = COMBAT_HOLYDAMAGE, minDamage = -600, maxDamage = -3000, range = 4, radius = 3, shootEffect = CONST_ANI_HOLY, effect = CONST_ME_HOLYDAMAGE, target = true },
	{ name = "combat", type = COMBAT_DEATHDAMAGE, interval = 2000, chance = 20, radius = 4, minDamage = -1200, maxDamage = -3000, effect = CONST_ME_MORTAREA, shootEffect = CONST_ANI_SUDDENDEATH, target = true, range = 7 },
    { name = "speed", interval = 2000, chance = 10, speedChange = -300, range = 7, effect = CONST_ME_MAGIC_RED, target = false, duration = 15000 },
    { name = "combat", interval = 2000, chance = 13, type = COMBAT_EARTHDAMAGE, minDamage = -1200, maxDamage = -2400, length = 8, spread = 3, effect = CONST_ME_SMALLPLANTS, target = false },
}

monster.defenses = {
	defense = 2,
	armor = 3,
	--	mitigation = ???,
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
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = false },
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

