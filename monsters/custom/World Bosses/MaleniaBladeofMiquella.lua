local mType = Game.createMonsterType("Malenia Blade of Miquella")
local monster = {}

monster.description = "Malenia Blade of Miquella"
monster.experience = 500000
monster.outfit = {
	lookType = 1367,
}

monster.bosstiary = {
	bossRaceId = 2630,
	bossRace = RARITY_NEMESIS,
}



monster.health = 5000000
monster.maxHealth = 5000000
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

monster.events = {
	"Eclipse",
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
	{ text = "I am Malenia, Sword of Miquella", yell = true },
	{ text = "I have never known defeat!", yell = true },
	{ text = "My dear twin, accept this gift", yell = true },
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
	{ name = "young lich worm", chance = 15500 },
	{ name = "mortal mace", chance = 7300 },
	{ name = "bow of cataclysm", chance = 2600 },
	{ name = "galea mortis", chance = 2550 },
	{ name = "toga mortis", chance = 2500 },
	{ id = 46290, chance = 4150}, -- chronobag
	{ id = 46302, chance = 4151}, -- mistery bag

}


monster.summon = {
	maxSummons = 1,
	summons = {
		{ name = "Soul of defeated", chance = 30, interval = 2000, count = 1 },
	},
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, skill = 230, attack = 210 },
	{ name = "combat", interval = 2000, chance = 12, type = COMBAT_DEATHDAMAGE, minDamage = -900, maxDamage = -1600, radius = 8, effect = CONST_ME_GHOSTLY_BITE, target = false },
	{ name = "speed", interval = 2000, chance = 12, speedChange = -850, radius = 6, effect = CONST_ME_ROOTS, target = false, duration = 60000 },
	{ name = "strength", interval = 2000, chance = 12, minDamage = -800, maxDamage = -1500, radius = 6, effect = CONST_ME_YELLOW_ENERGY_SPARK, target = false },
	{ name = "combat", interval = 2000, chance = 13, type = COMBAT_FIREDAMAGE, minDamage = -900, maxDamage = -1500, range = 6, radius = 6, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_DIVINE_DAZZLE, target = true },
	{ name = "combat", interval = 2000, chance = 12, type = COMBAT_MANADRAIN, minDamage = -800, maxDamage = -1500, radius = 8, effect = CONST_ME_EARLY_THUNDER, target = false },
	{ name = "combat", interval = 2000, chance = 12, type = COMBAT_ENERGYDAMAGE, minDamage = -800, maxDamage = -1500, length = 6, spread = 3, effect = CONST_ME_AGONY, target = false },
	{ name = "condition", type = CONDITION_POISON, interval = 2000, chance = 12, minDamage = -900, maxDamage = -1100, effect = CONST_ME_HITBYPOISON, target = false },
	{ name = "combat", interval = 2000, chance = 12, type = COMBAT_LIFEDRAIN, minDamage = -800, maxDamage = -1300, radius = 8, effect = CONST_ME_MAGIC_GREEN, target = false },
	
}

monster.defenses = {
	defense = 100,
	armor = 100,
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
	{ type = COMBAT_HOLYDAMAGE, percent = 20 },
	{ type = COMBAT_DEATHDAMAGE, percent = 70 },
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
