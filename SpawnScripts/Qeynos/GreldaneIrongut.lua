--[[
	Script Name	: SpawnScripts/SouthQeynos/GreldaneIrongut.lua
	Script Purpose	: Greldane Irongut 
	Script Author	: Cynnar
	Script Date	: 2020.04.12
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 4, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
GenericDrunkCallout(NPC, Spawn, faction)    
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
GenericDrunkHail(NPC, Spawn, faction)
end

