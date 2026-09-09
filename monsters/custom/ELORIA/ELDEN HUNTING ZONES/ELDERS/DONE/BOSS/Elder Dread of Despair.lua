local mType = Game.createMonsterType("Elder Dread of Despair")
local monster = {}

monster.description = "a Elder Dread of Despair"
monster.experience = 3000000
monster.outfit = {
	lookType = 1699,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}




monster.bosstiary = {
	bossRaceId = 2565,
	bossRace = RARITY_NEMESIS,
}








monster.health = 4400000
monster.maxHealth = 4400000
monster.race = "blood"
monster.corpse = 5526
monster.speed = 999
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10,
}
monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
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
	{ text = "Behold, the veil of reality is torn, revealing the cosmic absurdity.", yell = false },
	{ text = "Echoes of forgotten prophecies haunt the corridors of fate.", yell = false },
	{ text = "Spectral tendrils of uncertainty grasp at the edges of your perception.", yell = false },
}

monster.loot = {

	       ---Money making
	{ id = 3043, chance = 11000, maxCount = 5 }, -- Crystal Coin
	{ id = 43892, chance = 800 }, -- Eclipse dweberries
	{ id = 43964, chance = 80 },   -- Ichgahal's fungal infestation
	{ id = 43966, chance = 800 },  -- Chagorz igneous obsidian
	{ id = 43855, chance = 900 },   -- darklight heart
	{ id = 43967, chance = 90 },   -- Vemiath's infused basalt
	{ name = "small diamond", chance = 20000 },
	{ name = "blue gem", chance = 20000 },
	{ name = "crystal coin", chance = 64000 },

	{ id = 3036, chance = 900 },   -- violet gem
	{ id = 3038, chance = 900 },   -- green gem
	{ id = 3041, chance = 900 },   -- blue gem

   
	   
	{ id = 30061, chance = 6600 },   -- GIANTS
	{ id = 30060, chance = 6600 },   -- GIANTS
	{ id = 30059, chance = 6600 },   -- GIANTS





 			 ----- Lunar only
	{ id = 43737 , chance = 22 },  --- Lunar Soul
	{ id = 39037 , chance = 20 },  --- Lunar Stone
	{ id = 6551 , chance = 100 },  --- Blue Powder
	{ id = 6550 , chance = 100 },  --- Blue Powder	
 				 -----



-----Rare Drop



}




monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1510 },
	{ name = "combat", interval = 2500, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -16000, maxDamage = -53350, range = 2, effect = CONST_ME_BIG_SCRATCH, target = true },
	{ name = "combat", interval = 2500, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -42000, maxDamage = -44300, length = 8, spread = 4, effect = CONST_ME_EXPLOSIONHIT, target = false },
	{ name = "combat", interval = 2000, chance = 18, type = COMBAT_ENERGYDAMAGE, minDamage = -41200, maxDamage = -53600, radius = 14, effect = CONST_ME_LOSEENERGY, target = false },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -43200, maxDamage = -53600, range = 7, radius = 4, effect = 230, target = false },
	{ name = "death chain", interval = 2500, chance = 15, minDamage = -42400, maxDamage = -47000, range = 7 },
}

monster.defenses = {
	defense = 76,
	armor = 76,
	mitigation = 1.96,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 50 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 50 },
	{ type = COMBAT_EARTHDAMAGE, percent = 50 },
	{ type = COMBAT_FIREDAMAGE, percent = 50 },
	{ type = COMBAT_LIFEDRAIN, percent = 50 },
	{ type = COMBAT_MANADRAIN, percent = 50 },
	{ type = COMBAT_DROWNDAMAGE, percent = 50 },
	{ type = COMBAT_ICEDAMAGE, percent = 50 },
	{ type = COMBAT_HOLYDAMAGE, percent = 50 },
	{ type = COMBAT_DEATHDAMAGE, percent = 50 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
