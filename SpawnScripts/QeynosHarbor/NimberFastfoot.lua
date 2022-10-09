--[[
    Script Name    : SpawnScripts/QeynosHarbor/NimberFastfoot.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.12 03:06:17
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
