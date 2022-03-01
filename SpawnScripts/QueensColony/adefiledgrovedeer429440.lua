--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledgrovedeer429440.lua
	Script Purpose	:	Waypoint Path for adefiledgrovedeer429440.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:20:06 
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
	MovementLoopAddLocation(NPC, 163.56, -3.51, 203.4, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 153.91, -2.8, 170.52, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 188.78, -3, 153.82, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 186.65, -3.23, 158.26, 2, 0)
	MovementLoopAddLocation(NPC, 182.5, -3.84, 174.61, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 185.56, -3, 156.77, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 150.3, -3.58, 195.93, 2, 0)
	MovementLoopAddLocation(NPC, 145.48, -4.08, 199.59, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 143.19, -3.86, 193.26, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 152.61, -3.19, 193.49, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 154.28, -2.8, 170.73, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 161.98, -2.37, 185.03, 2, math.random(10, 24))
end


