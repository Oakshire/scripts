--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133772046.lua
    Script Author  : Rylec
    Script Date    : 2021.01.30 07:01:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SpawnSet(NPC, "action_state", "12075")
end

function hailed(NPC, Spawn)
    Say(NPC, "12075 pugilist_walk")
end

function respawn(NPC)
    spawn(NPC)
end