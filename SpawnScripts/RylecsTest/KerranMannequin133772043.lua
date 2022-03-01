--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133772043.lua
    Script Author  : Rylec
    Script Date    : 2021.01.30 07:01:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SpawnSet(NPC, "action_state", "450")
end

function hailed(NPC, Spawn)
    Say(NPC, "450 pugilist_idle")
end

function respawn(NPC)
    spawn(NPC)
end