--[[
	Script Name	: SpawnScripts/SunkenCity/aninvestigatorofPrexianartifacts.lua
	Script Purpose	: an investigator of Prexian artifacts <Dismal Rage>
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
			local choice = math.random(1, 4)
			if choice == 1 then
				PlayFlavor(NPC, "voiceover/english/ghost_human_base_1/ft/ghost/ghost_human_base_1_1_aggro_gm_119a2ca8.mp3", "No. I'm unrest and you will suffer.", "", 3626119416, 3545522817)
			elseif choice == 2 then
				PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_aggro_gm_583690dc.mp3", "Summon help! We have invaders!", "", 3340212225, 279643307)
			elseif choice == 3 then
				PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_aggro_gm_a203c9ec.mp3", "Prepare to face your doom, meddler.", "", 1496819882, 365167432)
			elseif choice == 4 then
				PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_aggro_gm_a30c4f9d.mp3", "To arms!", "", 1238020980, 748146443)
			end
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
			local choice = math.random(1, 3)
			if choice == 1 then
				PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_halfhealth_gm_1babf022.mp3", "Is that all you have?", "", 170267964, 1158805306)
			elseif choice == 2 then
				PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_halfhealth_gm_8529e507.mp3", "I can't hold them forever!", "", 644448824, 755050547)
			elseif choice == 3 then
				PlayFlavor(NPC, "voiceover/english/optional5/human_base_2/ft/human/human_base_2_2_halfhealth_gm_64f84f7d.mp3", "This time, don't tickle me with your weapon!", "", 425567694, 559993522)
			end
		elseif GetGender(NPC) == FEMALE then
			local choice = math.random(1, 4)
			if choice == 1 then
				PlayFlavor(NPC, "voiceover/english/optional3/ghost_human_base_1/ft/ghost/ghost_human_base_1_1_halfhealth_gf_fa0af03c.mp3", "For Thule's sake!", "", 2960095639, 2634994717)
			elseif choice == 2 then
				PlayFlavor(NPC, "voiceover/english/optional3/ghost_human_base_2/ft/ghost/ghost_human_base_2_1_halfhealth_gf_4214f9be.mp3", "Well struck, but I withstood it!", "", 2750294931, 1365592478)
			elseif choice == 3 then
				PlayFlavor(NPC, "voiceover/english/optional3/human_base_1/ft/human/human_base_1_1_halfhealth_gf_1babf022.mp3", "Is that all you have?", "", 2979351329, 4050238683)
			elseif choice == 4 then
				PlayFlavor(NPC, "voiceover/english/optional3/human_base_1/ft/human/human_base_1_1_halfhealth_gf_8529e507.mp3", "I can't hold them forever!", "", 3371581229, 792393228)
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
			local choice = math.random(1, 4)
			if choice == 1 then
				PlayFlavor(NPC, "voiceover/english/ghost_human_base_1/ft/ghost/ghost_human_base_1_1_victory_gm_79236cb9.mp3", "It was too late. They have met our fate.", "", 869850080, 2857504352)
			elseif choice == 2 then
				PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_victory_gm_153f12ff.mp3", "One down!", "", 3009518664, 4140389760)
			elseif choice == 3 then
				PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_victory_gm_4553e1e0.mp3", "Flee now or meet this one's fate.", "", 3032162747, 1359206304)
			elseif choice == 4 then
				PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_victory_gm_ec0cd85a.mp3", "I hope they're all this easy.", "", 2687289628, 2303639320)
			end
		elseif GetGender(NPC) == FEMALE then
			PlayFlavor(NPC, "voiceover/english/optional3/ghost_human_base_1/ft/ghost/ghost_human_base_1_1_aggro_gf_821554e3.mp3", "Must you aggravate me so!", "", 735262000, 1417243472, Spawn)
		end
	end
end

function death(NPC, Spawn)
	spoke = false
	local chance = math.random(1, 100)
	if chance <= 25 then
		if GetGender(NPC) == MALE then
			PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_death_gm_7612214f.mp3", "All hands retreat!", "", 3033325782, 1103449586)
		elseif GetGender(NPC) == FEMALE then
			PlayFlavor(NPC, "voiceover/english/optional3/human_base_1/ft/human/human_base_1_1_death_gf_7612214f.mp3", "All hands retreat!", "", 3620177897, 757784861)
		end
	end
end