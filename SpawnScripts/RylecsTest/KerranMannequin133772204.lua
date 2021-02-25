--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133772204.lua
    Script Author  : Rylec
    Script Date    : 2021.01.30 07:01:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SpawnSet(NPC, "action_state", "1646")
end

function hailed(NPC, Spawn)
    Say(NPC, "1646 pugilist_attack02")
end

function respawn(NPC)
    spawn(NPC)
end