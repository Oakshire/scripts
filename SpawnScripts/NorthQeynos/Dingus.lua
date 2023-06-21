--[[
    Script Name    : SpawnScripts/NorthQeynos/Dingus.lua
    Script Author  : Dorbin
    Script Date    : 2023.01.08 01:01:45
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