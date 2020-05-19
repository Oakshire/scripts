--[[
	Script Name	: SpawnScripts/Generic/GenericScribeVoiceOvers.lua
	Script Purpose	: Handles the generic hails for scribes.
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

function GenericScribeHail(NPC, Spawn, Faction)
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
					local choice = math.random(1, 4)
					if choice == 1 then
						PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/service/scribe/gnome_scribe_service_good_1_hail_gf_efd8a52b.mp3", "Ah, a student of the arcane.  Is there something I can help you find?", "ponder", 241135821, 1371778900, Spawn)
					elseif choice == 2 then
						PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/service/scribe/gnome_scribe_service_good_1_hail_gf_58ed77b2.mp3", "All right where is my pen?  How am I supposed to scribe anything without my pen?", "tapfoot", 513035073, 2771699263, Spawn)
					elseif choice == 3 then
						PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/service/scribe/gnome_scribe_service_good_1_hail_gf_cbc94cb6.mp3", "Blast it! Who keeps taking all of the parchment?  ", "swear", 1429173278, 1014473963, Spawn)
					elseif choice == 4 then
						PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/service/scribe/gnome_scribe_service_good_1_hail_gf_392a4f4e.mp3", "Be careful, it's best not to read the scrolls. If you want to know what they are, just ask me.", "nod", 3255267278, 1071089122, Spawn)
					end
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
