--[[
    Script Name    : SpawnScripts/NorthFreeport/VenetiaGalatea.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.18 07:06:57
    Script Purpose : 
                   : 
--]]


dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")		
    waypoints(NPC)
end

function hailed(NPC, Spawn)
FaceTarget(NPC,Spawn)
GenericRaceCheckHail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
GenericRaceCheckCallout(NPC, Spawn, faction)
end