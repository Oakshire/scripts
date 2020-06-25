--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedfalcon1587708.lua
	Script Purpose	:	Waypoint Path for ataintedfalcon1587708.lua
	Script Author	:	Rylec
	Script Date	:	06-01-2020 10:09:29 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
        SpawnSet(NPC, "level", "3")
	waypoints(NPC)
end

function hailed(NPC, Spawn)
        FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 221.07, 4.1, -78.23, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 208.55, 3.5, -80.7, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 232.64, 2.04, -65.67, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 243.46, 2.06, -49.59, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 242.43, 0.7, -35.71, 2, 0)
	MovementLoopAddLocation(NPC, 239.71, -1.5, -26.82, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 242.78, 0.84, -45.45, 2, 0)
	MovementLoopAddLocation(NPC, 241.35, 2.02, -49.8, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 218.65, 3.3, -73.19, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 228.92, 4.2, -80.61, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 232.23, 3.84, -71.4, 2, 0)
	MovementLoopAddLocation(NPC, 241.1, 3.4, -63.08, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 241.8, 4.2, -41.66, 2, 0)
	MovementLoopAddLocation(NPC, 245.49, 4.9, -24.23, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 255.99, 4.01, -3.41, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 242.05, 3.25, -41.82, 2, 0)
	MovementLoopAddLocation(NPC, 249.14, 2.09, -55, 2, 0)
	MovementLoopAddLocation(NPC, 248.72, 2.05, -60.9, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 253.48, 3.08, -86.62, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 245.2, 3.55, -82.09, 2, 0)
end


