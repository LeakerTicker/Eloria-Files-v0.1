local mType = Game.createMonsterType("Rykard Lord of Blasphemy")
local monster = {}

monster.description = "a Rykard Lord of Blasphemy"
monster.experience = 3000
monster.outfit = {
	lookType = 1716,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}




monster.health = 1800000
monster.maxHealth = 1800000
monster.race = "undead"
monster.corpse = 44687
monster.speed = 800
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
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
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 70,
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
	{ name = "melee", interval = 2000, chance = 100, skill = 230, attack = 210 },
	{ name = "combat", interval = 2000, chance = 12, type = COMBAT_DEATHDAMAGE, minDamage = -3900, maxDamage = -11600, radius = 8, effect = CONST_ME_GHOSTLY_BITE, target = false },
	{ name = "speed", interval = 2000, chance = 12, speedChange = -850, radius = 6, effect = CONST_ME_ROOTS, target = false, duration = 60000 },
	{ name = "strength", interval = 2000, chance = 12, minDamage = -800, maxDamage = -3500, radius = 6, effect = CONST_ME_YELLOW_ENERGY_SPARK, target = false },
	{ name = "combat", interval = 2000, chance = 13, type = COMBAT_FIREDAMAGE, minDamage = -4900, maxDamage = -11500, range = 6, radius = 6, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_DIVINE_DAZZLE, target = true },
	{ name = "combat", interval = 2000, chance = 12, type = COMBAT_MANADRAIN, minDamage = -4800, maxDamage = -11500, radius = 8, effect = CONST_ME_EARLY_THUNDER, target = false },
	{ name = "combat", interval = 2000, chance = 12, type = COMBAT_ENERGYDAMAGE, minDamage = -5800, maxDamage = -11500, length = 6, spread = 3, effect = CONST_ME_AGONY, target = false },
	{ name = "condition", type = CONDITION_POISON, interval = 2000, chance = 12, minDamage = -5900, maxDamage = -11100, effect = CONST_ME_HITBYPOISON, target = false },
	{ name = "combat", interval = 2000, chance = 12, type = COMBAT_LIFEDRAIN, minDamage = -5800, maxDamage = -11300, radius = 8, effect = CONST_ME_MAGIC_GREEN, target = false },
	
}
monster.defenses = {
	defense = 55,
	armor = 44,
	mitigation = 1.74,
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 180, maxDamage = 250, effect = CONST_ME_MAGIC_BLUE, target = false },
	{ name = "speed", interval = 2000, chance = 15, speedChange = 320, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000 },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 30 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = 0 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -5 },
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
