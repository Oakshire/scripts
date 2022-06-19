--[[
    Script Name    : SpawnScripts/NorthFreeport/SpeculatorMontanlooa.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.18 08:06:54
    Script Purpose : 
                   : 
--]]


dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 5, "InRange", "LeaveRange")		
    waypoints(NPC)
end

function hailed(NPC, Spawn)
FaceTarget(NPC,Spawn)
GenericRaceCheckHail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
GenericRaceCheckCallout(NPC, Spawn, faction)
end