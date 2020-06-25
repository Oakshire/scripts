--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish426086.lua
	Script Purpose	:	Waypoint Path for atriggerfish426086.lua
	Script Author	:	Rylec
	Script Date	:	11-03-2019 05:46:40 
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
	MovementLoopAddLocation(NPC, -104.58, -13.62, 220.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -110.26, -12.48, 219.75, 2, 0)
	MovementLoopAddLocation(NPC, -115.86, -12.45, 221.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -114.41, -12.28, 218.94, 2, 0)
	MovementLoopAddLocation(NPC, -85.02, -11.54, 185.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -94.44, -12.45, 223.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -96.37, -13.23, 224.04, 2, 0)
	MovementLoopAddLocation(NPC, -109.54, -13.66, 218.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -132.2, -13.7, 225.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -127.69, -14.15, 223.98, 2, 0)
	MovementLoopAddLocation(NPC, -106.87, -13.62, 195.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -111.67, -12.47, 203.69, 2, 0)
	MovementLoopAddLocation(NPC, -111.32, -12.45, 210.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -107.27, -13.02, 214.6, 2, 0)
end


