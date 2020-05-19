--[[
	Script Name	: SpawnScripts/Darklight/acuriouscitizen.lua
	Script Purpose	: a curious citizen 
	Script Author	: John Adams
	Script Date	: 2009.02.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

QUEST_WANTED = 84

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	if HasCompletedQuest(Spawn, QUEST_WANTED) then
		Say(NPC, "I heard you beat me to it. Ah well.", Spawn)
	else
		PlayFlavor(NPC, "voiceover/english/neriak/a_curious_citizen/darklight_wood/quest/hates_envy/curious_citizen_hail_db9fb451.mp3", "I wonder how well this bounty pays.", "", 3920277342, 17103451, Spawn)
	end
end

