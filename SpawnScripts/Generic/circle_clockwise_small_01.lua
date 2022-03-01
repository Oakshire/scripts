--[[
	Script Name	: SpawnScripts/Generic/circle_clockwise_small_01.lua
	Script Purpose	: Makes the spawn do a small circle in a clockwise fashion.
	Script Author	: Scatman
	Script Date	: 2008-08-26
	Script Notes	: If the coords are out of bounds then the spawn will still go there.
--]]

function spawn(NPC)
   x = GetX(NPC)
   y = GetY(NPC)
   z = GetZ(NPC)
   MovementLoopAddLocation(NPC, x + 7 , y, z - 8 , 2, math.random(5, 15))
   MovementLoopAddLocation(NPC, x - 5 , y, z - 10, 2, math.random(5, 15))
   MovementLoopAddLocation(NPC, x - 10, y, z + 9 , 2, math.random(5, 15))
   MovementLoopAddLocation(NPC, x + 5 , y, z + 8 , 2, math.random(5, 15))
end

function respawn(NPC)
   spawn(NPC)
end

function hailed(NPC, Spawn)
   FaceTarget(NPC, Spawn)
end