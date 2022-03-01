--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133772202.lua
    Script Author  : Rylec
    Script Date    : 2021.01.30 07:01:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SpawnSet(NPC, "action_state", "1644")
end

function hailed(NPC, Spawn)
    Say(NPC, "1644 pugilist_attack")
end

function respawn(NPC)
    spawn(NPC)
end