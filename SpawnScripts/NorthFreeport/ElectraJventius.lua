--[[
    Script Name    : SpawnScripts/NorthFreeport/ElectraJventius.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.18 07:06:13
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