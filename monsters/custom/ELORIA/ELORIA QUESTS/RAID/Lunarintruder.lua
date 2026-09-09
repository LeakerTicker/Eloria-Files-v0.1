local mType = Game.createMonsterType("Lunar Invictus")
local monster = {}

monster.description = "a Lunar Invictus"
monster.experience = 25300
monster.outfit = {
	lookType = 2039,
}



monster.health = 40000
monster.maxHealth = 40000
monster.race = "blood"
monster.corpse = 6068
monster.speed = 170
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10,
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
}

monster.events = {
	"SoulMonsterDeath",
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
	staticAttackChance = 60,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
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
	{ text = "I am the sender of Darkness!", yell = true },
	{ text = "Eclipse will destroy you!", yell = true },
}

monster.loot = {

	{ id = 3019, chance = 550 }, -- demonbone amulet
	{ name = "small ruby", chance = 20000, maxCount = 4 },
	{ name = "small emerald", chance = 20000, maxCount = 5 },
	{ name = "platinum coin", chance = 100000, maxCount = 15 },
	{ name = "violet gem", chance = 830 },
	{ name = "green gem", chance = 869 },
	{ id = 3039, chance = 13850 }, -- red gem
	{ name = "dragon hammer", chance = 9000 },
	{ name = "heavy mace", chance = 400 },
	{ name = "war axe", chance = 400 },
	{ name = "golden armor", chance = 550 },
	{ name = "golden legs", chance = 500 },
	{ name = "knight armor", chance = 4990 },
	{ name = "mastermind shield", chance = 800 },
	{ name = "demonic essence", chance = 45333 },
	{ name = "titan axe", chance = 4430 },
	{ name = "spiked squelcher", chance = 7761 },
	{ name = "skullcracker armor", chance = 400 },
	{ name = "gold ingot", chance = 7692, maxCount = 2 },
	{ id = 44008, chance = 570 }, -- moonlight ipomea's stamen
	{ id = 3386, chance = 870 }, -- dragon scale mail
	{ id = 3392, chance = 870 }, -- royal helmet
	{ id = 3422, chance = 870 }, -- great shield
	{ id = 22721, chance = 40 }, -- gold token
	{ id = 34109, chance = 1 }, -- bag you desire

}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1470 },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -780, range = 7, shootEffect = CONST_ANI_LARGEROCK, target = false },
	{ name = "reality reaver wave", interval = 2000, chance = 20, minDamage = -900, maxDamage = -1650, target = false },

}

monster.defenses = {
	defense = 60,
	armor = 70,
	mitigation = 1.74,
	{ name = "speed", interval = 2000, chance = 15, speedChange = 520, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000 },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 400, maxDamage = 900, effect = CONST_ME_MAGIC_BLUE, target = false },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 30 },
	{ type = COMBAT_ENERGYDAMAGE, percent = -10 },
	{ type = COMBAT_EARTHDAMAGE, percent = 20 },
	{ type = COMBAT_FIREDAMAGE, percent = 30 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 10 },
	{ type = COMBAT_HOLYDAMAGE, percent = -5 },
	{ type = COMBAT_DEATHDAMAGE, percent = 0 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
