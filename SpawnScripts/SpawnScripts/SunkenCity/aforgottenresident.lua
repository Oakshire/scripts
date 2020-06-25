--[[
	Script Name	: SpawnScripts/SunkenCity/aforgottenresident.lua
	Script Purpose	: a forgotten resident 
	Script Author	: Scatman
	Script Date	: 2009.08.01
	Script Notes	: 
--]]

local MALE = 1
local FEMALE = 2
local spoke = false

function spawn(NPC)
	spoke = false
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function aggro(NPC, Spawn)
	local chance = math.random(1, 100)
	if chance <= 25 then
		if GetGender(NPC) == MALE then
			PlayFlavor(NPC, "voiceover/english/ghost_human_base_1/ft/ghost/ghost_human_base_1_1_aggro_gm_119a2ca8.mp3", "No. I'm unrest and you will suffer.", "", 3626119416, 3545522817)
		elseif GetGender(NPC) == FEMALE then
			PlayFlavor(NPC, "voiceover/english/optional3/ghost_human_base_1/ft/ghost/ghost_human_base_1_1_aggro_gf_821554e3.mp3", "Must you aggravate me so!", "", 735262000, 1417243472)
		end
	end
end

function healthchanged(NPC, Spawn)
	local hp_percent = GetHP(NPC) / GetMaxHP(NPC)
	if hp_percent <= 0.50 and spoke == false then
		spoke = true
		if GetGender(NPC) == MALE then
			PlayFlavor(NPC, "voiceover/english/ghost_human_base_1/ft/ghost/ghost_human_base_1_1_halfhealth_gm_8bdfff2d.mp3", "I won't miss again!", "", 1970756563, 618808961)
		elseif GetGender(NPC) == FEMALE then
			local choice = math.random(1, 2)
			if choice == 1 then
				PlayFlavor(NPC, "voiceover/english/optional3/ghost_human_base_1/ft/ghost/ghost_human_base_1_1_halfhealth_gf_fa0af03c.mp3", "For Thule's sake!", "", 2960095639, 2634994717)
			elseif choice == 2 then
				PlayFlavor(NPC, "voiceover/english/optional3/ghost_human_base_2/ft/ghost/ghost_human_base_2_1_halfhealth_gf_4214f9be.mp3", "Well struck, but I withstood it!", "", 2750294931, 1365592478)
			end
		end
		AddTimer(NPC, 30000, "ResetSpoke")
	end
end

function ResetSpoke(NPC)
	spoke = false
end

function killed(NPC, Spawn)
	local chance = math.random(1, 100)
	if chance <= 25 then
		if GetGender(NPC) == MALE then
			PlayFlavor(NPC, "voiceover/english/ghost_human_base_1/ft/ghost/ghost_human_base_1_1_victory_gm_79236cb9.mp3", "It was too late. They have met our fate.", "", 869850080, 2857504352)
		elseif GetGender(NPC) == FEMALE then
			local choice = math.random(1, 2)
			if choice == 1 then
				PlayFlavor(NPC, "voiceover/english/optional3/ghost_human_base_1/ft/ghost/ghost_human_base_1_1_victory_gf_65116994.mp3", "One down! An eternity to go.", "", 3147020467, 1377166074)
			elseif choice == 2 then
				PlayFlavor(NPC, "voiceover/english/optional3/ghost_human_base_1/ft/ghost/ghost_human_base_1_1_victory_gf_7e0e07b4.mp3", "They can't all be this easy.", "", 2091285193, 1124297002)
			end
		end
	end
end

function death(NPC, Spawn)
	spoke = false
	local chance = math.random(1, 100)
	if chance <= 25 then
	end
end