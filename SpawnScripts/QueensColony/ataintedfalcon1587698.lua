--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedfalcon1587698.lua
	Script Purpose	:	Waypoint Path for ataintedfalcon1587698.lua
	Script Author	:	Rylec
	Script Date	:	06-01-2020 10:09:23 
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
	MovementLoopAddLocation(NPC, 219.97, 2.48, -62.95, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 228.76, 2.2, -57.58, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 234.83, 2.32, -43.87, 2, 0)
	MovementLoopAddLocation(NPC, 229.59, 2.84, -26.71, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 234.05, 2.64, -57.93, 2, 0)
	MovementLoopAddLocation(NPC, 234.65, 2.54, -63.06, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 229.03, 3.71, -93.12, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 226.41, 3.81, -83.08, 2, 0)
	MovementLoopAddLocation(NPC, 220.51, 3.92, -70.66, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 228.68, 2.11, -88.4, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 224.43, 2.3, -70.44, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 234.8, 3.24, -80.9, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 251.81, 3.28, -72.32, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 262.2, 2.12, -65.47, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 241.57, 3.17, -70.91, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 231.48, 2.74, -64.64, 2, 0)
end


