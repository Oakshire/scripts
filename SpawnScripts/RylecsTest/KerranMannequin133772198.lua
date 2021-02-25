--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133772198.lua
    Script Author  : Rylec
    Script Date    : 2021.01.30 07:01:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SpawnSet(NPC, "action_state", "12057")
end

function hailed(NPC, Spawn)
    Say(NPC, "12057 pugilist_knockedtoback_getup")
end

function respawn(NPC)
    spawn(NPC)
end