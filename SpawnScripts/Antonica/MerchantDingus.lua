--[[
    Script Name    : SpawnScripts/Antonica/MerchantDingus.lua
    Script Author  : Dorbin
    Script Date    : 2023.06.14 06:06:16
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
    SetInfoStructString(NPC, "action_state", "metalworking_idle")
end

function hailed(NPC, Spawn)
    FaceTarget(NPC,Spawn)
    GenericRaceCheckHail(NPC, Spawn)
end