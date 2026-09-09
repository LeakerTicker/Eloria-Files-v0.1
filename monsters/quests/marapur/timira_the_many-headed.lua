local mType = Game.createMonsterType("Timira the Many-Headed")
local monster = {}

monster.name = "Timira The Many-Headed"
monster.description = "Timira the Many-Headed"
monster.experience = 75500
monster.outfit = {
	lookType = 1542,
	lookAddons = 3,
}

monster.bosstiary = {
	bossRaceId = 2250,
	bossRace = RARITY_ARCHFOE,
}

monster.health = 75000
monster.maxHealth = 75000
monster.race = "blood"
monster.corpse = 39712
monster.speed = 120
monster.manaCost = 0



monster.changeTarget = {
	interval = 2000,
	chance = 25,
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

	healthHidden = false,

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
	{ text = "Harmony is just a vain illusion! ", yell = false },
	{ text = " I'm ashamed of my former self! ", yell = false },
	{ text = " You won't lead me astray!", yell = false },
}

monster.loot = {
	{ name = "crystal coin", chance = 100000, maxCount = 22 },
	{ name = "naga basin", chance = 12245 },
	{ name = "piece of timira's sensors", chance = 10204 },
	{ name = "giant amethyst", chance = 6122 },
	{ name = "giant ruby", chance = 4082 },
	{ name = "giant emerald", chance = 4082 },
	{ name = "one of timira's many heads", chance = 2041 },
	{ name = "giant sapphire", chance = 2041 },
	{ name = "giant topaz", chance = 2041 },
	{ id = 39233, chance = 3600 }, -- enchanted turtle amulet
	{ id = 46333, chance = 1500}, -- Anniversary Backpack
	{ name = "dawnfire sherwani", chance = 2002 },
	{ name = "frostflower boots", chance = 3050 },
	{ name = "feverbloom boots", chance = 3000 },
	{ name = "midnight tunic", chance = 2001 },
	{ name = "midnight sarong", chance = 2000 },
	{ name = "Naga Katar", chance = 2041 },
	{ name = "naga quiver", chance = 1300 },
	{ name = "naga sword", chance = 1290 },
	{ name = "greater sage gem", chance = 500 },
	{ name = "greater spiritualist gem", chance = 500 },
	{ name = "greater mystic gem", chance = 500 },
	{ name = "greater marksman gem", chance = 500 },
	{ name = "greater guardian gem", chance = 500 },
	{ name = "naga club", chance = 1270 },
	{ name = "naga wand", chance = 1260 },
	{ name = "naga rod", chance = 1250 },
	{ name = "naga crossbow", chance = 1200 },
	{ name = "gold token", chance = 7080 },
    { name = "silver token", chance = 7140 },
    { id = 49921, chance = 10000 },  -- Boss Token
	{ id = 43946, chance = 30000 },  -- Abridged Promotion Scroll
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -600 },
	{ name = "timira fire ring", interval = 3500, chance = 50, minDamage = -360, maxDamage = -425 },
	{ name = "death chain", interval = 2500, chance = 30, minDamage = -190, maxDamage = -225, range = 3, target = true },
	{ name = "mana drain chain", interval = 2500, chance = 20, minDamage = -100, maxDamage = -130 },
	{ name = "timira explosion", interval = 4200, chance = 40, minDamage = -350, maxDamage = -560 },
	{ name = "combat", interval = 5500, chance = 45, type = COMBAT_PHYSICALDAMAGE, minDamage = -580, maxDamage = -620, length = 6, spread = 2, effect = CONST_ME_EXPLOSIONAREA, target = false },
	{ name = "combat", interval = 5000, chance = 60, type = COMBAT_ENERGYDAMAGE, minDamage = -230, maxDamage = -450, range = 1, radius = 1, shootEffect = CONST_ANI_ENERGYBALL, effect = CONST_ME_ENERGYHIT, target = true },
}

monster.defenses = {
	defense = 60,
	armor = 82,
	mitigation = 2.07,
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
