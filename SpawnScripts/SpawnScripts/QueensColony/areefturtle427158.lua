--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427158.lua
	Script Purpose	:	Waypoint Path for areefturtle427158.lua
	Script Author	:	Rylec
	Script Date	:	10-23-2019 07:03:34 
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
	MovementLoopAddLocation(NPC, -18.19, -12.17, 282.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24.73, -12.22, 275.56, 2, 0)
	MovementLoopAddLocation(NPC, -24, -11.66, 271.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -32.95, -11.4, 269.01, 2, 0)
	MovementLoopAddLocation(NPC, -49.14, -11.7, 263.54, 2, 0)
	MovementLoopAddLocation(NPC, -55.67, -12.22, 260.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -79, -14.33, 259.01, 2, 0)
	MovementLoopAddLocation(NPC, -81.92, -13.56, 261.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -78.07, -14.03, 256.78, 2, 0)
	MovementLoopAddLocation(NPC, -72.33, -13.26, 253.63, 2, 0)
	MovementLoopAddLocation(NPC, -68.58, -12.69, 251.62, 2, 0)
	MovementLoopAddLocation(NPC, -58.59, -12.42, 243.9, 2, 0)
	MovementLoopAddLocation(NPC, -56.33, -12.3, 241.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -55.66, -12.66, 244.32, 2, 0)
	MovementLoopAddLocation(NPC, -48.1, -12.03, 270.46, 2, math.random(10, 20))
end
