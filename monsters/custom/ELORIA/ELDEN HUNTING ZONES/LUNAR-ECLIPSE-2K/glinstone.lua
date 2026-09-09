local mType = Game.createMonsterType("Glinstone Warrior")
local monster = {}

monster.description = "an glinstone warrior"
monster.experience = 54000
monster.outfit = {
	lookType = 1627,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}



monster.health = 60000
monster.maxHealth = 60000
monster.race = "blood"
monster.corpse = 43583
monster.speed = 460
monster.manaCost = 0
monster.raceId = 2588
monster.Bestiary = {
	class = "Demon",
	race = BESTY_RACE_DEMON,
	toKill = 6000,
	FirstUnlock = 500,
	SecondUnlock = 3000,
	CharmsPoints = 100,
	Stars = 4,
	Occurrence = 0,
	Locations = "Elden Room Lunar",
}
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
	{ text = "The smell of fear follows you.", yell = false },
	{ text = "Your soul will burn.", yell = false },
}

monster.loot = {
	{ name = "green crystal coin", chance = 100000, minCount = 1, maxCount = 2 },
	{ id = 34103, chance = 1300, minCount = 1, maxCount = 2 }, -- Glinstone Eye
	{ name = "crystal coin", chance = 10000, minCount = 1, maxCount = 3 },
    { name = "platinum coin", chance = 100000, minCount = 1, maxCount = 150 },
	{ id = 24964, chance = 100, minCount = 1, maxCount = 1 }, -- Bounty task item
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, skill = 50, attack = 50 },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -462, maxDamage = -1085, range = 7, shootEffect = CONST_ANI_SPEAR, effect = CONST_ME_EXPLOSIONAREA, target = false },
	{ name = "condition", type = CONDITION_BLEEDING, interval = 2000, chance = 40, minDamage = -420, maxDamage = -980, range = 7, radius = 3, shootEffect = CONST_ANI_THROWINGKNIFE, effect = CONST_ME_HITAREA, target = true },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_FIREDAMAGE, minDamage = -532, maxDamage = -882, range = 7, radius = 2, shootEffect = CONST_ANI_BURSTARROW, effect = CONST_ME_EXPLOSIONHIT, target = true },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -445, maxDamage = -851, radius = 4, effect = CONST_ME_EXPLOSIONAREA, target = false },
}


monster.defenses = {
	defense = 120,
	armor = 120,
	mitigation = 3.33,
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
