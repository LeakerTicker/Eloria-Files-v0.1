local mType = Game.createMonsterType("Bony Sea Devil")
local monster = {}

monster.description = "a bony sea devil"
monster.experience = 19470
monster.outfit = {
	lookType = 1294,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 1926
monster.Bestiary = {
	class = "Undead",
	race = BESTY_RACE_UNDEAD,
	toKill = 5000,
	FirstUnlock = 200,
	SecondUnlock = 2000,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Ebb and Flow.",
}



monster.health = 24000
monster.maxHealth = 24000
monster.race = "undead"
monster.corpse = 33797
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
	level = 4,
	color = 143,
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "Bling.", yell = false },
	{ text = "Clank.", yell = false },
}

monster.loot = {
	{ name = "crystal coin", chance = 100000 },
	{ name = "gold ingot", chance = 15040 },
	{ id = 282, chance = 9730 }, -- giant shimmering pearl
	{ name = "hailstorm rod", chance = 7960 },
	{ name = "onyx chip", chance = 6190 },
    { id = 20139, chance = 100, minCount = 1, maxCount = 1 }, -- Bounty task item
	{ name = "green crystal fragment", chance = 9310 },
	{ name = "wand of voodoo", chance = 9420 },
	{ name = "violet gem", chance = 10420 },
	{ name = "jaws", chance = 6540 },
	{ name = "rainbow quartz", chance = 7650, maxCount = 3 },
	{ name = "northwind rod", chance = 3770 },
	{ name = "underworld rod", chance = 3770 },
	{ name = "skullcracker armor", chance = 1770 },
	{ id = 33929, chance = 880 }, -- rod
	{ name = "goblet of gloom", chance = 1880 },
	{ name = "glacier kilt", chance = 2880 },
	{ name = "glacial rod", chance = 5210 },
	{ id = 34109, chance = 18 }, -- bag you desire


}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -490 },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -420, maxDamage = -595, length = 5, spread = 3, effect = CONST_ME_GROUNDSHAKER, target = false },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_ENERGYDAMAGE, minDamage = -210, maxDamage = -420, radius = 7, effect = CONST_ME_BIGCLOUDS, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_ICEDAMAGE, minDamage = -385, maxDamage = -532, range = 7, shootEffect = CONST_ANI_SNOWBALL, effect = CONST_ME_ICEATTACK, target = true },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_ICEDAMAGE, minDamage = -385, maxDamage = -539, range = 7, radius = 5, shootEffect = CONST_ANI_ICE, effect = CONST_ME_ICEAREA, target = true },
	{ name = "ice chain", interval = 2000, chance = 15, minDamage = -280, maxDamage = -560, range = 7 },
	{ name = "destroy magic walls", interval = 1000, chance = 30 },
}

monster.defenses = {
	defense = 100,
	armor = 100,
	mitigation = 3.34,
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
