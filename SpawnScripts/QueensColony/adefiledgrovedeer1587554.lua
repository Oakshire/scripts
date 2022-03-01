--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledgrovedeer1587554.lua
	Script Purpose	:	Waypoint Path for adefiledgrovedeer1587554.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:46:36 
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
	MovementLoopAddLocation(NPC, 163.25, 1.4, 7.35, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 167.07, 1.36, 30.59, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 172.89, 1.16, 17.85, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 161.09, 1.25, 25.57, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 143.64, 0.28, 20.28, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 148.23, 0.21, 16.81, 2, 0)
	MovementLoopAddLocation(NPC, 159.27, 1.41, 7.21, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 146.81, 0.61, 22.03, 2, 0)
	MovementLoopAddLocation(NPC, 143.65, 1.09, 28.3, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 158.82, 1.41, 18.5, 2, 0)
	MovementLoopAddLocation(NPC, 163.06, 1.4, 16.99, 2, 0)
	MovementLoopAddLocation(NPC, 188.72, 1.31, -0.75, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 185.15, 1.32, 21.19, 2, 0)
	MovementLoopAddLocation(NPC, 186.57, 1.31, 25.27, 2, 0)
	MovementLoopAddLocation(NPC, 184.93, 1.31, 27.99, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 182.5, 1.32, 26.75, 2, 0)
	MovementLoopAddLocation(NPC, 178.5, 1.34, 20.74, 2, 0)
	MovementLoopAddLocation(NPC, 180.35, 1.34, 13.47, 2, 0)
	MovementLoopAddLocation(NPC, 180.98, 1.33, 9.8, 2, math.random(10, 24))
end


