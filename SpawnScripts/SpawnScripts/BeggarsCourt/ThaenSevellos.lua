--[[
	Script Name	: SpawnScripts/BeggarsCourt/ThaenSevellos.lua
	Script Purpose	: Thaen Sevellos 
	Script Author	: John Adams (updated by Cynnar 2018.06.14 11:06:08)
	Script Date	: 2009.04.10
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local HALFELF_MENTOR_QUEST_4 = 317 -- Thaen Sevellos

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	
	if HasQuest(Spawn, HALFELF_MENTOR_QUEST_4) then
		if GetQuestStep(Spawn, HALFELF_MENTOR_QUEST_4) == 1 then
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/thaen_sevellos/fprt_hood04/qst_thaen_onquestfree_b253d1ee.mp3", "I never did get to tell Jalya how I felt... Please... go. I am safe, thank you... but please go.", "", 2501604791, 291772649, Spawn)
		elseif GetQuestStep(Spawn, HALFELF_MENTOR_QUEST_4) == 2 then
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/thaen_sevellos/fprt_hood04/qst_thaen_free_d04696a6.mp3", "I can leave now, but Jalya's fate has already been determined.", "", 3783338515, 2630298839, Spawn)
		end
	end
end

