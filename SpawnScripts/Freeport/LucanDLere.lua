--[[
    Script Name    : SpawnScripts/Freeport/LucanDLere.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.18 08:07:29
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    PlayAnimation(NPC, 24494)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end

