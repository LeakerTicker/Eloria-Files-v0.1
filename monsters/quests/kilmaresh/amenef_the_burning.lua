local mType = Game.createMonsterType("Amenef the Burning")
local monster = {}

monster.description = "Amenef the Burning"
monster.experience = 21500
monster.outfit = {
	lookType = 541,
	lookHead = 113,
	lookBody = 114,
	lookLegs = 113,
	lookFeet = 113,
	lookAddons = 1,
	lookMount = 0,
}

monster.bosstiary = {
	bossRaceId = 2103,
	bossRace = RARITY_ARCHFOE,
}

monster.health = 26000
monster.maxHealth = 26000
monster.race = "blood"
monster.corpse = 31646
monster.speed = 115
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
	{ name = "crystal coin", chance = 7190, maxCount = 1 },
	{ name = "guardian halberd", chance = 1822 },
	{ id = 3097, chance = 1418 }, -- dwarven ring
	{ name = "knight armor", chance = 91002 },
	{ id = 23529, chance = 80010 }, -- ring of blue plasma
	{ name = "epee", chance = 70009 },
	{ name = "underworld rod", chance = 70009 },
	{ name = "knight axe", chance = 60008 },
	{ name = "springsprout rod", chance = 60008 },
	{ name = "wand of cosmic energy", chance = 50006 },
	{ name = "wand of inferno", chance = 50006 },
	{ id = 281, chance = 40005 }, -- giant shimmering pearl (green)
	{ name = "spellbook of warding", chance = 40005 },
	{ name = "violet gem", chance = 40005 },
	{ name = "wand of starstorm", chance = 40005 },
	{ name = "amber staff", chance = 30004 },
	{ id = 61728, chance = 2470 }, -- ring of orange plasma
	{ id = 61726, chance = 2470 }, -- collar of orange plasma
	{ name = "greater sage gem", chance = 500 },
	{ name = "greater spiritualist gem", chance = 500 },
	{ name = "greater mystic gem", chance = 500 },
	{ name = "greater marksman gem", chance = 500 },
	{ name = "greater guardian gem", chance = 500 },
	{ name = "assassin dagger", chance = 30004 },
	{ name = "blue gem", chance = 30004 },
	{ name = "eye-embroidered veil", chance = 30400 },
	{ name = "warrior's axe", chance = 30004 },
	{ name = "focus cape", chance = 20003 },
	{ name = "noble axe", chance = 20003 },
	{ name = "sacred tree amulet", chance = 20003 },
	{ name = "mercenary sword", chance = 10001 },
	{ name = "gold token", chance = 10000 },
	{ name = "silver token", chance = 10000 },
	{ id = 49921, chance = 10000 },  -- Boss Token
	{ id = 43946, chance = 48000 },  -- Abridged Promotion Scroll
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -150, maxDamage = -510 },
	{ name = "firering", interval = 2000, chance = 10, minDamage = -300, maxDamage = -600, target = false },
	{ name = "firex", interval = 2000, chance = 15, minDamage = -450, maxDamage = -750, target = false },
	{ name = "combat", interval = 2000, chance = 17, type = COMBAT_FIREDAMAGE, minDamage = -300, maxDamage = -600, radius = 2, effect = CONST_ME_FIREATTACK, target = false },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_ENERGYDAMAGE, minDamage = -500, maxDamage = -750, length = 3, spread = 0, effect = CONST_ME_ENERGYHIT, target = false },
}

monster.defenses = {
	defense = 60,
	armor = 82,
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
	{ type = "outfit", condition = true },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
