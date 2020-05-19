--[[
	Script Name	: SpawnScripts/WillowWood/TrellyGreenfoot.lua
	Script Purpose	: Trelly Greenfoot 
	Script Author	: Scatman
	Script Date	: 2009.09.15
	Script Notes	: Updated by Jabantiz (4/22/2017)
--]]

local WOOD_ELF = 15
local DARK_ELF = 1
local WOOD_ELF_QUEST_4 = 216

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
	
	MovementLoopAddLocation(NPC, 809.94, -20.32, -622.21, 2)
	MovementLoopAddLocation(NPC, 825.57, -20.47, -622.01, 2, 15)
	MovementLoopAddLocation(NPC, 827.49, -20.27, -615.30, 2)
	MovementLoopAddLocation(NPC, 833.85, -21.46, -611.10, 2, 90)
	MovementLoopAddLocation(NPC, 835.92, -21.04, -606.67, 2)
	MovementLoopAddLocation(NPC, 838.36, -20.84, -604.75, 2)
	MovementLoopAddLocation(NPC, 844.63, -21.09, -605.69, 2)
	MovementLoopAddLocation(NPC, 851.91, -20.38, -609.75, 2)
	MovementLoopAddLocation(NPC, 860.75, -19.17, -609.59, 2)
	MovementLoopAddLocation(NPC, 870.01, -18.46, -603.19, 2, 60)
	MovementLoopAddLocation(NPC, 862.12, -18.97, -606.58, 2)
	MovementLoopAddLocation(NPC, 853.15, -20.23, -610.54, 2)
	MovementLoopAddLocation(NPC, 849.14, -21.05, -618.29, 2, 120)
	MovementLoopAddLocation(NPC, 844.49, -21.70, -625.31, 2)
	MovementLoopAddLocation(NPC, 841.65, -22.48, -633.37, 2)
	MovementLoopAddLocation(NPC, 844.45, -21.69, -645.01, 2, 60)
	MovementLoopAddLocation(NPC, 837.38, -21.06, -646.00, 2)
	MovementLoopAddLocation(NPC, 824.73, -20.57, -650.46, 2)
	MovementLoopAddLocation(NPC, 812.28, -21.11, -650.56, 2)
	MovementLoopAddLocation(NPC, 806.82, -21.08, -631.67, 2, 30)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Talk(NPC, Spawn)
end

function InRange(NPC, Spawn)
	if math.random(0, 25) <= 25 then
		Talk(NPC)
	end
end

function Talk(NPC, Spawn)
	if HasCompletedQuest(Spawn, WOOD_ELF_QUEST_4) then
		PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_status_gf_80ffe645.mp3", "You have proven yourself among all those who doubt the Feir'Dal's worth. Well done!", "", 670005551, 4229139858, Spawn)
	else
		voice_overs = {}
		voice_overs[1] = {}
		voice_overs[1].file = "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_hail_gf_3e59423a.mp3" 
		voice_overs[1].text = "The blessing of Tunare is the highest blessing of all."
		voice_overs[1].key1 = 853299003
		voice_overs[1].key2 = 3297095439
		voice_overs[2] = {}
		voice_overs[2].file = "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_hail_gf_50387146.mp3" 
		voice_overs[2].text = "To be among the highest leaves and branches of a tree is to feel free."
		voice_overs[2].key1 = 1191446540
		voice_overs[2].key2 = 711911709
		local size = 2
		
		if GetRace(Spawn) == DARK_ELF then
			size = size + 1
			voice_overs[size]= {}
			voice_overs[size].file = "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_darkelf_gf_894a567a.mp3" 
			voice_overs[size].text = "The Feir`Dal will not let this traitor of the elven race reside within these city walls. Expect no more than a short welcome here."
			voice_overs[size].key1 = 26640370
			voice_overs[size].key2 = 1478096414
		elseif GetRace(Spawn) == WOOLD_ELF then
			size = size + 1
			voice_overs[size] = {}
			voice_overs[size].file = "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_woodelf_gf_5621269a.mp3" 
			voice_overs[size].text = "I too long for my home in Faydark. Someday Tunare will answer us, I'm sure."
			voice_overs[size].key1 = 3953058409
			voice_overs[size].key2 = 3176959607
			size = size + 1
			voice_overs[size] = {}
			voice_overs[size].file = "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_woodelf_gf_601050b5.mp3" 
			voice_overs[size].text = "May Tunare's blessings be with you and yours."
			voice_overs[size].key1 = 3511142094
			voice_overs[size].key2 = 3935712685
		end
		
		local choice = math.random(1, size)
		if spawn == nil then
			PlayFlavor(NPC, voice_overs[choice].file, voice_overs[choice].text, "", voice_overs[choice].key1, voice_overs[choice].key2, Spawn)
		else
			PlayFlavor(NPC, voice_overs[choice].file, voice_overs[choice].text, "", voice_overs[choice].key1, voice_overs[choice].key2)
		end
	end
end
