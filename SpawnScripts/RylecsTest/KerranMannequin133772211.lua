--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133772211.lua
    Script Author  : Rylec
    Script Date    : 2021.01.30 07:01:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SpawnSet(NPC, "visual_state", "12048")
end

function hailed(NPC, Spawn)
    Say(NPC, "12048 pugilist_dodge_backhand")
end

function respawn(NPC)
    spawn(NPC)
end