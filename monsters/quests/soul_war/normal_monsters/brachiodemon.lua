local mType = Game.createMonsterType("Brachiodemon")
local monster = {}

monster.description = "a brachiodemon"
monster.experience = 15770
monster.outfit = {
	lookType = 1299,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 1930
monster.Bestiary = {
	class = "Demon",
	race = BESTY_RACE_DEMON,
	toKill = 5000,
	FirstUnlock = 200,
	SecondUnlock = 2000,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Claustrophobic Inferno.",
}



monster.health = 25000
monster.maxHealth = 25000
monster.race = "blood"
monster.corpse = 33817
monster.speed = 220
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
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
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
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
	{ text = "Feel the heat!", yell = false },
	{ text = "Hand over your life.", yell = false },
	{ text = "I can give you a hand... or two.", yell = false },
}

monster.loot = {
	{ name = "crystal coin", chance = 100990 },
	{ id = 33937, chance = 8710 }, -- head brachiodemon
	{ name = "epee", chance = 6290 },
	{ name = "crystal mace", chance = 3690 },
	{ name = "noble axe", chance = 3600 },
	{ name = "spellbook of mind control", chance = 1180 },
	{ name = "skull staff", chance = 2930 },
	{ id = 23531, chance = 1930 }, -- ring of green plasma
	{ id = 61728, chance = 2470 }, -- ring of orange plasma
	{ id = 61726, chance = 2470 }, -- collar of orange plasma
    { id = 20139, chance = 100, minCount = 1, maxCount = 1 }, -- Bounty task item
	{ name = "royal helmet", chance = 1500 },
	{ name = "jade hammer", chance = 1000 },
	{ name = "metal bat", chance = 1760 },
	{ name = "diabolic skull", chance = 1590 },
	{ name = "fire axe", chance = 990 },
	{ name = "crystalline sword", chance = 1420 },
	{ name = "butcher's axe", chance = 1420 },
	{ name = "mastermind shield", chance = 820 },
	{ name = "assassin dagger", chance = 1340 },
	{ name = "alloy legs", chance = 1670 },
		{ id = 34109, chance = 18 }, -- bag you desire


}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -420 },
	{ name = "combat", interval = 2000, chance = 24, type = COMBAT_FIREDAMAGE, minDamage = -420, maxDamage = -700, radius = 4, effect = CONST_ME_EXPLOSIONAREA, target = false },
	{ name = "combat", interval = 2000, chance = 22, type = COMBAT_DEATHDAMAGE, minDamage = -350, maxDamage = -504, radius = 4, effect = CONST_ME_EXPLOSIONHIT, target = false },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -385, maxDamage = -644, range = 7, effect = CONST_ANI_SUDDENDEATH, target = true },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -385, maxDamage = -630, range = 7, radius = 4, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true },
	{ name = "destroy magic walls", interval = 1000, chance = 30 },
}

monster.defenses = {
	defense = 100,
	armor = 100,
	mitigation = 2.75,
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

mType.onThink = function(monster, interval)
end

mType:register(monster)
