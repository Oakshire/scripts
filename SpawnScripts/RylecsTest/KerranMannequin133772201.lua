--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133772201.lua
    Script Author  : Rylec
    Script Date    : 2021.01.30 07:01:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SpawnSet(NPC, "action_state", "3037")
end

function hailed(NPC, Spawn)
    Say(NPC, "3037 pugilist_wild_swing")
end

function respawn(NPC)
    spawn(NPC)
end