--[[
    Script Name    : SpawnScripts/QeynosHarbor/ToraShadyleaf.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.12 04:06:44
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 5, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
FaceTarget(NPC,Spawn)
GenericRaceCheckHail(NPC, Spawn, faction)
end
