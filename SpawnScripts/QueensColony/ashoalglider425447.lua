--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425447.lua
	Script Purpose	:	Waypoint Path for ashoalglider425447.lua
	Script Author	:	Rylec
	Script Date	:	11-08-2019 06:14:22 
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
	MovementLoopAddLocation(NPC, -141.24, -13.27, 175.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -143.98, -14.27, 170.16, 2, 0)
	MovementLoopAddLocation(NPC, -144.85, -14.43, 168.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -141.74, -14.01, 163.98, 2, 0)
	MovementLoopAddLocation(NPC, -143.88, -14.05, 148.07, 2, 0)
	MovementLoopAddLocation(NPC, -142.92, -13.62, 142.44, 2, 0)
	MovementLoopAddLocation(NPC, -143.81, -13.48, 138.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -145.29, -12.41, 135.71, 2, 0)
	MovementLoopAddLocation(NPC, -146.62, -12.44, 131.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -148.58, -14.34, 157.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -143.22, -14.77, 151.08, 2, 0)
	MovementLoopAddLocation(NPC, -141.28, -14.62, 149.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -140.27, -13.51, 149.96, 2, 0)
	MovementLoopAddLocation(NPC, -127.08, -11.89, 154.95, 2, 0)
	MovementLoopAddLocation(NPC, -117.09, -11.97, 161.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -116.1, -11.51, 164.28, 2, 0)
	MovementLoopAddLocation(NPC, -111.47, -12.02, 175.97, 2, 0)
	MovementLoopAddLocation(NPC, -108.8, -12.35, 186.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -111.45, -12.91, 186.97, 2, 0)
	MovementLoopAddLocation(NPC, -115.98, -13.29, 194.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -119.84, -12.91, 188.36, 2, 0)
end


