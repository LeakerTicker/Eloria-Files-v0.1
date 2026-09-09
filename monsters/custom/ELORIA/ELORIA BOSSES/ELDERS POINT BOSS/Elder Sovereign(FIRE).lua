local mType = Game.createMonsterType("Elder Sovereign")
local monster = {}

monster.description = "Elder Sovereign"
monster.experience = 5550000
monster.outfit = {
	lookType = 1798,
	lookHead = 94,
	lookBody = 94,
	lookLegs = 94,
	lookFeet = 94,
	lookAddons = 2,
	lookMount = 0,
}

monster.bosstiary = {
	bossRaceId = 2640,
	bossRace = RARITY_NEMESIS,
}



monster.health = 1000000
monster.maxHealth = 1000000
monster.race = "blood"
monster.corpse = 6068
monster.speed = 240
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 25,
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

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "You will die!", yell = true },
}

monster.summon = {
	maxSummons = 1,
	summons = {
		{ name = "Elder Stag", chance = 70, interval = 2000, count = 1 },
		{ name = "Elder Stag", chance = 70, interval = 2000, count = 1 },
		{ name = "Elder Stag", chance = 70, interval = 2000, count = 1 },
	},
}



monster.loot = {




}




monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, skill = 230, attack = 210 },
	{ name = "combat", interval = 2000, chance = 12, type = COMBAT_ENERGYDAMAGE, minDamage = -2900, maxDamage = -15600, radius = 8, effect = CONST_ME_GHOSTLY_BITE, target = false },
	{ name = "speed", interval = 2000, chance = 12, speedChange = -850, radius = 6, effect = CONST_ME_ROOTS, target = false, duration = 60000 },
	{ name = "strength", interval = 2000, chance = 12, minDamage = -800, maxDamage = -1500, radius = 6, effect = CONST_ME_YELLOW_ENERGY_SPARK, target = false },
	{ name = "combat", interval = 2000, chance = 13, type = COMBAT_ENERGYDAMAGE, minDamage = -9200, maxDamage = -15500, range = 6, radius = 6, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_DIVINE_DAZZLE, target = true },
	{ name = "combat", interval = 2000, chance = 12, type = COMBAT_MANADRAIN, minDamage = -2800, maxDamage = -17500, radius = 8, effect = CONST_ME_EARLY_THUNDER, target = false },
	{ name = "combat", interval = 2000, chance = 12, type = COMBAT_ENERGYDAMAGE, minDamage = -3800, maxDamage = -16500, length = 6, spread = 3, effect = CONST_ME_AGONY, target = false },
	{ name = "condition", type = CONDITION_POISON, interval = 2000, chance = 12, minDamage = -3300, maxDamage = -16100, effect = CONST_ME_EARLY_THUNDER, target = false },
	{ name = "combat", interval = 2000, chance = 12, type = COMBAT_LIFEDRAIN, minDamage = -2800, maxDamage = -16300, radius = 8, effect = CONST_ME_MAGIC_GREEN, target = false },
	
}

monster.defenses = {
	defense = 165,
	armor = 155,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 10 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = 90 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 0 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = 0 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = true },
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
