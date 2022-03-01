--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425475.lua
	Script Purpose	:	Waypoint Path for ashoalglider425475.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:20:06 
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
	MovementLoopAddLocation(NPC, -49.1, -10.7, 16.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -40.8, -10.7, 11.19, 2, 0)
	MovementLoopAddLocation(NPC, -20.56, -11.11, 6.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -13.13, -11.33, -17.71, 2, 0)
	MovementLoopAddLocation(NPC, -5.4, -11.42, -31.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -1.54, -11.73, -39.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -31.75, -11.48, -30.7, 2, 0)
	MovementLoopAddLocation(NPC, -37.94, -11.34, -26.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -17.6, -11.82, -23.65, 2, 0)
	MovementLoopAddLocation(NPC, -8.69, -11.69, -22.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -39.16, -11.02, -39.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -41.35, -10.7, -26.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -37.62, -10.63, -27.44, 2, 0)
	MovementLoopAddLocation(NPC, -22.41, -10.94, -28.2, 2, 0)
	MovementLoopAddLocation(NPC, -15.69, -11.48, -30.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.67, -10.7, -13.33, 2, 0)
	MovementLoopAddLocation(NPC, -44.57, -10.7, 12.64, 2, 0)
end


