--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedfalcon1587713.lua
	Script Purpose	:	Waypoint Path for ataintedfalcon1587713.lua
	Script Author	:	Rylec
	Script Date	:	06-01-2020 10:09:41 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
        SpawnSet(NPC, "level", "3")
        SpawnSet(NPC, "hp", 75)
        SpawnSet(NPC, "power", 45)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
        FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 243.47, 6.08, -58.66, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 242.12, 2.77, -87.93, 2, 0)
	MovementLoopAddLocation(NPC, 241.43, 2.07, -91.04, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 216.64, 2.46, -62.68, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 215.37, 2.58, -70.34, 2, 0)
	MovementLoopAddLocation(NPC, 212.01, 2.66, -77.78, 2, 0)
	MovementLoopAddLocation(NPC, 210.45, 2.76, -83.34, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 220.46, 4.31, -49.81, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 223.46, 4.27, -51.49, 2, 0)
	MovementLoopAddLocation(NPC, 248.15, 4.14, -75.37, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 239.94, 3.06, -64, 2, 0)
	MovementLoopAddLocation(NPC, 232.91, 2.14, -44.48, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 231.09, 2.76, -49.18, 2, 0)
	MovementLoopAddLocation(NPC, 226.54, 3.38, -52.27, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 229.1, 4.2, -57.53, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 232.81, 3.2, -51.73, 2, 0)
	MovementLoopAddLocation(NPC, 239.59, 2.8, -47, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 236.16, 2.81, -43.65, 2, 0)
	MovementLoopAddLocation(NPC, 234.74, 2.82, -40.67, 2, 0)
	MovementLoopAddLocation(NPC, 234.29, 2.84, -36.31, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 240.2, 2.36, -65.16, 2, 0)
	MovementLoopAddLocation(NPC, 241.7, 2, -91.1, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 216.36, 2.06, -62.91, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 215.81, 2.34, -69.59, 2, 0)
	MovementLoopAddLocation(NPC, 211.87, 2.76, -77.62, 2, 0)
	MovementLoopAddLocation(NPC, 210.4, 2.9, -83.67, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 215.62, 3.42, -62.2, 2, 0)
	MovementLoopAddLocation(NPC, 220.67, 4.26, -49.88, 2, math.random(10, 24))
end