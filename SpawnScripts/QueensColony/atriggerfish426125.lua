--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish426125.lua
	Script Purpose	:	Waypoint Path for atriggerfish426125.lua
	Script Author	:	Rylec
	Script Date	:	11-03-2019 05:45:47 
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
	MovementLoopAddLocation(NPC, -114.47, -13.66, 199.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -109.54, -14.89, 221.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -84.16, -13.76, 225.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -119.56, -13.69, 210.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -120.02, -13.53, 218.25, 2, 0)
	MovementLoopAddLocation(NPC, -134.75, -12.47, 225.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -127.82, -12.89, 230.08, 2, 0)
	MovementLoopAddLocation(NPC, -127.07, -12.37, 229.69, 2, 0)
	MovementLoopAddLocation(NPC, -124.61, -12.54, 230.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -117.77, -13.42, 242.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -116.81, -13.69, 239.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -122.12, -12.44, 229.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -118.14, -13.4, 241.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -119.47, -13.63, 235.66, 2, math.random(10, 20))
end

