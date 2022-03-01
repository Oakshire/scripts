--[[
	Script Name	: SpawnScripts/Generic/GenericAlchemistVoiceOvers.lua
	Script Purpose	: Handles the generic hails for alchemists.
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

function GenericAlchemistHail(NPC, Spawn, Faction)
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
					local choice = math.random(1, 3)
					if choice == 1 then
						PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/service/alchemist/halfelf_alchemist_service_good_1_hail_gf_59de96bd.mp3", "What happened to the highly explosive bottle that was on my desk?  Have you seen it?", "ponder", 4015034016, 224119583, Spawn)
					elseif choice == 2 then
						PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/service/alchemist/halfelf_alchemist_service_good_1_hail_gf_a8ed74c7.mp3", "There are no refunds for caster error at this shop! Oh ... hello you're not here about a refund.", "no", 71962485, 2424906469, Spawn)
					elseif choice == 3 then
						PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/service/alchemist/halfelf_alchemist_service_good_1_hail_gf_efd903ba.mp3", "Hello, adventurer! Are you looking for a specific potion or ingredient?", "agree", 2677405750, 4053615600, Spawn)
					end
				end
			elseif race == HALFLING then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == HIGH_ELF then
				if gender == MALE then
				elseif gender == FEMALE then
					local choice = math.random(1, 3)
					if choice == 1 then
						PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/service/alchemist/highelf_alchemist_service_good_1_hail_gf_59de96bd.mp3", "What happened to the highly explosive bottle that was on my desk? Have you seen it?", "ponder", 276977866, 1430125901, Spawn)
					elseif choice == 2 then
						PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/service/alchemist/highelf_alchemist_service_good_1_hail_gf_ec533e4c.mp3", "Are you wounded? I just made up a fresh batch of healing potions an hour ago.", "happy", 1236281408, 177476380, Spawn)
					elseif choice == 3 then
						PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/service/alchemist/highelf_alchemist_service_good_1_hail_gf_efd903ba.mp3", "Hello, adventurer! Are you looking for a specific potion or ingredient?", "agree", 150025546, 682148839, Spawn)
					end
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
