local mType = Game.createMonsterType("Despor")
local monster = {}

monster.description = "despor"
monster.experience = 147810
monster.outfit = {
	lookType = 1712,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}


monster.bosstiary = {
	bossRaceId = 2466,
	bossRace = RARITY_ARCHFOE,
}


monster.health = 150000
monster.maxHealth = 150000
monster.race = "blood"
monster.corpse = 44663
monster.speed = 170
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10,
}

monster.strategiesTarget = {
	nearest = 100,
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
	{ text = "MAGIC IS AN ILLUSION!", yell = false },
	{ text = "STICKS DON'T HURT!!!", yell = false },
	{ text = "THE AGE OF DRAGONS WILL RETURN!", yell = false },
	{ text = "CAN'T HIT ME!!!", yell = false },
	{ text = "THE DRAGON WARS ARE JUST THE BEGINNING!", yell = false },
}

monster.loot = {
	{ name = "Platinum Coin", chance = 50780, minCount = 1, maxCount = 48 },
	{ name = "Nimmersatt's Seal", chance = 8670 },
	{ id = 3039, chance = 10090 },
	{ name = "Molten Dragon Essence", chance = 47270 },
	{ name = "Prismatic Quartz", chance = 44760 },
	{ name = "Rainbow Quartz", chance = 44370, minCount = 1, maxCount = 7 },
	{ name = "Mega Dragon Heart", chance = 98250 },
	{ name = "dauntless dragon scale armor", chance = 3760 },
	{ name = "unerring dragon scale armor", chance = 3850 },
	{ name = "arcane dragon robe", chance = 3740 },
	{ name = "mystical dragon robe", chance = 3730 },
	{ name = "gold-scaled sentinel", chance = 18300 },
	{ name = "exalted seal", chance = 27330 },
	{ id = 46384, chance = 1500}, -- Lava Backpack
	{ name = "spellweaver's robe", chance = 5730 },
	{ name = "greater sage gem", chance = 500 },
	{ name = "greater spiritualist gem", chance = 500 },
	{ name = "greater mystic gem", chance = 500 },
	{ name = "greater marksman gem", chance = 500 },
	{ name = "greater guardian gem", chance = 500 },
	{ name = "gold token", chance = 8080 },
    { name = "silver token", chance = 8040 },
    { id = 43946, chance = 35000 },  -- Abridged Promotion Scroll
    { id = 49921, chance = 10000 },  -- Boss Token
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -650 },
	{ name = "combat", interval = 2500, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -250, maxDamage = -1200, range = 2, effect = CONST_ME_BIG_SCRATCH, target = true },
	{ name = "combat", interval = 2500, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -250, maxDamage = -1200, length = 8, spread = 4, effect = CONST_ME_EXPLOSIONHIT, target = false },
	{ name = "combat", interval = 2500, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -200, maxDamage = -1300, range = 7, radius = 4, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true },
	{ name = "combat", interval = 3000, chance = 5, type = COMBAT_PHYSICALDAMAGE, minDamage = -200, maxDamage = -1200, radius = 4, effect = CONST_ME_POFF, target = true },
	{ name = "death chain", interval = 2500, chance = 15, minDamage = -200, maxDamage = -950, range = 7 },
}

monster.defenses = {
	defense = 76,
	armor = 76,
	mitigation = 1.96,
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

mType.onAppear = function(monster, creature)
	if monster:getType():isRewardBoss() then
		monster:setReward(true)
	end
end

mType:register(monster)
