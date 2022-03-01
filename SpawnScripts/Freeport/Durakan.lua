--[[
    Script Name    : SpawnScripts/Freeport/Durakan.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.19 10:07:10
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
MovementLoopAddLocation(NPC, -96.85, -24.95, 162.21, 2, 0)
MovementLoopAddLocation(NPC, -88.85, -23.80, 118.88, 2, 10)
MovementLoopAddLocation(NPC, -88.85, -23.80, 118.88, 2, 0)
MovementLoopAddLocation(NPC, -96.85, -24.95, 162.21, 2, 0)
MovementLoopAddLocation(NPC, -105.12, -24.70, 183.00, 2, 10)
MovementLoopAddLocation(NPC, -105.12, -24.70, 183.00, 2, 0)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    GenericGuardHail(NPC, Spawn, Faction)
end

function respawn(NPC)

end

