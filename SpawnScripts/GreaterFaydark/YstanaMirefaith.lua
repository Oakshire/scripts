--[[
	Script Name	: SpawnScripts/GreaterFaydark/YstanaMirefaith.lua
	Script Purpose	: Ystana Mirefaith 
	Script Author	: John Adams
	Script Date	: 2009.03.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/ystana_mirefaith/_exp03/exp03_rgn_greater_faydark/quest/scp/ystana_mirefaith_notonquest_3bf17faa.mp3", "This land is amazingly beautiful.", "", 3090745431, 792109295, Spawn)
end

