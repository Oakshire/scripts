--[[
	Script Name	: SpawnScripts/Generic/GenericBakerVoiceOvers.lua
	Script Purpose	: Handles the generic hails for bakers.
	Script Author	: Scatman
	Script Date	: 2009.09.27
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

function GenericBakerHail(NPC, Spawn)
	if NPC ~= nil then
		local race = GetRace(NPC)
		local gender = GetGender(NPC)
		
		if race >= 0 and race <= 18 and gender >= 1 and gender <= 2 then
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
				elseif gender == FEMALE then
				end
			elseif race == HALFLING then
				if gender == MALE then
				elseif gender == FEMALE then
					local choice = math.random(1, 4)
					if choice == 1 then
						PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/service/baker/halfling_baker_service_good_1_hail_gf_1e9a743c.mp3", "Please mind the plates, they're very hot.", "scold", 1075794847, 2019936086, Spawn)
					elseif choice == 2 then
						PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/service/baker/halfling_baker_service_good_1_hail_gf_3d1ca473.mp3", "Tell me, do you prefer Halfling or Elven cuisine? I myself have a hard time deciding between the two.", "confused", 1646021457, 4149179615, Spawn)
					elseif choice == 3 then
						PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/service/baker/halfling_baker_service_good_1_hail_gf_9db280de.mp3", "I love the smell of fresh bread in the oven!", "sigh", 1048257184, 2248522628, Spawn)
					elseif choice == 4 then
						PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/service/baker/halfling_baker_service_good_1_hail_gf_cca9cdef.mp3", "Welcome friend, welcome. I hope you brought your appetite with you!", "wink", 22116398, 594684199, Spawn)
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
