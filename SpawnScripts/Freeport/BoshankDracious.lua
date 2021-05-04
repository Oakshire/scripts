--[[
    Script Name    : SpawnScripts/Freeport/BoshankDracious.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.18 08:07:12
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
MovementLoopAddLocation(NPC, -208.21, -56.07, -77.97, 2, 10)
MovementLoopAddLocation(NPC, -298.08, -55.96, -76.99, 2, 10)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    GenericGuardHail(NPC, Spawn, Faction)
end

function respawn(NPC)

end