--[[
    Script Name    : SpawnScripts/Freeport/SidoniusBaro.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.22 08:07:12
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)
         spawn(NPC)
end

