local mType = Game.createMonsterType("Sugar Daddy")
local monster = {}

monster.description = "a sugar daddy"
monster.experience = 130740
monster.outfit = {
	lookType = 1764,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}


monster.bosstiary = {
	bossRaceId = 2562,
	bossRace = RARITY_BANE,
}

monster.health = 130100
monster.maxHealth = 130100
monster.race = "blood"
monster.corpse = 48417
monster.speed = 200
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10,
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

monster.summon = {
	maxSummons = 4,
	summons = {
		{ name = "sugar cube", chance = 100, interval = 1000, count = 4 },
	},
}
monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "SUGAR!!!", yell = false },
	{ text = "Sweet vengeance!", yell = false },
	{ text = "Let me have a bite!", yell = false },
	{ text = "YOU HAVE BAD BREATH, TAKE A MINT!!!", yell = false },
	{ text = "I LOOOOOOOOOVE CHOCOLATE TRUFFLES!!!", yell = false },
	{ text = "Yummy!", yell = false },
}

monster.loot = {
	{ name = "gold coin", chance = 100000, maxCount = 100 },
	{ name = "platinum coin", chance = 100000, maxCount = 7 },
	{ name = "cookie", chance = 5000, maxCount = 2 },
	{ name = "energy bar", chance = 5000, maxCount = 2 },
	{ name = "gummy rotworm", chance = 5000, maxCount = 2 },
	{ name = "dark chocolate coin", chance = 5000, maxCount = 2 },
	{ name = "brigadeiro", chance = 5000, maxCount = 1 },
	{ name = "pastry dragon", chance = 5000, maxCount = 1 },
	{ name = "cocoa grimoire", chance = 1000, maxCount = 1 },
	{ name = "greater sage gem", chance = 500 },
	{ name = "greater spiritualist gem", chance = 500 },
	{ name = "greater mystic gem", chance = 500 },
	{ name = "greater marksman gem", chance = 500 },
	{ name = "greater guardian gem", chance = 500 },
	{ name = "churro heart", chance = 5000, maxCount = 1 },
	{ name = "creamy grimoire", chance = 3000, maxCount = 1 },
	{ id = 48114, chance = 3500 }, 
	{ id = 45641, chance = 3400 }, 
	{ id = 45642, chance = 3300 },
	{ id = 45643, chance = 3200 },
	{ id = 45644, chance = 3100 },
	{ name = "gold token", chance = 8080 },
    { name = "silver token", chance = 8040 },
    { id = 43946, chance = 35000 },  -- Abridged Promotion Scroll
    { id = 49921, chance = 10000 },  -- Boss Token
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -700, maxDamage = -1500 },
	-- bleed
	{ name = "condition", type = CONDITION_BLEEDING, interval = 2000, chance = 10, minDamage = -800, maxDamage = -2500, radius = 3, effect = CONST_ME_DRAWBLOOD, target = false },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -800, maxDamage = -2500, length = 5, spread = 0, effect = CONST_ME_EXPLOSIONAREA, target = false },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -800, maxDamage = -2500, radius = 2, shootEffect = CONST_ANI_LARGEROCK, effect = CONST_ME_STONES, target = true },
	{ name = "speed", interval = 2000, chance = 15, speedChange = -100, radius = 5, effect = CONST_ME_MAGIC_RED, target = false, duration = 15000 },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = -700, maxDamage = -3500, radius = 4, effect = CONST_ME_MAGIC_RED, target = false },
}

monster.defenses = {
	defense = 38,
	armor = 74,
	mitigation = 2.31,
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
