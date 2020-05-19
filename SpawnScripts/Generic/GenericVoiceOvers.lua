--[[
	cript Name	: SpawnScripts/Generic/GenericVoiceOvers.lua
	Script Purpose	: Handles the generic hails for spawns.
	Script Author	: Scatman
	Script Date	: 2009.10.05
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

function GenericHail(NPC, Spawn)
	if NPC ~= nil then
		local race = GetRace(NPC)
		local gender = GetGender(NPC)
		
		if race >= 0 and race <= 18 and gender >= 1 and gender <= 2 then
			local file_option = math.random(1, 3)
			local file_race_gender = 0
			if race == BARBARIAN then
				if gender == MALE then
					file_race_gender = 1002
				elseif gender == FEMALE then
					file_race_gender = 1001
				end
			elseif race == DARK_ELF then
				if gender == MALE then
					file_race_gender = 1008
				elseif gender == FEMALE then
					file_race_gender = 1007
				end
			elseif race == DWARF then
				if gender == MALE then
					file_race_gender = 1042
				elseif gender == FEMALE then
					file_race_gender = 1009
				end
			elseif race == ERUDITE then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == FROGLOK then
				if gender == MALE then
					file_race_gender = 1016
				elseif gender == FEMALE then
					file_race_gender = 1015
				end
			elseif race == GNOME then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == HALF_ELF then
				if gender == MALE then
					file_race_gender = 1022
				elseif gender == FEMALE then
				end
			elseif race == HALFLING then
				if gender == MALE then
					file_race_gender = 1006
				elseif gender == FEMALE then
					file_race_gender = 1005
				end
			elseif race == HIGH_ELF then
				if gender == MALE then
					file_race_gender = 1012
				elseif gender == FEMALE then
					file_race_gender = 1011
				end
			elseif race == HUMAN then
				if gender == MALE then
					file_race_gender = 1054
				elseif gender == FEMALE then
					file_race_gender = 1003
				end
			elseif race == IKSAR then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == KERRA then
				if gender == MALE then
				elseif gender == FEMALE then
					file_race_gender = 1035
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
					file_race_gender = 1004
				elseif gender == FEMALE then
					file_race_gender = 1003
				end
			end
			PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_" .. file_option .. "_" .. file_race_gender ..".mp3", "", "hello", 0, 0, Spawn)
		end
	end
end
