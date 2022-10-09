--[[
    Script Name    : SpawnScripts/QeynosHarbor/MirandaWhiting.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.12 04:06:36
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 5, "InRange", "LeaveRange")		
--    waypoints(NPC)
end

function hailed(NPC, Spawn)
FaceTarget(NPC,Spawn)
GenericEcologyHail(NPC, Spawn, faction)
end

