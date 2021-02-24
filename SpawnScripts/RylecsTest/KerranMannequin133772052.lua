--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133772052.lua
    Script Author  : Rylec
    Script Date    : 2021.01.30 07:01:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SpawnSet(NPC, "action_state", "12055")
end

function hailed(NPC, Spawn)
    Say(NPC, "12055 pugilist_knockdowntoknees")
end

function respawn(NPC)
    spawn(NPC)
end