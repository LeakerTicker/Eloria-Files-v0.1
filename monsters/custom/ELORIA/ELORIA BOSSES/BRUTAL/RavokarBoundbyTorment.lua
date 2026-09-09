local mType = Game.createMonsterType("Ravokar Bound by Torment")
local monster = {}

monster.description = "a Ravokar Bound by Torment"
monster.experience = 35000
monster.outfit = {
	lookType = 1815,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}


monster.bosstiary = {
	bossRaceId = 2637,
	bossRace = RARITY_NEMESIS,
}



monster.health = 2200000
monster.maxHealth = 2200000
monster.race = "undead"
monster.corpse = 6068
monster.speed = 160
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
		{ name = "Hounds of Agony", chance = 100, interval = 3000, count = 2 },
		{ name = "Hounds of Agony", chance = 100, interval = 3000, count = 2 },

	},
}

monster.voices = {
    interval = 6000,
    chance = 15,
    { text = "Kneel before Ravokar, the Warden of Eternity!", yell = true },
    { text = "Your mortal struggles only amuse me!", yell = true },
    { text = "Time bends to my will; your fate is already sealed.", yell = false },
    { text = "Do you hear it? The whispers of oblivion calling your name.", yell = false },
    { text = "The cycle of creation and destruction is my domain.", yell = false }
}


monster.loot = {


}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -950 },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_MANADRAIN, minDamage = -3500, maxDamage = -7900, range = 7, effect = CONST_ME_MAGIC_RED, target = false },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_LIFEDRAIN, minDamage = -3300, maxDamage = -7950, length = 8, spread = 3, effect = CONST_ME_ROZ, target = false },
	{ name = "combat", interval = 2000, chance = 31, type = COMBAT_LIFEDRAIN, minDamage = -9450, maxDamage = -19500, radius = 6, effect = CONST_ME_ROZZ, target = false },
	-- poison
	{ name = "condition", type = CONDITION_POISON, interval = 2000, chance = 15, minDamage = -3320, maxDamage = -8540, range = 7, shootEffect = CONST_ANI_POISON, target = false },
	-- energy damage
	{ name = "condition", type = CONDITION_ENERGY, interval = 2000, chance = 18, minDamage = -5300, maxDamage = -25500, radius = 6, effect = CONST_ME_REAPER, target = false },
	-- fire
	{ name = "condition", type = CONDITION_FIRE, interval = 3000, chance = 20, minDamage = -3500, maxDamage = -9700, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true },
}

monster.defenses = {
	defense = 120,
	armor = 100,
	--	mitigation = ???,
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 900, maxDamage = 1500, effect = CONST_ME_MAGIC_GREEN, target = false },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 10 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 90 },
	{ type = COMBAT_EARTHDAMAGE, percent = 90 },
	{ type = COMBAT_FIREDAMAGE, percent = 90 },
	{ type = COMBAT_LIFEDRAIN, percent = 100 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 20 },
	{ type = COMBAT_HOLYDAMAGE, percent = 20 },
	{ type = COMBAT_DEATHDAMAGE, percent = 5 },
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
