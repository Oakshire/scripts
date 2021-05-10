--[[
    Script Name    : SpawnScripts/Freeport/AmuliusSarrius.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.18 09:07:32
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
MovementLoopAddLocation(NPC, -21.23, -8.28, 226.19, 2, 0)
MovementLoopAddLocation(NPC, -13.68, -8.27, 233.85, 2, 0)
MovementLoopAddLocation(NPC, 19.68, -8.19, 239.44, 2, 0)
MovementLoopAddLocation(NPC, 55.08, -12.10, 239.11, 2, 10)
MovementLoopAddLocation(NPC, 55.08, -12.10, 239.11, 2, 0)
MovementLoopAddLocation(NPC, 19.68, -8.19, 239.44, 2, 0)
MovementLoopAddLocation(NPC, -13.68, -8.27, 233.85, 2, 0)
MovementLoopAddLocation(NPC, -21.23, -8.28, 226.19, 2, 0)
MovementLoopAddLocation(NPC, -37.06, -8.26, 222.62, 2, 10)
MovementLoopAddLocation(NPC, -37.06, -8.26, 222.62, 2, 0)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    GenericGuardHail(NPC, Spawn, Faction)
end

function respawn(NPC)
spawn(NPC)
end