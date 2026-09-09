local mType = Game.createMonsterType("Faceless Bane")
local monster = {}

monster.description = "Faceless Bane"
monster.experience = 20000
monster.outfit = {
	lookType = 1119,
	lookHead = 0,
	lookBody = 2,
	lookLegs = 95,
	lookFeet = 97,
	lookAddons = 0,
	lookMount = 0,
}

monster.health = 100000
monster.maxHealth = 100000
monster.race = "blood"
monster.corpse = 30013
monster.speed = 125
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 20,
}

monster.reflects = {
	{ type = COMBAT_DEATHDAMAGE, percent = 1 },
}

monster.bosstiary = {
	bossRaceId = 1727,
	bossRace = RARITY_ARCHFOE,
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
	canWalkOnFire = false,
	canWalkOnPoison = true,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{ id = 3039, chance = 16670 }, -- red gem
	{ name = "blue gem", chance = 2630 },
	{ name = "book backpack", chance = 1880 },
	{ name = "cyan crystal fragment", chance = 13160 },
	{ id = 46321, chance = 1500}, -- Core Backpack
	{ name = "dream blossom staff", chance = 6750 },
	{ name = "ectoplasmic shield", chance = 2750 },
	{ id = 30344, chance = 3750 }, -- enchanted pendulet
	{ id = 282, chance = 880 }, -- giant shimmering pearl
	{ name = "gold ingot", chance = 8330 },
	{ name = "green crystal shard", chance = 4390 },
	{ name = "green gem", chance = 8330 },
	{ name = "hailstorm rod", chance = 9650 },
	{ name = "hexagonal ruby", chance = 880 },
	{ name = "lightning pendant", chance = 2630 },
	{ name = "platinum coin", chance = 83330, maxCount = 19 },
	{ name = "spirit guide", chance = 3750 },
	{ name = "greater sage gem", chance = 500 },
	{ name = "greater spiritualist gem", chance = 500 },
	{ name = "greater mystic gem", chance = 500 },
	{ name = "greater marksman gem", chance = 500 },
	{ name = "greater guardian gem", chance = 500 },
	{ name = "springsprout rod", chance = 880 },
	{ name = "underworld rod", chance = 35100 },
	{ name = "violet crystal shard", chance = 26300 },
	{ name = "violet gem", chance = 17500 },
	{ name = "wand of everblazing", chance = 8800 },
	{ name = "yellow gem", chance = 166070 },
	{ name = "gold token", chance = 8080 },
    { name = "silver token", chance = 8040 },
    { id = 43946, chance = 35000 },  -- Abridged Promotion Scroll
    { id = 49921, chance = 10000 },  -- Boss Token
			

}

monster.attacks = {
	{ name = "melee", type = COMBAT_PHYSICALDAMAGE, interval = 2000, minDamage = 0, maxDamage = -575 },
	{ name = "combat", interval = 2000, chance = 65, type = COMBAT_FIREDAMAGE, minDamage = -350, maxDamage = -500, radius = 3, Effect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = false },
	{ name = "combat", interval = 2000, chance = 45, type = COMBAT_DEATHDAMAGE, minDamage = -335, maxDamage = -450, radius = 4, Effect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = false },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_PHYSICALDAMAGE, minDamage = -330, maxDamage = -380, length = 7, effect = CONST_ME_EXPLOSIONAREA, target = false },
	{ name = "combat", interval = 2000, chance = 35, type = COMBAT_FIREDAMAGE, minDamage = -300, maxDamage = -410, range = 4, radius = 4, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -385, maxDamage = -535, range = 4, radius = 1, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYAREA, target = true },
}

monster.defenses = {
	defense = 5,
	armor = 10,
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
