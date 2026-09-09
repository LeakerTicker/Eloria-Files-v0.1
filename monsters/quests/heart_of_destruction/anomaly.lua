local mType = Game.createMonsterType("Anomaly")
local monster = {}

monster.description = "anomaly"
monster.experience = 150000
monster.outfit = {
	lookType = 876,
	lookHead = 38,
	lookBody = 79,
	lookLegs = 76,
	lookFeet = 79,
	lookAddons = 1,
	lookMount = 0,
}

monster.bosstiary = {
	bossRaceId = 1219,
	bossRace = RARITY_ARCHFOE,
}

monster.health = 150000
monster.maxHealth = 150000
monster.race = "venom"
monster.corpse = 23564
monster.speed = 200
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
}

monster.loot = {
	{ id = 22721, chance = 1000000, maxCount = 4 }, -- gold token
	{ id = 23509, chance = 1000000 }, -- mysterious remains
	{ id = 3031, chance = 1000000, maxCount = 200 }, -- gold coin
	{ id = 3035, chance = 1000000, maxCount = 30 }, -- platinum coin
	{ id = 16119, chance = 80000, maxCount = 3 }, -- blue crystal shard
	{ id = 16120, chance = 80000, maxCount = 3 }, -- violet crystal shard
	{ id = 16121, chance = 80000, maxCount = 3 }, -- green crystal shard
	{ id = 3033, chance = 80000, maxCount = 10 }, -- small amethyst
	{ id = 3028, chance = 80000, maxCount = 10 }, -- small diamond
	{ id = 9057, chance = 80000, maxCount = 10 }, -- small topaz
	{ id = 46003, chance = 1500}, -- Guildbank Backpack
	{ id = 3037, chance = 80000 }, -- yellow gem
	{ id = 3041, chance = 60000 }, -- blue gem
	{ id = 3038, chance = 60000 }, -- green gem
	{ id = 23542, chance = 35000 }, -- collar of blue plasma
	{ id = 23529, chance = 35000 }, -- ring of blue plasma
	{ id = 23531, chance = 35000 }, -- ring of green plasma
	{ name = "greater sage gem", chance = 500 },
	{ name = "greater spiritualist gem", chance = 500 },
	{ name = "greater mystic gem", chance = 500 },
	{ name = "greater marksman gem", chance = 500 },
	{ name = "greater guardian gem", chance = 500 },
	{ id = 23511, chance = 80000 }, -- curious matter
	{ id = 23519, chance = 80000 }, -- frozen lightning
	{ id = 61728, chance = 2470 }, -- ring of orange plasma
	{ id = 61726, chance = 2470 }, -- collar of orange plasma
	{ id = 16160, chance = 40000, unique = true }, -- crystalline sword
	{ id = 828, chance = 40000 }, -- lightning headband
	{ id = 7427, chance = 30000 }, -- chaos mace
	{ id = 7451, chance = 30000 }, -- shadow sceptre
	{ id = 8073, chance = 30000 }, -- spellbook of warding
	{ id = 822, chance = 25000 }, -- lightning legs
	{ id = 825, chance = 25000 }, -- lightning robe
	{ id = 23474, chance = 16000, unique = true }, -- tiara of power
	{ id = 23477, chance = 16000, unique = true }, -- void boots
	{ id = 6553, chance = 16000, unique = true }, -- ruthless axe
	{ id = 282, chance = 16000, maxCount = 3 }, -- giant shimmering pearl (brown)
	{ name = "gold token", chance = 8080 },
    { name = "silver token", chance = 8040 },
    { id = 43946, chance = 35000 },  -- Abridged Promotion Scroll
    { id = 49921, chance = 10000 },  -- Boss Token
			

}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -300, maxDamage = -1400 },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_DEATHDAMAGE, minDamage = -300, maxDamage = -600, radius = 4, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true },
	{ name = "anomaly wave", interval = 2000, chance = 25, minDamage = -500, maxDamage = -900, target = false },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_PHYSICALDAMAGE, minDamage = -600, maxDamage = -1000, length = 9, spread = 0, effect = CONST_ME_EXPLOSIONHIT, target = false },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_LIFEDRAIN, minDamage = -300, maxDamage = -600, length = 9, spread = 0, effect = CONST_ME_MAGIC_RED, target = false },
	{ name = "anomaly break", interval = 2000, chance = 40, target = false },
}

monster.defenses = {
	defense = 100,
	armor = 100,
	--	mitigation = ???,
	{ name = "combat", interval = 2000, chance = 30, type = COMBAT_HEALING, minDamage = 150, maxDamage = 400, effect = CONST_ME_MAGIC_BLUE, target = false },
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
