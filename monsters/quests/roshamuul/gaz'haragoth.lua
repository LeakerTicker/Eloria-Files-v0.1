local mType = Game.createMonsterType("Gaz'Haragoth")
local monster = {}

monster.description = "Gaz'Haragoth"
monster.experience = 3000000
monster.outfit = {
	lookType = 591,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.health = 5000000
monster.maxHealth = 5000000
monster.race = "undead"
monster.corpse = 20228
monster.speed = 250
monster.manaCost = 0

monster.changeTarget = {
	interval = 10000,
	chance = 20,
}

monster.bosstiary = {
	bossRaceId = 1003,
	bossRace = RARITY_NEMESIS,
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
	staticAttackChance = 98,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false,
}


monster.light = {
	level = 0,
	color = 0,
}

monster.summon = {}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "NO ONE WILL ESCAPE ME!", yell = true },
	{ text = "I'LL KEEP THE ORDER UP!", yell = true },
	{ text = "I've beaten tougher demons then you even know!", yell = true },
	{ text = "You puny humans will be my snacks!", yell = true },
}

monster.loot = {
	{ id = 3043, chance = 10000, maxCount = 60 }, -- crystal coin
	{ id = 16124, chance = 10000, maxCount = 15 }, -- blue crystal splinter
	{ id = 20264, chance = 7000, maxCount = 3 }, -- unrealized dream
	{ id = 6499, chance = 1000, maxCount = 2 }, -- demonic essence
	{ id = 20063, chance = 2000, maxCount = 3 }, -- dream matter
	{ id = 20062, chance = 12000, maxCount = 14 }, -- cluster of solace
	{ id = 3041, chance = 10000, maxCount = 2 }, -- blue gem
	{ id = 16122, chance = 10000, maxCount = 10 }, -- green crystal splinter
	{ id = 16120, chance = 10000, maxCount = 15 }, -- violet crystal shard
	{ id = 20278, chance = 6000 }, -- demonic tapestry
	{ id = 5914, chance = 6000 }, -- yellow piece of cloth
	{ id = 5911, chance = 6000 }, -- red piece of cloth
	{ id = 20276, chance = 11000 }, -- dream warden mask
	{ id = 281, chance = 6000 }, -- giant shimmering pearl (green)
	{ id = 5954, chance = 6000 }, -- demon horn
	{ id = 20274, chance = 100000, unique = true }, -- nightmare horn
	{ id = 3052, chance = 6000 }, -- life ring
	{ id = 20280, chance = 60000 }, -- nightmare beacon
	{ id = 20279, chance = 60000 }, -- eye pod
	{ id = 20277, chance = 60000 }, -- psychedelic tapestry
	{ id = 20064, chance = 3000 }, -- crude umbral blade
	{ id = 20067, chance = 3000 }, -- crude umbral slayer
	{ id = 20070, chance = 3000 }, -- crude umbral axe
	{ id = 20073, chance = 3000 }, -- crude umbral chopper
	{ id = 20079, chance = 3000 }, -- crude umbral hammer
	{ id = 20076, chance = 3000 }, -- crude umbral mace
	{ id = 20082, chance = 3000 }, -- crude umbral bow
	{ id = 20085, chance = 3000 }, -- crude umbral crossbow
	{ id = 20088, chance = 3000 }, -- crude umbral spellbook
	{ id = 20065, chance = 3000 }, -- umbral blade
	{ id = 20068, chance = 3000 }, -- umbral slayer
	{ id = 20071, chance = 3000 }, -- umbral axe
	{ id = 20074, chance = 3000 }, -- umbral chopper
	{ id = 61718, chance = 1250 }, -- umbral katar
	{ id = 20080, chance = 3000 }, -- umbral hammer
	{ id = 20077, chance = 3000 }, -- umbral mace
	{ id = 20083, chance = 3500 }, -- umbral bow
	{ id = 20086, chance = 3000 }, -- umbral crossbow
	{ id = 20089, chance = 3000 }, -- umbral spellbook
	{ id = 20066, chance = 3000 }, -- umbral masterblade
	{ id = 20069, chance = 3000 }, -- umbral master slayer
	{ id = 20072, chance = 3000 }, -- umbral master axe
	{ id = 20075, chance = 3000 }, -- umbral master chopper
	{ id = 20081, chance = 3500 }, -- umbral master hammer
	{ id = 20078, chance = 3000 }, -- umbral master mace
	{ id = 61717, chance = 1250 }, -- umbral master katar
	{ id = 20084, chance = 3300 }, -- umbral master bow
	{ id = 20087, chance = 3000 }, -- umbral master crossbow
	{ id = 20090, chance = 3400 }, -- umbral master spellbook
	{ id = 10345, chance = 6000 }, -- solitude charm
	{ id = 10344, chance = 6000 }, -- twin sun charm
	{ id = 10343, chance = 6000 }, -- spiritual charm
	{ id = 10342, chance = 6000 }, -- unity charm
	{ id = 10341, chance = 6000 }, -- phoenix charm
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -5000 },
	{ name = "combat", interval = 3000, chance = 35, type = COMBAT_ICEDAMAGE, minDamage = -900, maxDamage = -1100, range = 7, radius = 7, shootEffect = CONST_ANI_ICE, effect = CONST_ME_ICEAREA, target = true },
	{ name = "combat", interval = 2000, chance = 13, type = COMBAT_DEATHDAMAGE, minDamage = -100, maxDamage = -1000, length = 8, spread = 3, effect = CONST_ME_POFF, target = false },
	{ name = "combat", interval = 2000, chance = 19, type = COMBAT_DEATHDAMAGE, minDamage = -100, maxDamage = -800, range = 7, radius = 6, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true },
	{ name = "melee", interval = 1800, chance = 40, minDamage = 0, maxDamage = -1000 },
	{ name = "combat", interval = 3000, chance = 30, type = COMBAT_FIREDAMAGE, minDamage = -2000, maxDamage = -4000, length = 8, spread = 3, effect = CONST_ME_HITBYFIRE, target = false },
	{ name = "combat", interval = 2000, chance = 14, type = COMBAT_FIREDAMAGE, minDamage = -1600, maxDamage = -3400, length = 8, spread = 3, effect = CONST_ME_FIREAREA, target = false },
	{ name = "combat", interval = 2500, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -200, maxDamage = -4800, range = 7, radius = 5, effect = CONST_ME_MAGIC_GREEN, target = false },
	{ name = "gaz'haragoth iceball", interval = 2000, chance = 24, minDamage = -1000, maxDamage = -1000, target = false },
	{ name = "gaz'haragoth death", interval = 4000, chance = 20, target = false },
	{ name = "gaz'haragoth paralyze", interval = 2000, chance = 12, target = false },
}

monster.defenses = {
	defense = 65,
	armor = 55,
	{ name = "combat", interval = 3000, chance = 35, type = COMBAT_HEALING, minDamage = 25000, maxDamage = 35000, effect = CONST_ME_MAGIC_BLUE, target = false },
	{ name = "speed", interval = 4000, chance = 80, speedChange = 700, effect = CONST_ME_MAGIC_RED, target = false, duration = 6000 },
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
