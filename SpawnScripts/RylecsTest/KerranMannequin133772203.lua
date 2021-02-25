--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133772203.lua
    Script Author  : Rylec
    Script Date    : 2021.01.30 07:01:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SpawnSet(NPC, "action_state", "12036")
end

function hailed(NPC, Spawn)
    Say(NPC, "12036 pugilist_attack01")
end

function respawn(NPC)
    spawn(NPC)
end