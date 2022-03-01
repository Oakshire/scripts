--[[
	Script Name	: SpawnScripts/ElddarGrove/InitiateTara.lua
	Script Purpose	: Initiate Tara 
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/optional1/initiate_tara/qey_elddar/100_monk_initiate_tara_token1_9ac42d88.mp3", "Tread softly and speak your purpose.", "", 3516598133, 1750026138, Spawn)
end

