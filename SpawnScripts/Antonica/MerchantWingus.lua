--[[
    Script Name    : SpawnScripts/Antonica/MerchantWingus.lua
    Script Author  : Dorbin
    Script Date    : 2023.06.14 06:06:40
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