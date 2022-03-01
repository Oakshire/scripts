--[[
    Script Name    : SpawnScripts/Freeport/LiegeVistiliaAmalthea.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.19 10:07:10
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
MovementLoopAddLocation(NPC, -202.52, -49.66, 243.45, 2)
MovementLoopAddLocation(NPC, -186.27, -55.55, 211.69, 2)
MovementLoopAddLocation(NPC, -188.40, -57.28, 134.57, 2, 10)
MovementLoopAddLocation(NPC, -186.27, -55.55, 211.69, 2)
MovementLoopAddLocation(NPC, -202.52, -49.66, 243.45, 2)
MovementLoopAddLocation(NPC, -190.12, -39.55, 308.36, 2, 10)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    GenericGuardHail(NPC, Spawn, Faction)
end

function respawn(NPC)

end
