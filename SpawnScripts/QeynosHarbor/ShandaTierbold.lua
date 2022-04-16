--[[
	Script Name	: SpawnScripts/QeynosHarbor/ShandaTierbold.lua
	Script Purpose	: Shanda Tierbold 
	Script Author	: Cynnar
	Script Date	: 2020.04.12
	Script Notes	: Auto-Generated Conversation from PacketParser Data
	Associated with Nettlevill Quest "Letter from the Boss" https://eq2.zam.com/db/quest.html?eq2quest=825320e98cc4a4aa943eef2e924c4add#Wiki
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

	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1041.mp3", "Stop right there! No one goes through this door without explicit permission.", "no", 0, 0, Spawn)
end

