--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133772212.lua
    Script Author  : Rylec
    Script Date    : 2021.01.30 07:01:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SpawnSet(NPC, "action_state", "12049")
end

function hailed(NPC, Spawn)
    Say(NPC, "12049 pugilist_dodge_down")
end

function respawn(NPC)
    spawn(NPC)
end