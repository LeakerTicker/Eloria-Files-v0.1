local mType = Game.createMonsterType("Haunted Eloria")
local monster = {}

monster.description = "a Haunted Eloria"
monster.experience = 350000
monster.outfit = {
	lookType = 1924,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}


monster.events = {
	"Elden",
}

monster.bosstiary = {
	bossRaceId = 2627,
	bossRace = RARITY_NEMESIS,
}



monster.health = 7000000
monster.maxHealth = 7000000
monster.race = "undead"
monster.corpse = 6068
monster.speed = 900
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
	targetDistance = 2,
	runHealth = 2500,
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
		{ name = "Eternal Demon", chance = 100, interval = 2000, count = 2 },
		{ name = "Eternal Demon", chance = 100, interval = 2000, count = 2 },

	},
}


monster.loot = {

	{ id = 43895, chance = 3000 },  -- Bag you covet - zwykly
	{ id = 34109, chance = 8000 },  -- Bag you desire
	{ id = 39546, chance = 7320 },  -- Primal Bag
	{ id = 49393, chance = 100000, minCount = 50, maxCount = 300 }, -- reward token 
	{ id = 49435, chance = 100000, minCount = 100, maxCount = 1000 }, -- hunting task token
	{ id = 37110, chance = 8350, maxCount = 5 }, -- Exalted core 
	{ id = 34075, chance = 10500, maxCount = 1 }, -- skull of a beast
	{ id = 34076, chance = 10400, maxCount = 1 }, -- bracelet of strengthening
	{ id = 49921, chance = 100000, minCount = 1, maxCount = 5 }, -- boss token
	{ id = 49570, chance = 700000, minCount = 3, maxCount = 15 }, -- halloween token

}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, skill = 210, attack = 260 },
	{ name = "condition", type = CONDITION_FIRE, interval = 2000, chance = 7, minDamage = -3440, maxDamage = -5360, range = 2, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_BLOCKHIT, target = false },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_PHYSICALDAMAGE, minDamage = 4250, maxDamage = -5200, radius = 6, effect = CONST_ME_EXPLOSIONHIT, target = false },
	{ name = "combat", interval = 2000, chance = 50, type = COMBAT_FIREDAMAGE, minDamage = -5560, maxDamage = -6000, radius = 5, effect = CONST_ME_BLOCKHIT, target = false },
	{ name = "firefield", interval = 2000, chance = 20, radius = 8, effect = CONST_ME_EXPLOSIONHIT, target = false },
	{ name = "combat", interval = 2000, chance = 35, type = COMBAT_FIREDAMAGE, minDamage = -2880, maxDamage = -3880, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true },
	{ name = "combat", interval = 2000, chance = 45, type = COMBAT_DEATHDAMAGE, minDamage = -2680, maxDamage = -3280, length = 8, spread = 5, effect = CONST_ME_POFF, target = false },
	{ name = "combat", interval = 2000, chance = 35, type = COMBAT_DEATHDAMAGE, minDamage = -2680, maxDamage = -3840, range = 7, radius = 6, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true },
	{ name = "combat", interval = 2000, chance = 45, type = COMBAT_FIREDAMAGE, minDamage = -5000, maxDamage = -8000, length = 8, spread = 3, effect = CONST_ME_EXPLOSIONHIT, target = false },
	{ name = "combat", interval = 2000, chance = 35, type = COMBAT_FIREDAMAGE, minDamage = -4240, maxDamage = -6800, length = 8, spread = 3, effect = CONST_ME_FIREAREA, target = false },
}

monster.defenses = {
	defense = 120,
	armor = 100,
	--	mitigation = ???,
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 900, maxDamage = 1500, effect = CONST_ME_MAGIC_GREEN, target = false },
	{ name = "invisible", interval = 4000, chance = 20, effect = CONST_ME_MAGIC_BLUE },
	{ name = "outfit", interval = 3000, chance = 10, target = false, duration = 2000, outfitMonster = "Unseen Dominance" },
	{ name = "outfit", interval = 3000, chance = 10, target = false, duration = 2000, outfitMonster = "Elden Lord" },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 20 },
	{ type = COMBAT_EARTHDAMAGE, percent = 20 },
	{ type = COMBAT_FIREDAMAGE, percent = 20 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 20 },
	{ type = COMBAT_HOLYDAMAGE, percent = 10 },
	{ type = COMBAT_DEATHDAMAGE, percent = 25 },
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
