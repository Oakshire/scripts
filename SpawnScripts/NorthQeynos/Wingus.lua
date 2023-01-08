--[[
    Script Name    : SpawnScripts/NorthQeynos/Wingus.lua
    Script Author  : Dorbin
    Script Date    : 2023.01.08 01:01:22
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
    GenericRaceCheckHail(NPC, Spawn)
end