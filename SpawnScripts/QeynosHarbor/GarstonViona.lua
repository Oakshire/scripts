--[[
	Script Name	: SpawnScripts/QeynosHarbor/GarstonViona.lua
	Script Purpose	: Garston Viona <Guild Cloak Designer>
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

	PlayFlavor(NPC, "", "Would you like to design a new look for your guild's cloaks?  This is something that I can help you with, all I require is that you cover cost of my supplies.", "", 1689589577, 4560189, Spawn)
end

