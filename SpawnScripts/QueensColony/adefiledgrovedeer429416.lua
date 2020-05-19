--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledgrovedeer429416.lua
	Script Purpose	:	Waypoint Path for adefiledgrovedeer429416.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:19:41 
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
	MovementLoopAddLocation(NPC, 138.64, -4, 146.15, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 169.52, -3.1, 168.48, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 149.58, -3.01, 166.86, 2, 0)
	MovementLoopAddLocation(NPC, 140.1, -3.69, 166.55, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 143.57, -3.01, 183.3, 2, 0)
	MovementLoopAddLocation(NPC, 144.54, -2.95, 184.86, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 155.63, -3.07, 192.94, 2, 0)
	MovementLoopAddLocation(NPC, 158.63, -2.75, 193.74, 2, 0)
	MovementLoopAddLocation(NPC, 160.49, -2.47, 193.94, 2, 0)
	MovementLoopAddLocation(NPC, 171.34, -3.57, 203.51, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 171.98, -3.15, 192.56, 2, 0)
	MovementLoopAddLocation(NPC, 173.21, -3.27, 188.73, 2, 0)
	MovementLoopAddLocation(NPC, 172.73, -3.17, 164.12, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 130.95, -4.01, 150.46, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 124.04, -4.03, 154.05, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 128.27, -4.04, 150.95, 2, 0)
end

