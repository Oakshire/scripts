--[[
    Script Name    : SpawnScripts/OutpostOverlord/TheGreatHawk.lua
    Script Author  : Cynnar
    Script Date    : 2017.01.28 02:01:19
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
MovementLoopAddLocation(NPC, 99.76, 30.0556, -156.76, 2, 0)
MovementLoopAddLocation(NPC, 88.37, 30.0556, -167.49, 2, 0)
MovementLoopAddLocation(NPC, 79.9, 30.0556, -185.55, 2, 0)
MovementLoopAddLocation(NPC, 96.77, 30.0556, -201.8, 2, 0)
MovementLoopAddLocation(NPC, 145.48, 30.0556, -207.89, 2, 0)
MovementLoopAddLocation(NPC, 193.69, 30.0556, -196.3, 2, 0)
MovementLoopAddLocation(NPC, 237.29, 30.0556, -170.62, 2, 0)
MovementLoopAddLocation(NPC, 227.4, 30.0556, -125.1, 2, 0)
MovementLoopAddLocation(NPC, 204.14, 30.0556, -113.76, 2, 0)
MovementLoopAddLocation(NPC, 159.52, 30.0556, -125.28, 2, 0)
MovementLoopAddLocation(NPC, 128, 30.0556, -133.993, 2, 0)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end