--[[
    Script Name    : SpawnScripts/Ruins/aBrokentuskpawn408612.lua
    Script Author  : Premierio015
    Script Date    : 2020.06.27 08:06:08
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
MoveToLocation(NPC, -83.28, -3.01, 40.09, 4)
MoveToLocation(NPC, -96.39, -2.43, 56.84, 4)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)
         spawn(NPC)
end
