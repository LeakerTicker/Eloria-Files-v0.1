local mType = Game.createMonsterType("Voidbound Shaman")
local monster = {}

monster.description = "Voidbound Shaman"
monster.experience = 2990000
monster.outfit = {
	lookType = 4031,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.health = 3315000
monster.maxHealth = 3315000
monster.race = "undead"
monster.corpse = 6068
monster.speed = 900
monster.manaCost = 0

monster.changeTarget = {
	interval = 10000,
	chance = 20,
}

monster.strategiesTarget = {
	nearest = 30,
	health = 10,
	damage = 50,
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
	{ text = "THE VOID SPEAKS THROUGH ME!", yell = true },
	{ text = "YOUR MIND BELONGS TO THE ABYSS!", yell = true },
	{ text = "I WILL DRAIN EVERY DROP OF YOUR ESSENCE!", yell = true },
}

monster.loot = {}

-- Fate Demon base +30%, energy/earth/mana theme, remixed visuals
monster.attacks = {
	{ name = "melee",  interval = 2000, chance = 100, minDamage = -3900, maxDamage = -24717 },
	{ name = "combat", interval = 1000, chance = 35, type = COMBAT_ENERGYDAMAGE, minDamage = -9880,  maxDamage = -12870, radius = 7, effect = CONST_ME_ENERGYAREA, target = false },
	{ name = "combat", interval = 1000, chance = 50, type = COMBAT_EARTHDAMAGE,  minDamage = -10920, maxDamage = -15340, radius = 7, effect = CONST_ME_POISONAREA, target = false },
	-- Mana drain UNCHANGED
	{ name = "combat", interval = 2000, chance = 35, type = COMBAT_MANADRAIN,    minDamage = -25500, maxDamage = -48000, range = 3, effect = CONST_ME_MAGIC_BLUE, target = false },
	{ name = "combat", interval = 3000, chance = 35, type = COMBAT_FIREDAMAGE,   minDamage = -6760,  maxDamage = -18980, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_EXPLOSIONAREA, target = true },
}

monster.defenses = {
	defense = 65,
	armor = 55,
	{ name = "combat", interval = 2000, chance = 35, type = COMBAT_HEALING, minDamage = 3000, maxDamage = 8000, effect = CONST_ME_MAGIC_BLUE, target = false },
	{ name = "speed",  interval = 4000, chance = 80, speedChange = 440, effect = CONST_ME_MAGIC_RED, target = false, duration = 6000 },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 60 },
	{ type = COMBAT_ENERGYDAMAGE,   percent = 40 },
	{ type = COMBAT_EARTHDAMAGE,    percent = 20 },
	{ type = COMBAT_FIREDAMAGE,     percent = 30 },
	{ type = COMBAT_LIFEDRAIN,      percent = 0 },
	{ type = COMBAT_MANADRAIN,      percent = 0 },
	{ type = COMBAT_DROWNDAMAGE,    percent = 0 },
	{ type = COMBAT_ICEDAMAGE,      percent = -30 },
	{ type = COMBAT_HOLYDAMAGE,     percent = 40 },
	{ type = COMBAT_DEATHDAMAGE,    percent = 50 },
}

monster.immunities = {
	{ type = "paralyze",  condition = true },
	{ type = "outfit",    condition = true },
	{ type = "invisible", condition = true },
	{ type = "bleed",     condition = false },
}

mType:register(monster)
