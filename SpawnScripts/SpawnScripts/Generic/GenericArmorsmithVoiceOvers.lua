--[[
	Script Name	: SpawnScripts/Generic/GenericArmorsmithVoiceOvers.lua
	Script Purpose	: Handles the generic hails for armorsmiths and tailors.
	Script Author	: Scatman
	Script Date	: 2009.09.15
	Script Notes	: 
--]]

local BARBARIAN = 0
local DARK_ELF = 1
local DWARF = 2
local ERUDITE = 3
local FROGLOK = 4
local GNOME = 5
local HALF_ELF = 6
local HALFLING = 7
local HIGH_ELF = 8
local HUMAN = 9
local IKSAR = 10
local KERRA = 11
local OGRE = 12
local RATONGA = 13
local TROLL = 14
local WOOD_ELF = 15
local FAE = 16
local ARASAI = 17
local SARNAK = 18

local MALE = 1
local FEMALE = 2

function GenericArmorsmithHail(NPC, Spawn, Faction)
	if NPC ~= nil then
		local race = GetRace(NPC)
		local gender = GetGender(NPC)
		
		if race >= 0 and race <= 18 and gender >= 1 and gender <= 2 then
			local file_option = math.random(1, 3)
			local file_race_gender = 0
			if race == BARBARIAN then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == DARK_ELF then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == DWARF then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == ERUDITE then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == FROGLOK then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == GNOME then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == HALF_ELF then
				if gender == MALE then
					PlayFlavor(NPC, "", "You can never be too careful when it comes to protection.  Here, try on one of these.", "agree", 0, 0, Spawn)
				elseif gender == FEMALE then
				end
			elseif race == HALFLING then
				if gender == MALE then
				elseif gender == FEMALE then
					local choice = math.random(1, 3)
					if choice == 1 then
						Say(NPC, "You can never be too careful when it comes to protecting yourself. Why not try something new?", Spawn)
					elseif choice == 2 then
						PlayFlavor(NPC, "", "Your garb looks a mite worn. Can I interest you in a fine new set of armor?", "", 1689589577, 4560189, Spawn)
					else
						PlayFlavor(NPC, "", "Hello there! Can I interest you in some of the finest merchandise this side of Norrath?", "wave", 1689589577, 4560189, Spawn)
					end
				end
			elseif race == HIGH_ELF then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == HUMAN then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == IKSAR then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == KERRA then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == OGRE then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == RATONGA then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == TROLL then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == WOOD_ELF then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == FAE then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == ARASAI then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == SARNAK then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			end
		end
	end
end
