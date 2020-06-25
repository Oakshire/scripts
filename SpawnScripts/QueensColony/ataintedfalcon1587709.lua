--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedfalcon1587709.lua
	Script Purpose	:	Waypoint Path for ataintedfalcon1587709.lua
	Script Author	:	Rylec
	Script Date	:	06-01-2020 10:09:31 
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
	MovementLoopAddLocation(NPC, 226.69, 3.35, -61.92, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 232.96, 3.04, -63.91, 2, 0)
	MovementLoopAddLocation(NPC, 240.61, 2.57, -63.84, 2, 0)
	MovementLoopAddLocation(NPC, 257.81, 2.1, -70.24, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 244.04, 2.38, -77.23, 2, 0)
	MovementLoopAddLocation(NPC, 238.87, 2.86, -83.82, 2, 0)
	MovementLoopAddLocation(NPC, 237.43, 3.1, -88.6, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 231.67, 2.72, -87.71, 2, 0)
	MovementLoopAddLocation(NPC, 210.43, 2.05, -91.49, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 210.51, 2.55, -86.83, 2, 0)
	MovementLoopAddLocation(NPC, 208.23, 3.35, -77.93, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 214.16, 2.77, -73.86, 2, 0)
	MovementLoopAddLocation(NPC, 230.8, 2.07, -60.14, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 222.54, 2.8, -45.86, 2, 0)
	MovementLoopAddLocation(NPC, 221.98, 3.05, -42.89, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 227.12, 1.73, -38.66, 2, 0)
	MovementLoopAddLocation(NPC, 236.32, -0.75, -35.09, 2, 0)
	MovementLoopAddLocation(NPC, 240.36, -1.5, -31.39, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 228.61, 4.6, -62.6, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 236.15, 3.54, -72.28, 2, 0)
	MovementLoopAddLocation(NPC, 239.73, 2.86, -83.32, 2, 0)
	MovementLoopAddLocation(NPC, 241.6, 2.07, -93.7, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 247.28, 2.14, -89.34, 2, 0)
	MovementLoopAddLocation(NPC, 259.29, 2.19, -72.83, 2, 0)
	MovementLoopAddLocation(NPC, 260.5, 2.22, -68, 2, 0)
	MovementLoopAddLocation(NPC, 266.21, 2.24, -62.77, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 258.93, 2.16, -66.6, 2, 0)
	MovementLoopAddLocation(NPC, 251.58, 2.09, -64.84, 2, 0)
	MovementLoopAddLocation(NPC, 247.43, 2.05, -65.86, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 231.23, 2.76, -64.4, 2, 0)
end