--[[
	Script Name	: SpawnScripts/QeynosHarbor/SeanWellfayer.lua
	Script Purpose	: Sean Wellfayer 
	Script Author	: Cynnar
	Script Date	: 2020.04.12
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

	PlayFlavor(NPC, "voiceover/english/sean_wellfayer/qey_harbor/100_qst_sean_wellfayer_multhail2_e78a363.mp3", "If fishing doesn't interest you, perhaps bait does!", "", 3207653573, 2859825628, Spawn)
end

