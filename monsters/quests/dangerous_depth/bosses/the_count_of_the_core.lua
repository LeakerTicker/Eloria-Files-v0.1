local mType = Game.createMonsterType("The Count of the Core")
local monster = {}

monster.description = "The Count Of The Core"
monster.experience = 120000
monster.outfit = {
	lookType = 1046,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}



monster.health = 120000
monster.maxHealth = 120000
monster.race = "blood"
monster.corpse = 27637
monster.speed = 135
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 10,
}

monster.bosstiary = {
	bossRaceId = 1519,
	bossRace = RARITY_BANE,
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
	{ text = "Shluush!", yell = false },
	{ text = "Sluuurp!", yell = false },
}

monster.loot = {
	{ name = "platinum coin", chance = 100000, maxCount = 54 },
	{ name = "amber staff", chance = 100000 },
	{ name = "small topaz", chance = 60000, maxCount = 10 },
	{ name = "green crystal shard", chance = 60000 },
	{ name = "wand of inferno", chance = 60000 },
	{ name = "huge spiky snail shell", chance = 60000 },
	{ name = "small diamond", chance = 40000 },
	{ name = "huge chunk of crude iron", chance = 40000, maxCount = 3 },
	{ id = 282, chance = 40000 }, -- giant shimmering pearl
	{ name = "yellow gem", chance = 200900 },
	{ name = "fire sword", chance = 209000 },
	{ id = 3039, chance = 20000 }, -- red gem
	{ name = "green gem", chance = 20000 },
	{ name = "greater sage gem", chance = 500 },
	{ name = "greater spiritualist gem", chance = 500 },
	{ name = "greater mystic gem", chance = 500 },
	{ name = "greater marksman gem", chance = 500 },
	{ name = "greater guardian gem", chance = 500 },
	{ name = "magic sulphur", chance = 40680 },
	{ id = 27626, chance = 237930 }, -- chitinous mouth (count)
	{ name = "blue gem", chance = 229030 },
	{ name = "small emerald", chance = 186490 },
	{ name = "small ruby", chance = 139560 },
	{ name = "small amethyst", chance = 11860 },
	{ name = "luminous orb", chance = 84970 },
	{ name = "crystal coin", chance = 69780 },
	{ name = "harpoon of a giant snail", chance = 5080 },
	{ name = "gnome shield", chance = 9080 },
	{ name = "Gnomish Footwraps", chance = 8890 },
	{ name = "gnome helmet", chance = 7390 },
	{ name = "magma coat", chance = 33990 },
	{ name = "gnome sword", chance = 39390 },
	{ name = "violet gem", chance = 33990 },
	{ name = "crystalline armor", chance = 16990 },
	{ name = "giant sword", chance = 16990 },
	{ name = "guardian axe", chance = 16990 },
	{ name = "twiceslicer", chance = 16990 },
	{ name = "tinged pot", chance = 5690 },
	{ name = "gold token", chance = 8080 },
    { name = "silver token", chance = 8040 },
    { id = 43946, chance = 35000 },  -- Abridged Promotion Scroll
    { id = 49921, chance = 10000 },  -- Boss Token
			

}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -900 },
	{ name = "combat", interval = 6000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = 0, maxDamage = -1500, range = 3, length = 9, spread = 0, effect = CONST_ME_MORTAREA, target = false },
	{ name = "combat", interval = 4000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = 0, maxDamage = -1500, range = 3, length = 9, spread = 4, effect = CONST_ME_SMALLCLOUDS, target = false },
	{ name = "combat", interval = 4000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -1500, radius = 8, effect = CONST_ME_HITAREA, target = false },
	{ name = "combat", interval = 4000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = 0, maxDamage = -1500, radius = 8, effect = CONST_ME_BLACKSMOKE, target = false },
}

monster.defenses = {
	defense = 160,
	armor = 160,
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
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
