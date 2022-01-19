--[[
	Script Name	: SpawnScripts/Generic/GenericWeaponsmithVoiceOvers.lua
	Script Purpose	: Handles the generic hails for weaponsmiths.
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

function GenericWeaponsmithHail(NPC, Spawn, Faction)
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
					local choice = math.random(1, 2)
					if choice == 1 then
						PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/service/weaponsmith/gnome_weaponsmith_service_good_1_hail_gm_1248b278.mp3", "I just got a shipment in from the Far Sea's Trading Company.  I don't just show anybody this stuff so, shhhh!  ", "wink", 2730095756, 1896311415, Spawn)
				        --Part of Smithy Findlebop in Baubbleshire
				            -- elseif choice == 2 then
				        	-- PlayFlavor(NPC, "voiceover/english/smithy_findlebop/qey_village06/100_smithy_findlebop_multhail1_aa73007b.mp3", "Now, if I can only figure out how the sprocket will fit in this device, I'll be set! Why are you interrupting my work?  Can't you see I'm busy? Go away!", "", 3823811804, 70891212, Spawn)
					        -- elseif choice == 3 then
					        -- PlayFlavor(NPC, "voiceover/english/smithy_findlebop/qey_village06/100_smithy_findlebop_multhail2_5d0f29cb.mp3", "Now, if I can only figure out how the sprocket will fit in this device, I'll be set! Why are you interrupting my work?  Can't you see I'm busy?", "", 446470782, 3454872230, Spawn)
					elseif choice == 2 then
						PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/service/weaponsmith/gnome_weaponsmith_service_good_1_hail_gm_37dbcab8.mp3", "Welcome to my humble shop.  We have quite a selection of weapons to choose from.  See for yourself...", "salute", 1420367370, 281045768, Spawn)
					end
				elseif gender == FEMALE then
				end
			elseif race == HALF_ELF then
				if gender == MALE then
				elseif gender == FEMALE then
					local choice = math.random(1, 2)
					if choice == 1 then
						PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/service/weaponsmith/halfelf_weaponsmith_service_good_1_hail_gf_1248b278.mp3", "I just got a shipment in from the Far Sea's Trading Company. I don't just show anybody this stuff so, shhhh! ", "wink", 3358731085, 3359597024, Spawn)
					elseif choice == 2 then
						PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/service/weaponsmith/halfelf_weaponsmith_service_good_1_hail_gf_37dbcab8.mp3", "Welcome to my humble shop. We have quite a selection of weapons to choose from. See for yourself...", "salute", 1281347839, 1623005135, Spawn)
					end
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
