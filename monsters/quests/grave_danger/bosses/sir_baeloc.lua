local mType = Game.createMonsterType("Sir Baeloc")
local monster = {}

monster.description = "Sir Baeloc"
monster.experience = 125000
monster.outfit = {
	lookType = 1222,
	lookHead = 57,
	lookBody = 81,
	lookLegs = 3,
	lookFeet = 93,
	lookAddons = 1,
	lookMount = 0,
}



monster.health = 125000
monster.maxHealth = 125000
monster.race = "venom"
monster.corpse = 31599
monster.speed = 125
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10,
}

monster.bosstiary = {
	bossRaceId = 1755,
	bossRace = RARITY_ARCHFOE,
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
	maxSummons = 3,
	summons = {
		{ name = "Retainer of Baeloc", chance = 20, interval = 2000, count = 1 },
	},
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{ name = "platinum coin", minCount = 1, maxCount = 5, chance = 100000 },
	{ name = "crystal coin", minCount = 0, maxCount = 2, chance = 50000 },
	{ name = "piece of draconian steel", minCount = 0, maxCount = 4, chance = 9000 },
	{ id = 3039, minCount = 0, maxCount = 1, chance = 12000 }, -- red gem
	{ id = 23542, chance = 9200 }, -- collar of blue plasma
	{ name = "greater sage gem", chance = 500 },
	{ name = "greater spiritualist gem", chance = 500 },
	{ name = "greater mystic gem", chance = 500 },
	{ name = "greater marksman gem", chance = 500 },
	{ name = "greater guardian gem", chance = 500 },
	{ id = 23544, chance = 9200 }, -- collar of red plasma
	{ name = "knight legs", chance = 11000 },
	{ name = "Death Oyoroi", chance = 3500 },
	{ name = "gold ingot", minCount = 3, maxCount = 5, chance = 103000 },
	{ name = "violet gem", minCount = 3, maxCount = 5, chance = 130000 },
	{ name = "yellow gem", minCount = 3, maxCount = 5, chance = 130000 },
	{ id = 23529, chance = 5000 }, -- ring of blue plasma
	{ id = 49413, chance = 1500}, -- Executioner Backpack
	{ id = 61728, chance = 2470 }, -- ring of orange plasma
	{ id = 61726, chance = 2470 }, -- collar of orange plasma
	{ id = 23533, chance = 5000 }, -- ring of red plasma
	{ name = "skull staff", chance = 95000 },
	{ name = "young lich worm", chance = 58500 },
	{ name = "embrace of nature", chance = 3400 },
	{ id = 31592, chance = 5800 }, -- signet ring
	{ name = "terra helmet", chance = 2750 },
	{ name = "gold token", chance = 8080 },
    { name = "silver token", chance = 8040 },
    { id = 43946, chance = 35000 },  -- Abridged Promotion Scroll
    { id = 49921, chance = 10000 },  -- Boss Token
			

}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -900, effect = CONST_ME_DRAWBLOOD },
	{ name = "combat", interval = 3100, chance = 37, type = COMBAT_PHYSICALDAMAGE, minDamage = -400, maxDamage = -1000, length = 7, spread = 0, effect = CONST_ME_DRAWBLOOD, target = false },
	{ name = "combat", interval = 2500, chance = 35, type = COMBAT_PHYSICALDAMAGE, minDamage = -350, maxDamage = -625, range = 5, shootEffect = CONST_ANI_WHIRLWINDAXE, effect = CONST_ME_DRAWBLOOD, target = true },
	{ name = "combat", interval = 2700, chance = 30, type = COMBAT_DEATHDAMAGE, minDamage = -180, maxDamage = -250, range = 1, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true },
}

monster.defenses = {
	defense = 25,
	armor = 78,
	--	mitigation = ???,
	{ name = "combat", interval = 2000, chance = 35, type = COMBAT_HEALING, minDamage = 350, maxDamage = 550, effect = CONST_ME_MAGIC_BLUE, target = false },
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
