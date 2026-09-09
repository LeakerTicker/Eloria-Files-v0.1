local mType = Game.createMonsterType("Drume")
local monster = {}

monster.description = "Drume"
monster.experience = 125000
monster.outfit = {
	lookType = 1317,
	lookHead = 38,
	lookBody = 76,
	lookLegs = 57,
	lookFeet = 114,
	lookAddons = 2,
	lookMount = 0,
}

monster.bosstiary = {
	bossRaceId = 1957,
	bossRace = RARITY_ARCHFOE,
}

monster.health = 100000
monster.maxHealth = 100000
monster.race = "blood"
monster.corpse = 33973
monster.speed = 130
monster.manaCost = 0

monster.faction = FACTION_LIONUSURPERS
monster.enemyFactions = { FACTION_LION, FACTION_PLAYER }


monster.changeTarget = {
	interval = 4000,
	chance = 25,
}

monster.strategiesTarget = {
	nearest = 50,
	health = 20,
	damage = 20,
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
	staticAttackChance = 70,
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
	{ text = "I've studied the Cobras - I wield the secrets of the snake!", yell = false },
	{ text = "I am a true knight of the lion, you will never defeat the true order!", yell = false },
	{ text = "The Falcons will come to my aid in need!", yell = false },
}

monster.loot = {
	{ name = "platinum coin", chance = 100000, maxCount = 5 },
	{ name = "yellow gem", chance = 35843, maxCount = 2 },
	{ id = 3039, chance = 35542, maxCount = 2 }, -- red gem
	{ name = "blue gem", chance = 21687, maxCount = 2 },
	{ name = "green gem", chance = 17470, maxCount = 2 },
	{ id = 281, chance = 15060 }, -- giant shimmering pearl (green)
	{ name = "gold ingot", chance = 13253 },
	{ name = "terra rod", chance = 11145 },
	{ name = "crystal coin", chance = 10241 },
	{ name = "terra legs", chance = 8735 },
	{ name = "terra mantle", chance = 7831 },
	{ name = "raw watermelon tourmaline", chance = 7229 },
	{ name = "wand of voodoo", chance = 6024 },
	{ name = "violet gem", chance = 5723 },
	{ name = "terra hood", chance = 4819 },
	{ name = "terra amulet", chance = 4518 },
	{ name = "giant sapphire", chance = 4217 },
	{ name = "greater sage gem", chance = 500 },
	{ name = "greater spiritualist gem", chance = 500 },
	{ name = "greater mystic gem", chance = 500 },
	{ name = "greater marksman gem", chance = 500 },
	{ name = "greater guardian gem", chance = 500 },
	{ name = "giant ruby", chance = 3012 },
	{ name = "underworld rod", chance = 2410 },
	{ name = "lion spangenhelm", chance = 1300 },
	{ name = "lion plate", chance = 1200 },
	{ name = "lion shield", chance = 1350 },
	{ name = "lion longsword", chance = 1360 },
	{ name = "lion hammer", chance = 1370 },
	{ name = "lion axe", chance = 1380 },
	{ name = "lion longbow", chance = 1690 },
	{ name = "lion claws", chance = 2400 },
	{ name = "lion spellbook", chance = 2000 },
	{ name = "lion wand", chance = 1410 },
	{ name = "lion amulet", chance = 3000 },
	{ name = "lion rod", chance = 1420 },
	{ name = "gold token", chance = 7080 },
    { name = "silver token", chance = 7140 },
    { id = 49921, chance = 10000 },  -- Boss Token
	{ id = 43946, chance = 30000 },  -- Abridged Promotion Scroll
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1100, effect = CONST_ME_DRAWBLOOD },
	{ name = "combat", interval = 2700, chance = 25, type = COMBAT_HOLYDAMAGE, minDamage = -850, maxDamage = -1150, length = 8, spread = 0, effect = CONST_ME_HOLYAREA, target = false },
	{ name = "combat", interval = 3100, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -800, maxDamage = -1200, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = false },
	{ name = "combat", interval = 3300, chance = 22, type = COMBAT_DEATHDAMAGE, minDamage = -800, maxDamage = -1000, radius = 3, effect = CONST_ME_MORTAREA, target = false },
	{ name = "combat", interval = 3700, chance = 24, type = COMBAT_ICEDAMAGE, minDamage = -700, maxDamage = -900, length = 4, spread = 0, effect = CONST_ME_ICEATTACK, target = false },
	{ name = "singlecloudchain", interval = 2100, chance = 34, minDamage = -600, maxDamage = -1100, range = 4, effect = CONST_ME_ENERGYHIT, target = true },
}

monster.defenses = {
	defense = 60,
	armor = 82,
	--	mitigation = ???,
	{ name = "combat", interval = 4000, chance = 40, type = COMBAT_HEALING, minDamage = 300, maxDamage = 800, effect = CONST_ME_MAGIC_BLUE, target = false },
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
