--[[
    Script Name    : SpawnScripts/Freeport/Athgar.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.18 08:07:46
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
MovementLoopAddLocation(NPC, -227.38, -56.07, 203.59, 2, 0)
MovementLoopAddLocation(NPC, -228.03, -56.06, 198.77, 2, 0)
MovementLoopAddLocation(NPC, -207.57, -56.69, 198.61, 2, 0)
MovementLoopAddLocation(NPC, -200.65, -56.69, 190.73, 2, 0)
MovementLoopAddLocation(NPC, -200.52, -56.69, 147.88, 2, 0)
MovementLoopAddLocation(NPC, -208.64, -56.69, 139.48, 2, 0)
MovementLoopAddLocation(NPC, -223.02, -56.07, 139.63, 2, 0)
MovementLoopAddLocation(NPC, -235.89, -56.07, 135.81, 2, 0)
MovementLoopAddLocation(NPC, -257.38, -57.94, 135.19, 2, 10)
MovementLoopAddLocation(NPC, -235.89, -56.07, 135.81, 2, 0)
MovementLoopAddLocation(NPC, -223.02, -56.07, 139.63, 2, 0)
MovementLoopAddLocation(NPC, -208.64, -56.69, 139.48, 2, 0)
MovementLoopAddLocation(NPC, -200.52, -56.69, 147.88, 2, 0)
MovementLoopAddLocation(NPC, -200.65, -56.69, 190.73, 2, 0)
MovementLoopAddLocation(NPC, -207.57, -56.69, 198.61, 2, 0)
MovementLoopAddLocation(NPC, -228.03, -56.06, 198.77, 2, 0)
MovementLoopAddLocation(NPC, -227.38, -56.07, 203.59, 2, 0)
MovementLoopAddLocation(NPC, -236.93, -56.06, 203.76, 2, 10)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    GenericGuardHail(NPC, Spawn, Faction)
end

function respawn(NPC)

end
