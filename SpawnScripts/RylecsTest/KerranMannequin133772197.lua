--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133772197.lua
    Script Author  : Rylec
    Script Date    : 2021.01.30 07:01:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SpawnSet(NPC, "action_state", "12056")
end

function hailed(NPC, Spawn)
    Say(NPC, "12056 pugilist_knockedtoback")
end

function respawn(NPC)
    spawn(NPC)
end