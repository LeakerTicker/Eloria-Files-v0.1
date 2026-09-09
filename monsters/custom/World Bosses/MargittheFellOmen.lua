local mType = Game.createMonsterType("Margit the Fell Omen")
local monster = {}

monster.description = "Margit the Fell Omen"
monster.experience = 500000
monster.outfit = {
	lookType = 1655,
	lookHead = 78,
	lookBody = 3,
	lookLegs = 79,
	lookFeet = 79,
	lookAddons = 0,
	lookMount = 0,

}

monster.bosstiary = {
	bossRaceId = 2632,
	bossRace = RARITY_NEMESIS,
}



monster.health = 4000000
monster.maxHealth = 4000000
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
	"Lunar",
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
	{ text = "MARGIT THE FELL OMEN'S SINISTER AURA CONSUMES ALL LIGHT", yell = true },
	{ text = "THE DREADFUL PRESENCE OF MARGIT THE FELL OMEN DARKENS THE LANDS!", yell = true },
	{ text = "THE WORLD TREMBLES UNDER MARGIT THE FELL OMEN'S UNHOLY INFLUENCE!", yell = true },
	{ text = "ONLY THE BRAVEST DARE TO CONFRONT MARGIT THE FELL OMEN AND PROTECT THE REALM!", yell = true },
	{ text = "MARGIT THE FELL OMEN'S TERRIFYING POWER THREATENS THE VERY EXISTENCE OF EXISTENCE!", yell = true },
	{ text = "THE POWER OF HIS INTERNAL FIRE RENEWS MARGIT!", yell = true },
	{ text = "I WILL RULE WHEN THE NEW ORDER IS ESTABLISHED!", yell = true },
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
	{ name = "violet gem", chance = 5723 },
	{ name = "terra hood", chance = 4819 },
	{ name = "terra amulet", chance = 4518 },
	{ name = "giant sapphire", chance = 4217 },
	{ name = "giant ruby", chance = 3012 },
	{ name = "underworld rod", chance = 2410 },
	{ name = "lion spangenhelm", chance = 2300 },
	{ name = "lion plate", chance = 2300 },
	{ name = "lion shield", chance = 2300 },
	{ name = "lion longsword", chance = 2350 },
	{ name = "lion hammer", chance = 2300 },
	{ name = "lion axe", chance = 2300 },
	{ name = "lion longbow", chance = 3200 },
	{ name = "lion spellbook", chance = 2350 },
	{ name = "lion wand", chance = 2350 },
	{ name = "lion claws", chance = 2400 },
	{ name = "lion amulet", chance = 2450 },
	{ name = "lion rod", chance = 2500 },
	{ id = 46290, chance = 4150}, -- chronobag
	{ id = 46302, chance = 4151}, -- mistery bag
	

}


monster.summon = {
	maxSummons = 1,
	summons = {
		{ name = "Fell Omen", chance = 70, interval = 2000, count = 1 },
	},
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -800, maxDamage = -2300 },
	{ name = "omrafir wave", interval = 2000, chance = 28, minDamage = -700, maxDamage = -4600, target = false },
	{ name = "omrafir beam", interval = 2000, chance = 30, minDamage = -700, maxDamage = -2300, target = false },
	{ name = "reality reaver wave", interval = 2000, chance = 20, minDamage = -900, maxDamage = -3650, target = false },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, radius = 1, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_HITBYFIRE, target = true },
	{ name = "firefield", interval = 2000, chance = 35, radius = 3, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREATTACK, target = true },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_ENERGYDAMAGE, minDamage = -930, maxDamage = -950, range = 6, shootEffect = CONST_ANI_FLASHARROW, effect = CONST_ME_STUN, target = true },
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
	{ type = COMBAT_DEATHDAMAGE, percent = 50 },
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
