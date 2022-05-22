--[[
    Script Name    : SpawnScripts/Antonica/adecayingskeleton666.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.04.26 10:04:00
    Script Purpose : 
                   : 
--]]
    
function spawn(NPC, Spawn)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)
    spawn(NPC)
end