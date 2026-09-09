local mType = Game.createMonsterType("The Enraged Thorn Knight")
local monster = {}

monster.description = "the enraged Thorn Knight"
monster.experience = 90000
monster.outfit = {
	lookType = 512,
	lookHead = 81,
	lookBody = 121,
	lookLegs = 121,
	lookFeet = 121,
	lookAddons = 3,
	lookMount = 0,
}


monster.bosstiary = {
	bossRaceId = 1297,
	bossRace = RARITY_ARCHFOE,
}

monster.health = 90000
monster.maxHealth = 90000
monster.race = "blood"
monster.corpse = 111
monster.speed = 175
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 0,
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
	runHealth = 15,
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
	{ text = "You've killed my only friend!", yell = false },
	{ text = "You will pay for this!", yell = false },
	{ text = "NOOOOO!", yell = true },
}

monster.loot = {
	{ id = 3031, chance = 50320, maxCount = 165 }, -- gold coin
	{ id = 3035, chance = 50320, maxCount = 30 }, -- platinum coin
	{ id = 16119, chance = 9660, maxCount = 5 }, -- blue crystal shard
	{ id = 16120, chance = 9660, maxCount = 5 }, -- violet crystal shard
	{ id = 16121, chance = 9660, maxCount = 5 }, -- green crystal shard
	{ id = 3032, chance = 9660, maxCount = 5 }, -- small emerald
	{ id = 3030, chance = 7360, maxCount = 5 }, -- small ruby
	{ id = 9057, chance = 7350, maxCount = 5 }, -- small topaz
	{ id = 3033, chance = 7150, maxCount = 5 }, -- small amethyst
	{ id = 46410, chance = 1500}, -- Celestial Backpack
	{ id = 5887, chance = 5909, maxCount = 2 }, -- piece of royal steel
	{ id = 3041, chance = 50000 }, -- blue gem
	{ id = 3039, chance = 22000 }, -- red gem
	{ id = 3038, chance = 50000 }, -- green gem
	{ id = 3037, chance = 50000 }, -- yellow gem
	{ id = 6499, chance = 144600 }, -- demonic essence
	{ id = 281, chance = 70000 }, -- giant shimmering pearl (green)
	{ id = 3295, chance = 20000 }, -- bright sword
	{ id = 7453, chance = 1000 }, -- executioner
	{ name = "greater sage gem", chance = 500 },
	{ name = "greater spiritualist gem", chance = 500 },
	{ name = "greater mystic gem", chance = 500 },
	{ name = "greater marksman gem", chance = 500 },
	{ name = "greater guardian gem", chance = 500 },
	{ id = 24966, chance = 1000 }, -- forbidden fruit
	{ id = 3436, chance = 10000 }, -- medusa shield
	{ id = 9302, chance = 5000 }, -- sacred tree amulet
	{ id = 8052, chance = 5000 }, -- swamplair armor
	{ id = 20203, chance = 10000 }, -- trapped bad dream monster
	{ name = "gold token", chance = 7080 },
	{ name = "silver token", chance = 7140 },
	{ id = 49921, chance = 10000 },  -- Boss Token
	{ id = 43946, chance = 30000 },  -- Abridged Promotion Scroll
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -600, maxDamage = -1000 },
	{ name = "combat", interval = 2000, chance = 12, type = COMBAT_LIFEDRAIN, minDamage = -400, maxDamage = -700, length = 4, spread = 0, effect = CONST_ME_POFF, target = false },
	{ name = "combat", interval = 2000, chance = 12, type = COMBAT_MANADRAIN, minDamage = -1400, maxDamage = -1700, length = 9, spread = 0, effect = CONST_ME_CARNIPHILA, target = false },
	{ name = "combat", interval = 2000, chance = 12, type = COMBAT_DEATHDAMAGE, minDamage = -400, maxDamage = -700, length = 9, spread = 0, effect = CONST_ME_MORTAREA, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -200, maxDamage = -250, radius = 10, effect = CONST_ME_BLOCKHIT, target = false },
}

monster.defenses = {
	defense = 60,
	armor = 60,
	--	mitigation = ???,
	{ name = "speed", interval = 1000, chance = 12, speedChange = 620, effect = CONST_ME_MAGIC_RED, target = false, duration = 4000 },
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

monster.heals = {
	{ type = COMBAT_DEATHDAMAGE, percent = 100 },
}

mType:register(monster)
