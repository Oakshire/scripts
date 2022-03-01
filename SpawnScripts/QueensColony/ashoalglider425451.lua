--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425451.lua
	Script Purpose	:	Waypoint Path for ashoalglider425451.lua
	Script Author	:	Rylec
	Script Date	:	11-08-2019 06:16:01 
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
	MovementLoopAddLocation(NPC, -134.12, -14.46, 201.57, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -135.92, -12.76, 201.91, 2, 0)
	MovementLoopAddLocation(NPC, -141.1, -12.34, 201.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -112.64, -12.38, 186.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.44, -13, 192.82, 2, 0)
	MovementLoopAddLocation(NPC, -139.84, -14.26, 199.51, 2, 0)
	MovementLoopAddLocation(NPC, -144.83, -14.49, 201.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -135.8, -13.12, 190.34, 2, 0)
	MovementLoopAddLocation(NPC, -126.79, -12.32, 181.75, 2, 0)
	MovementLoopAddLocation(NPC, -122.34, -12.1, 176.41, 2, 0)
	MovementLoopAddLocation(NPC, -120.23, -12.04, 175.35, 2, 0)
	MovementLoopAddLocation(NPC, -115.98, -11.82, 170.84, 2, 0)
	MovementLoopAddLocation(NPC, -115.72, -11.12, 169.75, 2, 0)
	MovementLoopAddLocation(NPC, -116.69, -11.24, 165.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -126.96, -12.42, 164.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -132.67, -13.11, 164.24, 2, 0)
	MovementLoopAddLocation(NPC, -139.02, -14.22, 161.02, 2, 0)
	MovementLoopAddLocation(NPC, -141.73, -14.41, 160.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -141.4, -12.95, 167.54, 2, 0)
	MovementLoopAddLocation(NPC, -135.95, -12.67, 184.22, 2, 0)
	MovementLoopAddLocation(NPC, -135.74, -12.46, 191.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -133.81, -14.14, 198.06, 2, 0)
end


