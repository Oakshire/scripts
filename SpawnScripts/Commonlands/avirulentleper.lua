--[[
    Script Name    : SpawnScripts/Commonlands/avirulentleper.lua
    Script Author  : Premierio015
    Script Date    : 2021.02.21 09:02:47
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
EmoteLoop(NPC)
end


function EmoteLoop (NPC)
                PlayAnimation(NPC, 12191)
                AddTimer(NPC, 15000, "EmoteLoop")
end


function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)
spawn(NPC)
end

