local mType = Game.createMonsterType("Eradicator")
local monster = {}

monster.description = "Eradicator"
monster.experience = 150000
monster.outfit = {
	lookType = 875,
	lookHead = 79,
	lookBody = 3,
	lookLegs = 114,
	lookFeet = 79,
	lookAddons = 1,
	lookMount = 0,
}

monster.bosstiary = {
	bossRaceId = 1226,
	bossRace = RARITY_ARCHFOE,
}

monster.health = 150000
monster.maxHealth = 150000
monster.race = "venom"
monster.corpse = 23564
monster.speed = 225
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
	{ id = 3031, chance = 100000, maxCount = 200 }, -- gold coin
	{ id = 3035, chance = 100000, maxCount = 25 }, -- platinum coin
	{ id = 3033, chance = 8000, maxCount = 5 }, -- small amethyst
	{ id = 3030, chance = 8000, maxCount = 5 }, -- small ruby
	{ id = 9057, chance = 8000, maxCount = 5 }, -- small topaz
	{ id = 16120, chance = 8000, maxCount = 3 }, -- violet crystal shard
	{ id = 23535, chance = 8000 }, -- energy bar
	{ id = 23520, chance = 8000 }, -- plasmatic lightning
	{ id = 23516, chance = 8000 }, -- instable proto matter
	{ id = 23509, chance = 100000 }, -- mysterious remains
	{ id = 3041, chance = 6000 }, -- blue gem
	{ id = 3038, chance = 6000 }, -- green gem
	{ id = 8073, chance = 6000 }, -- spellbook of warding
	{ id = 3333, chance = 4000 }, -- crystal mace
	{ id = 23529, chance = 3500 }, -- ring of blue plasma
	{ name = "greater sage gem", chance = 500 },
	{ name = "greater spiritualist gem", chance = 500 },
	{ name = "greater mystic gem", chance = 500 },
	{ name = "greater marksman gem", chance = 500 },
	{ name = "greater guardian gem", chance = 500 },
	{ id = 23531, chance = 3500 }, -- ring of green plasma
	{ id = 23533, chance = 3500 }, -- ring of red plasma
	{ id = 3554, chance = 5000, unique = true }, -- steel boots
	{ id = 61728, chance = 2470 }, -- ring of orange plasma
	{ id = 61726, chance = 2470 }, -- collar of orange plasma
	{ id = 8075, chance = 3000, unique = true }, -- spellbook of lost souls
	{ name = "spark sphere", chance = 100000 },
	{ name = "gold token", chance = 8080 },
    { name = "silver token", chance = 8040 },
    { id = 43946, chance = 35000 },  -- Abridged Promotion Scroll
    { id = 49921, chance = 10000 },  -- Boss Token
			

}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -300, maxDamage = -1800 },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -600, maxDamage = -1000, length = 8, spread = 0, effect = CONST_ME_BLOCKHIT, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -600, maxDamage = -1000, length = 8, spread = 0, effect = CONST_ME_ENERGYHIT, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -450, maxDamage = -900, radius = 8, effect = CONST_ME_BLOCKHIT, target = false },
	{ name = "big energy wave", interval = 2000, chance = 20, minDamage = -700, maxDamage = -1000, target = false },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_DEATHDAMAGE, minDamage = -300, maxDamage = -600, radius = 4, effect = CONST_ME_ENERGYHIT, target = true },
}

monster.defenses = {
	defense = 100,
	armor = 100,
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
