--[[
    Script Name    : SpawnScripts/NorthFreeport/FlaeriusRubico.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.18 08:06:41
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