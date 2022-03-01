--[[
	cript Name	: SpawnScripts/Generic/GenericBartenderVoiceOvers.lua
	Script Purpose	: Handles the generic hails for bartenders.
	Script Author	: Scatman
	Script Date	: 2009.10.03
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

function GenericBartenderHail(NPC, Spawn, faction)
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
					local choice = math.random(1, 3)
					if choice == 1 then
						PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/service/bartender/froglok_bartender_service_good_1_hail_gf_41d55b0d.mp3", "The best part about this job is all the extra coin I get.", "", 2888286231, 967545209, Spawn)
					elseif choice == 2 then
						PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/service/bartender/froglok_bartender_service_good_1_hail_gf_ce1f039f.mp3", "Might I interest you in some meat and cheese to go with that tall glass of ale?", "", 2337190060, 175840912, Spawn)
					elseif choice == 3 then
						PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/service/bartender/froglok_bartender_service_good_1_hail_gf_ce733912.mp3", "I bet you have some stories, eh? Adventuring must be an exciting life!", "", 1840731743, 2065794369, Spawn)
					end
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
