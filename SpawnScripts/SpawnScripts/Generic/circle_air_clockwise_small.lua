--[[
	Spawn Template
	Script Name	: circle_air_clockwise_small_01.lua
	Script Purpose	: Makes the spawn do a small circle in a counter-clockwise fashion.
	Script Author	: Scatman
	Script Date	: 2008-08-26
	Script Notes	: If the coords are out of bounds then the spawn will still go there.
                          ONLY for flying spawns!!!

	These are just suggested functions to get you started. Edit as needed.
--]]

function spawn(NPC)
   x = GetX(NPC)
   y = GetY(NPC)
   z = GetZ(NPC)
   MovementLoopAddLocation(NPC, x - 7 , 0, z + 8 , 2, math.random(5, 45))
   MovementLoopAddLocation(NPC, x + 5 , 0, z + 10, 2, math.random(5, 45))
   MovementLoopAddLocation(NPC, x + 10, 0, z - 9 , 2, math.random(5, 45))
   MovementLoopAddLocation(NPC, x - 5 , 0, z - 8 , 2, math.random(5, 45))
end

function hailed(NPC, Spawn)
   FaceTarget(NPC, Spawn)
end