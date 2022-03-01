--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133772205.lua
    Script Author  : Rylec
    Script Date    : 2021.01.30 07:01:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SpawnSet(NPC, "action_state", "12037")
end

function hailed(NPC, Spawn)
    Say(NPC, "12037 pugilist_attack03")
end

function respawn(NPC)
    spawn(NPC)
end