--[[
    Script Name    : SpawnScripts/SouthFreeport/Bassam.lua
    Script Author  : Dorbin
    Script Date    : 2022.03.21 03:03:41
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
--	waypoints(NPC)
SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
GenericRaceCheckHail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
GenericRaceCheckCallout(NPC, Spawn, faction)
    end

function respawn(NPC)
	spawn(NPC)
end