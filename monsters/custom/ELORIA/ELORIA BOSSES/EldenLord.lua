local mType = Game.createMonsterType("Elden Lord")
local monster = {}

monster.description = "a Elden Lord"
monster.experience = 350000
monster.outfit = {
	lookType = 1628,
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



monster.health = 13500000
monster.maxHealth = 13500000
monster.race = "undead"
monster.corpse = 6068
monster.speed = 660
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
		{ name = "Eternal Demon", chance = 100, interval = 3000, count = 2 },
		{ name = "Eternal Demon", chance = 100, interval = 3000, count = 2 },

	},
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "NO ONE SHALL THWART THE ELDEN LORD'S ASCENDANCE!", yell = true },
	{ text = "THE LUNAR POWER COURSES THROUGH MY VEINS!", yell = true },
	{ text = "I have risen from the cosmic shadows, and your feeble attempts to challenge me are in vain!", yell = false },
	{ text = "Behold the celestial dance of the eclipse, heralding my eternal reign!", yell = false },
	{ text = "Even in the dim glow of my lunar weakness, I shall eclipse all who oppose me!", yell = false }
}

monster.loot = {
	{ id = 21435, chance = 400, maxCount = 1 }, -- black knight doll
	{ id = 33777, chance = 401, maxCount = 1 }, -- bard doll
	{ id = 38677, chance = 402, maxCount = 1 }, -- beaver of wisdomo doll
	{ id = 37054, chance = 403, maxCount = 1 }, -- Bella Bonecrusher's doll
	{ id = 37743, chance = 404, maxCount = 1 }, -- draptor doll  
	{ id = 36996, chance = 404, maxCount = 1 }, -- luna doll
	{ id = 34326, chance = 404, maxCount = 1 }, -- wicked witch doll
	{ id = 18339, chance = 3000, maxCount = 1 }, -- Zaoan chess box
	{ id = 43895, chance = 3050 },  -- Bag you covet - zwykly
	{ id = 30403, chance = 3100, maxCount = 1 }, -- enchanted theurgic amulet
	{ id = 39234, chance = 3200, maxCount = 1 }, -- Enchanted Turtle Amulet
	{ id = 30345, chance = 3300, maxCount = 1 }, -- enchanted pendulet
	{ id = 49429, chance = 4000 },  -- lasting exercise boox
	{ name = "greater sage gem", chance = 5500, minCount = 1, maxCount = 2 }, 
	{ name = "greater mystic gem", chance = 5500, minCount = 1, maxCount = 2 },  
	{ name = "greater marksman gem", chance = 5500, minCount = 1, maxCount = 2 }, 
	{ name = "greater guardian gem", chance = 5500, minCount = 1, maxCount = 2 }, 
	{ name = "greater spiritualist gem", chance = 5500, minCount = 1, maxCount = 2 }, 
	{ id = 30343, chance = 5200, maxCount = 1 }, -- sleep shawl
	{ id = 39546, chance = 7320 },  -- Primal Bag
	{ id = 34075, chance = 7500, maxCount = 5 }, -- skull of a beast
	{ id = 34109, chance = 8000 },  -- Bag you desire
	{ id = 37110, chance = 8350, maxCount = 5 }, -- Exalted core
	{ id = 23509, chance = 10000, maxCount = 12 }, -- mysterious remains
	{ id = 49422, chance = 20000 }, -- Durable Exercise Box
	{ id = 39037, chance = 90000, maxCount = 5 }, -- cobalt ridge
	{ id = 39040, chance = 91000, maxCount = 5 }, -- fiery tear
	{ id = 22721, chance = 98000, maxCount = 5 },  -- Gold Token
	{ id = 49393, chance = 100000, maxCount = 2 }, -- reward token
	{ name = "red crystal coin", chance = 100000, maxCount = 300 },
	{ name = "green crystal coin", chance = 100000, maxCount = 610 },
	{ id = 49921, chance = 100000 },  -- Boss Token
    { id = 19391, chance = 1000 }, -- furious frock
    { id = 43898, chance = 8000 },  -- Grand Sanguine Bag
    { id = 43895, chance = 55050 },  -- Bag you covet - zwykly
    { id = 39546, chance = 7320 },  -- Primal Bag
    { id = 34109, chance = 8000 },  -- Bag you desire
	{ id = 3364, chance = 22000 }, -- golden legs
	{ id = 8074, chance = 22000 }, -- spellbook of mind control
	{ id = 3420, chance = 20000 }, -- demon shield
	{ id = 8057, chance = 20000 }, -- divine plate
	{ id = 46290, chance = 4150}, -- chronobag
	{ id = 46302, chance = 4151}, -- mistery bag
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -950 },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_MANADRAIN, minDamage = -3500, maxDamage = -5900, range = 7, effect = CONST_ME_MAGIC_RED, target = false },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_LIFEDRAIN, minDamage = -3300, maxDamage = -5250, length = 8, spread = 3, effect = CONST_ME_WATER_DROP, target = false },
	{ name = "combat", interval = 2000, chance = 31, type = COMBAT_LIFEDRAIN, minDamage = -2450, maxDamage = -5500, radius = 6, effect = CONST_ME_FATAL, target = false },
	-- poison
	{ name = "condition", type = CONDITION_POISON, interval = 2000, chance = 15, minDamage = -3320, maxDamage = -5540, range = 7, shootEffect = CONST_ANI_POISON, target = false },
	-- energy damage
	{ name = "condition", type = CONDITION_ENERGY, interval = 2000, chance = 18, minDamage = -5300, maxDamage = -8500, radius = 6, effect = CONST_ME_AVATAR_APPEAR, target = false },
	-- fire
	{ name = "condition", type = CONDITION_FIRE, interval = 3000, chance = 20, minDamage = -3500, maxDamage = -7700, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true },
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
