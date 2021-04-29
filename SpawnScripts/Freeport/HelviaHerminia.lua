--[[
    Script Name    : SpawnScripts/Freeport/HelviaHerminia.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.19 10:07:21
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
MovementLoopAddLocation(NPC, 125.46, -9.21, 126.06, 2, 7)
MovementLoopAddLocation(NPC, 120.30, -9.21, 133.20, 2, 0)
MovementLoopAddLocation(NPC, 142.76, -7.52, 156.15, 2, 0)
MovementLoopAddLocation(NPC, 151.55, -7.52, 148.57, 2, 0)
MovementLoopAddLocation(NPC, 142.76, -7.52, 156.15, 2, 0)
MovementLoopAddLocation(NPC, 120.30, -9.21, 133.20, 2, 0)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    GenericGuardHail(NPC, Spawn, Faction)
end

function respawn(NPC)

end