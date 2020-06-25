--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425449.lua
	Script Purpose	:	Waypoint Path for ashoalglider425449.lua
	Script Author	:	Rylec
	Script Date	:	11-08-2019 06:14:39 
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
	MovementLoopAddLocation(NPC, -119.58, -11.44, 142.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -90.74, -11.5, 138.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -107.17, -11.43, 116.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -110.35, -10.5, 114.49, 2, 0)
	MovementLoopAddLocation(NPC, -123.09, -10.5, 109.05, 2, 0)
	MovementLoopAddLocation(NPC, -130.98, -11.02, 109.58, 2, 0)
	MovementLoopAddLocation(NPC, -135.81, -11.27, 108.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -132.2, -11.22, 108.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -143.93, -11.99, 90.64, 2, 0)
	MovementLoopAddLocation(NPC, -146.58, -12.31, 97.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -143.99, -12.04, 93.36, 2, 0)
	MovementLoopAddLocation(NPC, -134.04, -11.35, 107.97, 2, 0)
	MovementLoopAddLocation(NPC, -128.66, -11.03, 109.75, 2, 0)
	MovementLoopAddLocation(NPC, -126.65, -11.45, 108.83, 2, 0)
	MovementLoopAddLocation(NPC, -125.02, -11.48, 108.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -129.21, -11.93, 113.75, 2, 0)
	MovementLoopAddLocation(NPC, -135.78, -12.41, 131.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -133.21, -12.03, 139.62, 2, 0)
	MovementLoopAddLocation(NPC, -131.58, -11.88, 142.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -137.24, -11.88, 138.76, 2, 0)
	MovementLoopAddLocation(NPC, -138.82, -12.24, 122.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -132.55, -11.35, 136.75, 2, 0)
	MovementLoopAddLocation(NPC, -126.45, -11.2, 140.96, 2, 0)
	MovementLoopAddLocation(NPC, -119.29, -11.35, 142.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -109.61, -11.49, 127.94, 2, 0)
	MovementLoopAddLocation(NPC, -100.89, -11.44, 122.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -99.15, -11.38, 130.49, 2, 0)
end
