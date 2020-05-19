--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish426131.lua
	Script Purpose	:	Waypoint Path for atriggerfish426131.lua
	Script Author	:	Rylec
	Script Date	:	11-03-2019 05:46:07 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -109.38, -14.94, 206.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -100.15, -14.54, 202.67, 2, 0)
	MovementLoopAddLocation(NPC, -92.98, -13.74, 202.51, 2, 0)
	MovementLoopAddLocation(NPC, -85.1, -13.07, 200.31, 2, 0)
	MovementLoopAddLocation(NPC, -80.36, -11.64, 197.2, 2, 0)
	MovementLoopAddLocation(NPC, -75.96, -11.64, 195.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -65.52, -12.42, 182.53, 2, 0)
	MovementLoopAddLocation(NPC, -63.89, -11.89, 179.08, 2, 0)
	MovementLoopAddLocation(NPC, -63.72, -11.98, 174.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -89.02, -12.94, 195.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -90.87, -13.28, 203.51, 2, 0)
	MovementLoopAddLocation(NPC, -116.85, -14.94, 239.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -105.05, -13.34, 241.16, 2, 0)
	MovementLoopAddLocation(NPC, -99.42, -13.45, 241.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -96.74, -13.55, 232.67, 2, 0)
	MovementLoopAddLocation(NPC, -96.61, -13.74, 227.46, 2, 0)
	MovementLoopAddLocation(NPC, -95.77, -13.02, 226.03, 2, 0)
	MovementLoopAddLocation(NPC, -94.26, -12.46, 225.48, 2, 0)
	MovementLoopAddLocation(NPC, -92.51, -12.39, 226.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -88.65, -13.55, 227.27, 2, 0)
	MovementLoopAddLocation(NPC, -84.5, -13.61, 227.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -89.06, -14.02, 206.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -88.99, -12.57, 199.32, 2, 0)
	MovementLoopAddLocation(NPC, -84.18, -12.05, 174.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -90.51, -12.48, 182.67, 2, 0)
	MovementLoopAddLocation(NPC, -96.12, -12.54, 187.02, 2, 0)
	MovementLoopAddLocation(NPC, -101.99, -13.39, 191.93, 2, 0)
	MovementLoopAddLocation(NPC, -109.41, -14.85, 199.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -104.35, -13.74, 237.54, 2, math.random(10, 20))
end
