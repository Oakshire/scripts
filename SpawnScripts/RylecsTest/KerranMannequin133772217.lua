--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133772217.lua
    Script Author  : Rylec
    Script Date    : 2021.01.30 07:01:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SpawnSet(NPC, "action_state", "12064")
end

function hailed(NPC, Spawn)
    Say(NPC, "12064 pugilist_ouch_thrust")
end

function respawn(NPC)
    spawn(NPC)
end