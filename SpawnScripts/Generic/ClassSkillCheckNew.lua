--[[
    Script Name    : SpawnScripts/Generic/ClassSkillCheck.lua
    Script Author  : Dorbin & Neveruary
    Script Date    : 2023.05.23 12:05:54
    Script Purpose : Check & re-check skills for classic choices below level 10.
    Script Notes   : Re-wrote function to use table loops instead of multiple if statements.
--]]

fighterSkills = {
Martial = 1408356869,
Crushing = 3421494576,
Slashing = 418532101,
["Dual Wield"] = 1852383242,
Focus = 2638198038
}
priestSkills = {
Inspirations = 2463145248,
Crushing = 3421494576,
Disruption = 613995491,
Ministration = 366253016,
Ordination = 3587918036,
Subjugation = 882983852,
Focus = 2638198038
}
mageSkills = {
Evocations = 3820670534,
Piercing = 3048574950,
Crushing = 3421494576,
Disruption = 613995491,
Ministration = 366253016,
Ordination = 3587918036,
Subjugation = 882983852,
Focus = 2638198038
}
scoutSkills = {
Reconnaissance = 1921433074,
Tracking = 1468243427,
["Disarm Trap"] = 2200201799,
Ranged = 1756482397,
Piercing = 3048574950,
Slashing = 418532101,
["Dual Wield"] = 1852383242,
["Thrown Weapon"] = 2650425026,
Focus = 2638198038
}
fighterWeapons = {
["Light Armor"] = 2897193374,
Buckler = 4037812502,
Roundshield = 3173504370,
Axe = 2476073427,
["Great Axe"] = 2954459351,
Sword = 1696217328,
["Great Sword"] = 2292577688,
Mace = 770311065,
Hammer = 554333641,
["Great Hammer"] = 1653482350,
Staff = 3180399725
}
priestWeapons = {
Buckler = 4037812502,
Symbol = 545043066,
Mace = 770311065,
Hammer = 554333641,
["Great Hammer"] = 1653482350,
Staff = 3180399725
}
mageWeapons = {
Buckler = 4037812502,
Symbol = 545043066,
Dagger = 887279616,
Staff = 3180399725
}
scoutWeapons = {
["Light Armor"] = 2897193374,
Buckler = 4037812502,
Roundshield = 3173504370,
Spear = 1616998748,
Dagger = 887279616,
Bow = 1743366740,
Axe = 2476073427,
Mace = 770311065,
Rapier = 641561514,
Sword = 1696217328
}
fighterRemovedWeapons = {
887279616, --Dagger
570458645, --Tower Shield
3048574950, --Piercing
1756482397, --Ranged
540022425, --Parry
1743366740, --Bow
2650425026, --Thrown Weapon
366253016, --Ministration
613995491, --Disruption
882983852, --Subjigation
3587918036 --Ordination
}
priestRemovedWeapons = {
2897193374, --Light Armor
887279616, --Dagger
1696217328, --Sword
2292577688, --Great Sword
2476073427, --Axe
2954459351, --Great Axe
1616998748, --Spear
1653482350, --Great Spear
3173504370, --Roundshield
570458645, --Tower Shield
3048574950, --Piercing
1756482397, --Ranged
1743366740, --Bow
2650425026 --Thrown Weapon
}
mageRemovedWeapons = {
2897193374, --Light Armor
554333641, --Hammer
1653482350, --Great Hammer
1696217328, --Sword
2292577688, --Great Sword
2476073427, --Axe
2954459351, --Great Axe
1616998748, --Spear
1653482350, --Great Spear
3173504370, --Roundshield
570458645, --Tower Shield
3048574950, --Piercing
1756482397, --Ranged
1743366740, --Bow
2650425026 --Thrown Weapon
}
scoutRemovedWeapons = {
2292577688, --Great Sword
2954459351, --Great Axe
1616998748, --Spear
1653482350, --Great Spear
570458645, --Tower Shield
366253016, --Ministration
613995491, --Disruption
882983852, --Subjigation
3587918036 --Ordination
}
removedSkills = {
1124719197, --Tactics/Warrior
433335062, --Berserk/Berserker
1209716810, --Protection/Guardian
3856706740, --Brawl/Brawling
2011726342, --Tranquility/Monk
3067436248, --Physicality/Bruiser
3809066846, --Faith/Crusader
90523872, --Determined Faith/Paladin
2741805322, --Determined Zeal/Shadowknight
1311635100, --Melodies/Bard
296246391, --Ballads/Troubador
340921594, --Dirges/Dirge
1514256692, --Skulldugery/Rogue
2663054519, --Swashbuckling/Swashbuckler
1519965519, --Banditry/Brigand
3167106577, --Stalking/Predator
1400160844, --Archery/Ranger
2711101135, --Assassination/Assassin
3341842907, --Theurgy/Cleric
2581053277, --Regimens/Templar
1829443087, --Inquisitions/Inquisitor
3282420779, --Archegenesis/Druid
1624274802, --Nature's Reckoning/Fury
1040683335, --Nature's Refuge/Warden
3343700951, --Talismans/Shaman
3467160477, --Fetichisms/Mystic
3191839982, --Vehemence/Defiler
287643040, --Enchantments/Enchanter
2898101972, --Hallucinations/Illusionist
2950599749, --Protean/Coecerer
2533124061, --Sorcery/Sorcerer
2662430630, --Elemental Mastery/Wizard
193411854, --Noctivagance/Warlock
2120065377, --Legerdemain/Summoner
2042842194, --Conjurations/Conjurer
289471519, --Sepulchers/Necromancer
1553857724, --Investigation
3429135390, --Mystical Destruction
2246237129, --Medium Armor
241174330, --Heavy Armor
3177806075, --Fists
2608320658, --Kite Shield
570458645, --Tower Shield
540022425 --Parry
}
harvestingSkills = {
1970131346, --Transmuting
3659699625, --Mining
688591146, --Foresting
1048513601, --Gathering
4158365743, --Trapping
2319450178 --Fishing
}

function hailed(NPC, Spawn)
    changeSkills(NPC, Spawn)
end

function changeSkills(NPC, Spawn)
	local level = GetLevel(Spawn)*5
	local class = GetClass(Spawn)
	--FIGHTER
	if class == 1 then -- fighter value
        Say(NPC,"Starting Skill Check for Fighter")
		RemoveSkill(Spawn, 2463145248) -- Inspirations/Priest
		RemoveSkill(Spawn, 3820670534) -- Evocations/Mage
		RemoveSkill(Spawn, 1921433074) -- Reconnaissance/Scout
		RemoveSkill(Spawn, 2200201799) -- Disarm Trap

		for k,v in ipairs(fighterSkills) do
            SendMessage(Spawn, "Skill ID: " .. v .. ", Level: " .. level, "yellow")
			if not HasSkill(Spawn, v) then
				AddSkill(Spawn, v, 1, level)
				DisplayText(Spawn, 34, "You have learned the " .. k .. " skill")
				SendMessage(Spawn,"You have learned the " .. k .. " skill")
			end
		end
		for k,v in ipairs(fighterWeapons) do
			if not HasSkill(Spawn, v) then
				AddSkill(Spawn, v,1, level)
				DisplayText(Spawn, 34, "You are now more proficient with a " .. k)
				SendMessage(Spawn,"You are now more proficient with a " .. k)
			end
		end
		for k,v in ipairs(fighterRemovedWeapons) do
			RemoveSkill(Spawn, v)
		end
	--PRIEST
	elseif class == 11 then -- priest value
        Say(NPC,"Starting Skill Check for Priest")
		RemoveSkill(Spawn, 1408356869) -- Martial/Fighter
		RemoveSkill(Spawn, 3820670534) -- Evocations/Mage
		RemoveSkill(Spawn, 1921433074) -- Reconnaissance/Scout
		RemoveSkill(Spawn, 2200201799) -- Disarm Trap
		for k,v in ipairs(priestSkills) do
            SendMessage(Spawn, "Skill ID: " .. v .. ", Level: " .. level, "yellow")
			if not HasSkill(Spawn, v) then
				AddSkill(Spawn, v, 1, level)
				DisplayText(Spawn, 34, "You have learned the " .. k .. " skill")
				SendMessage(Spawn,"You have learned the " .. k .. " skill")
				end
		end
		for k,v in ipairs(priestWeapons) do
			if not HasSkill(Spawn, v) then
				AddSkill(Spawn, v, 1, level)
				DisplayText(Spawn, 34, "You are now more proficient with a " .. k)
				SendMessage(Spawn,"You are now more proficient with a " .. k)
			end
		end
		for k,v in ipairs(priestRemovedWeapons) do
			RemoveSkill(Spawn, v)
		end

	--MAGE
	elseif class == 21 then -- mage value
        Say(NPC,"Starting Skill Check for Mage")
		RemoveSkill(Spawn, 1921433074) -- Reconnaissance/Scout
		RemoveSkill(Spawn, 1408356869) -- Martial/Fighter
		RemoveSkill(Spawn, 2463145248) -- Inspirations/Priest
		RemoveSkill(Spawn, 2200201799) -- Disarm Trap
		for k,v in ipairs(mageSkills) do
			if not HasSkill(Spawn, v) then
				AddSkill(Spawn, v, 1, level)
				DisplayText(Spawn, 34, "You have learned the " .. k .. " skill")
				SendMessage(Spawn,"You have learned the " .. k .. " skill")
			end
		end
		for k,v in ipairs(mageWeapons) do
			if not HasSkill(Spawn, v) then
				AddSkill(Spawn, v, 1, level)
				DisplayText(Spawn, 34, "You are now more proficient with a " .. k)
				SendMessage(Spawn,"You are now more proficient with a " .. k)
			end
		end
		for k,v in ipairs(mageRemovedWeapons) do
			RemoveSkill(Spawn, v)
		end

	--SCOUT
	elseif class == 31 then -- scout value
    Say(NPC,"Starting Skill Check for Scout")
	RemoveSkill(Spawn, 1408356869) -- Martial/Fighter
	RemoveSkill(Spawn, 2463145248) -- Inspirations/Priest
	RemoveSkill(Spawn, 3820670534) -- Evocations/Mage
		for k,v in ipairs(scoutSkills) do
			if not HasSkill(Spawn, v) then
				AddSkill(Spawn, v, 1, level)
				DisplayText(Spawn, 34, "You have learned the " .. k .. " skill")
				SendMessage(Spawn,"You have learned the " .. k .. " skill")
			end
		end
		for k,v in ipairs(scoutWeapons) do
			if not HasSkill(Spawn, v) then
				AddSkill(Spawn, v, 1, level)
				DisplayText(Spawn, 34, "You are now more proficient with a " .. k)
				SendMessage(Spawn,"You are now more proficient with a " .. k)
			end
		end
		for k,v in ipairs(scoutRemovedWeapons) do
			RemoveSkill(Spawn, v)
		end
	else
        Say(NPC, "Classic class not detected. Stopping.")
    end

	--ADD HARVESTING & REMOVE SUBCLASSES
	for k,v in ipairs(harvestingSkills) do
		if not HasSkill(Spawn, v) then
			AddSkill(Spawn, v,1,level)
		end
	end
	for k,v in ipairs(removedSkills) do
		RemoveSkill(Spawn, v)
	end
end