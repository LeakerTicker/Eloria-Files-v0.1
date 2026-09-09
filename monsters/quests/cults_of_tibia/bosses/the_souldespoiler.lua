local mType = Game.createMonsterType("The Souldespoiler")
local monster = {}

monster.description = "The Souldespoiler"
monster.experience = 145000
monster.outfit = {
	lookType = 875,
	lookHead = 0,
	lookBody = 3,
	lookLegs = 77,
	lookFeet = 81,
	lookAddons = 0,
	lookMount = 0,
}



monster.bosstiary = {
	bossRaceId = 1422,
	bossRace = RARITY_ARCHFOE,
}

monster.health = 145000
monster.maxHealth = 145000
monster.race = "blood"
monster.corpse = 23564
monster.speed = 125
monster.manaCost = 0

monster.changeTarget = {
	interval = 6000,
	chance = 30,
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
	staticAttackChance = 95,
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

monster.summon = {
	maxSummons = 5,
	summons = {
		{ name = "Freed Soul", chance = 55, interval = 5000, count = 2 },
	},
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "Stop freeing the souls! They are mine alone!", yell = false },
	{ text = "The souls shall not escape me! ", yell = false },
	{ text = " You will be mine!", yell = false },
}

monster.loot = {
	{ name = "curious matter", chance = 8920, maxCount = 10 },
	{ id = 23516, chance = 20000 }, -- instable proto matter
	{ id = 282, chance = 26900 }, -- giant shimmering pearl (brown)
	{ name = "wand of defiance", chance = 8920 },
	{ name = "rift lance", chance = 13200 },
	{ name = "rift crossbow", chance = 7620 },
	{ name = "haunted blade", chance = 97000 },
	{ name = "sapphire hammer", chance = 14000 },
	{ name = "platinum coin", chance = 298040, maxCount = 350 },
	{ name = "wand of defiance", chance = 8723 },
	{ name = "yellow gem", chance = 294060 },
	{ name = "blue gem", chance = 210892 },
	{ name = "medusa shield", chance = 7270 },
	{ id = 46218, chance = 1500}, -- Suncrest Backpack
	{ name = "underworld rod", chance = 95100 },
	{ name = "mysterious remains", chance = 100000 },
	{ name = "prismatic quartz", chance = 130390, maxCount = 10 },
	{ name = "small diamond", chance = 120760, maxCount = 10 },
	{ name = "small amethyst", chance = 147000, maxCount = 10 },
	{ name = "small topaz", chance = 115020, maxCount = 10 },
	{ name = "greater sage gem", chance = 500 },
	{ name = "greater spiritualist gem", chance = 500 },
	{ name = "greater mystic gem", chance = 500 },
	{ name = "greater marksman gem", chance = 500 },
	{ name = "greater guardian gem", chance = 500 },
	{ name = "small sapphire", chance = 130790, maxCount = 10 },
	{ name = "small emerald", chance = 147000, maxCount = 10 },
	{ name = "small amethyst", chance = 122059, maxCount = 10 },
	{ name = "blade of corruption", chance = 37705 },
	{ name = "magma boots", chance = 15890 },
	{ name = "spark sphere", chance = 80000 },
	{ name = "spellbook of lost souls", chance = 78900 },
	{ name = "shield of corruption", chance = 1500 },
	{ name = "plasma pearls", chance = 100000 },
	{ name = "spiked squelcher", chance = 16892, maxCount = 2 },
	{ name = "gold token", chance = 8080 },
    { name = "silver token", chance = 8040 },
    { id = 43946, chance = 35000 },  -- Abridged Promotion Scroll
	{ id = 61728, chance = 2470 }, -- ring of orange plasma
	{ id = 61726, chance = 2470 }, -- collar of orange plasma
    { id = 49921, chance = 10000 },  -- Boss Token
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -783 },
	{ name = "combat", interval = 2000, chance = 60, type = COMBAT_DEATHDAMAGE, minDamage = -30, maxDamage = -181, range = 7, radius = 3, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_SMALLCLOUDS, target = true },
	{ name = "combat", interval = 2000, chance = 50, type = COMBAT_ENERGYDAMAGE, minDamage = -210, maxDamage = -538, length = 7, spread = 2, effect = CONST_ME_PURPLEENERGY, target = false },
	{ name = "combat", interval = 3000, chance = 30, type = COMBAT_DROWNDAMAGE, minDamage = -125, maxDamage = -640, length = 9, spread = 0, effect = CONST_ME_LOSEENERGY, target = false },
}

monster.defenses = {
	defense = 40,
	armor = 40,
	--	mitigation = ???,
	{ name = "combat", interval = 2000, chance = 100, type = COMBAT_HEALING, minDamage = 1000, maxDamage = 7000, effect = CONST_ME_MAGIC_BLUE, target = false },
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
