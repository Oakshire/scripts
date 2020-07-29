--[[
        Script Name     :       SpawnScripts/QueensColony/aMorakmangler429820.lua
	Script Purpose	:	Waypoint Path for aMorakmangler429820.lua
	Script Author	:	Rylec
	Script Date	:	07-28-2020 10:33:33 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -92.87, 4.37, -161.64, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -94.03, 4.37, -155.53, 2, 0)
	MovementLoopAddLocation(NPC, -98.57, 4.4, -153.04, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -92.46, 4.37, -156.56, 2, 0)
	MovementLoopAddLocation(NPC, -87.75, 4.78, -161.38, 2, 0)
	MovementLoopAddLocation(NPC, -83.35, 5.27, -160.5, 2, 0)
	MovementLoopAddLocation(NPC, -82.59, 4.5, -155.81, 2, 0)
	MovementLoopAddLocation(NPC, -90.86, 4.36, -150.81, 2, 0)
	MovementLoopAddLocation(NPC, -93.24, 4.35, -146.8, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -90.14, 4.35, -145.5, 2, 0)
	MovementLoopAddLocation(NPC, -87.05, 4.35, -146.65, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -83.81, 4.35, -149.42, 2, 0)
	MovementLoopAddLocation(NPC, -81.67, 4.35, -152.68, 2, 0)
	MovementLoopAddLocation(NPC, -82.33, 2.79, -172.26, 2, math.random(14, 25))
end

