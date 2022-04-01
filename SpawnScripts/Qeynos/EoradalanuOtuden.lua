--[[
	Script Name	: SpawnScripts/SouthQeynos/EoradalanuOtuden.lua
	Script Purpose	: Eoradalanu Otuden 
	Script Author	: Cynnar
	Script Date	: 2020.04.12
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    GenericEcologyHail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
    GenericEcologyCallout(NPC, Spawn, faction)
    end

