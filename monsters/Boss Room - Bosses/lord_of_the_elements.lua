local mType = Game.createMonsterType("Lord of the Elements")
local monster = {}

monster.description = "Lord of the Elements"
monster.experience = 8000
monster.outfit = {
	lookType = 243,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}


monster.bosstiary = {
	bossRaceId = 454,
	bossRace = RARITY_ARCHFOE,
}

monster.health = 150000
monster.maxHealth = 150000
monster.race = "undead"
monster.corpse = 8181
monster.speed = 185
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 10,
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
	canWalkOnFire = false,
	canWalkOnPoison = true,
}

monster.light = {
	level = 5,
	color = 212,
}


monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "WHO DARES CALLING ME?", yell = true },
	{ text = "I'LL FREEZE YOU THEN I CRUSH YOU!", yell = true },
}

monster.loot = {

}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -690 },
}

monster.defenses = {
	defense = 30,
	armor = 30,
	--	mitigation = ???,
	{ name = "combat", interval = 1000, chance = 25, type = COMBAT_HEALING, minDamage = 100, maxDamage = 195, effect = CONST_ME_MAGIC_BLUE, target = false },
	{ name = "outfit", interval = 1500, chance = 40, effect = CONST_ME_MAGIC_BLUE, target = false, duration = 3000, outfitMonster = "Energy Overlord" },
	{ name = "outfit", interval = 1500, chance = 40, effect = CONST_ME_MAGIC_BLUE, target = false, duration = 3000, outfitMonster = "Fire Overlord" },
	{ name = "outfit", interval = 1500, chance = 40, effect = CONST_ME_MAGIC_BLUE, target = false, duration = 3000, outfitMonster = "Earth Overlord" },
	{ name = "outfit", interval = 1500, chance = 40, effect = CONST_ME_MAGIC_BLUE, target = false, duration = 3000, outfitMonster = "Ice Overlord" },
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
