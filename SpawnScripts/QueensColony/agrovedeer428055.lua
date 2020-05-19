--[[
        Script Name     :       SpawnScripts/QueensColony/agrovedeer428055.lua
	Script Purpose	:	Waypoint Path for agrovedeer428055.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:19:56 
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
	MovementLoopAddLocation(NPC, 163.54, -2.28, 193.2, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 160.07, -2.41, 184.38, 2, 0)
	MovementLoopAddLocation(NPC, 154.08, -2.8, 174.46, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 152.82, -3.4, 159.03, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 162.19, -3.6, 154.44, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 158.93, -3.04, 148.58, 2, 0)
	MovementLoopAddLocation(NPC, 156.06, -2.86, 140.68, 2, 0)
	MovementLoopAddLocation(NPC, 154.35, -3.23, 138.24, 2, 0)
	MovementLoopAddLocation(NPC, 154.06, -3.84, 133.7, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 137.74, -4, 145.42, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 153.45, -3.16, 138.69, 2, 0)
	MovementLoopAddLocation(NPC, 168.77, -3.68, 135.81, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 135.41, -3.54, 172.51, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 152.85, -3.54, 151.07, 2, 0)
	MovementLoopAddLocation(NPC, 156.55, -3.28, 149.67, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 187.13, -4.07, 174.73, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 170.1, -2.94, 185.53, 2, 0)
end


