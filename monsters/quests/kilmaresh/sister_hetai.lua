local mType = Game.createMonsterType("Sister Hetai")
local monster = {}

monster.description = "Sister Hetai"
monster.experience = 50500
monster.outfit = {
	lookType = 1199,
	lookHead = 114,
	lookBody = 19,
	lookLegs = 94,
	lookFeet = 78,
	lookAddons = 0,
	lookMount = 0,
}

monster.health = 55000
monster.maxHealth = 55000
monster.race = "blood"
monster.corpse = 31419
monster.speed = 115
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10,
}

monster.bosstiary = {
	bossRaceId = 2104,
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
}

monster.loot = {
	{ name = "dagger", chance = 500052 },
	{ name = "crystal coin", chance = 432003, maxCount = 1 },
	{ name = "sacred tree amulet", chance = 78001 },
	{ name = "gold ingot", chance = 67007, maxCount = 10 },
	{ name = "lightning headband", chance = 46009 },
	{ name = "underworld rod", chance = 46900 },
	{ name = "violet gem", chance = 46009 },
	{ name = "wand of cosmic energy", chance = 46009 },
	{ name = "onyx chip", chance = 41007 },
	{ name = "rainbow quartz", chance = 40017 },
	{ name = "small diamond", chance = 40017 },
	{ name = "wand of inferno", chance = 40017 },
	{ name = "knight armor", chance = 36005 },
	{ name = "lightning pendant", chance = 36500 },
	{ name = "small emerald", chance = 36500 },
	{ name = "focus cape", chance = 31300 },
	{ name = "magma coat", chance = 31300 },
	{ id = 3098, chance = 3130 }, -- ring of healing
	{ name = "greater sage gem", chance = 500 },
	{ name = "greater spiritualist gem", chance = 500 },
	{ name = "greater mystic gem", chance = 500 },
	{ name = "greater marksman gem", chance = 500 },
	{ name = "greater guardian gem", chance = 500 },
	{ name = "wand of starstorm", chance = 3130 },
	{ name = "magma boots", chance = 2600 },
	{ name = "metal spats", chance = 26000 },
	{ name = "warrior's shield", chance = 26000 },
	{ id = 3097, chance = 20008 }, -- dwarven ring
	{ name = "golden mask", chance = 20800 },
	{ name = "terra hood", chance = 20800 },
	{ name = "eye-embroidered veil", chance = 15600 },
	{ id = 23531, chance = 15600 }, -- ring of green plasma
	{ name = "terra boots", chance = 15600 },
	{ name = "yellow gem", chance = 15600 },
	{ name = "lightning legs", chance = 10400 },
	{ name = "sea horse figurine", chance = 10400 },
	{ name = "tagralt-inlaid scabbard", chance = 520 },
	{ id = 61728, chance = 2470 }, -- ring of orange plasma
	{ id = 61726, chance = 2470 }, -- collar of orange plasma
	{ name = "gold token", chance = 7080 },
    { name = "silver token", chance = 7140 },
    { id = 49921, chance = 10000 },  -- Boss Token
	{ id = 43946, chance = 30000 },  -- Abridged Promotion Scroll
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -270, maxDamage = -500 },
	{ name = "targetfirering", interval = 2000, chance = 40, minDamage = -500, maxDamage = -650, target = true },
	{ name = "combat", interval = 2000, chance = 70, type = COMBAT_FIREDAMAGE, minDamage = -350, maxDamage = -500, radius = 2, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_EXPLOSIONHIT, target = true },
	{ name = "combat", interval = 2000, chance = 30, type = COMBAT_ENERGYDAMAGE, minDamage = -500, maxDamage = -750, radius = 4, effect = CONST_ME_ENERGYAREA, target = false },
}

monster.defenses = {
	defense = 60,
	armor = 82,
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
	{ type = "outfit", condition = true },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
