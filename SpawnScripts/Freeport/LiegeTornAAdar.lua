--[[
    Script Name    : SpawnScripts/Freeport/LiegeTornAAdar.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.14 07:07:46
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
MovementLoopAddLocation(NPC, -49.27, -9.77, -89.15, 2, 0)
MovementLoopAddLocation(NPC, -0.97, -17.01, -63.60, 2, 7)
MovementLoopAddLocation(NPC, -48.59, -10.17, -85.91, 2, 0)
MovementLoopAddLocation(NPC, -31.73, -8.38, -149.72, 2, 7)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    GenericGuardHail(NPC, Spawn, Faction)
end

function respawn(NPC)

end