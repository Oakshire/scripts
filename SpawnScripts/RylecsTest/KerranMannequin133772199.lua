--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133772199.lua
    Script Author  : Rylec
    Script Date    : 2021.01.30 07:01:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SpawnSet(NPC, "action_state", "3029")
end

function hailed(NPC, Spawn)
    Say(NPC, "3029 pugilist_kick")
end

function respawn(NPC)
    spawn(NPC)
end