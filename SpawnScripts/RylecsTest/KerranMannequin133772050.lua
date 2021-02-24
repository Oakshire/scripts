--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133772050.lua
    Script Author  : Rylec
    Script Date    : 2021.01.30 07:01:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SpawnSet(NPC, "action_state", "12054")
end

function hailed(NPC, Spawn)
    Say(NPC, "12054 pugilist_feint")
end

function respawn(NPC)
    spawn(NPC)
end