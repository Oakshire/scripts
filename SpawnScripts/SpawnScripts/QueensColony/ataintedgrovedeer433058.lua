--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedgrovedeer433058.lua
	Script Purpose	:	Waypoint Path for ataintedgrovedeer433058.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:20:28 
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
	MovementLoopAddLocation(NPC, 132.17, -3.51, 160.16, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 140.67, -3.65, 175.67, 2, 0)
	MovementLoopAddLocation(NPC, 144.49, -3.31, 180.71, 2, 0)
	MovementLoopAddLocation(NPC, 148.11, -3.24, 183.91, 2, 0)
	MovementLoopAddLocation(NPC, 151.75, -3.3, 193.12, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 178.98, -3.8, 178.65, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 165.57, -3.2, 170.79, 2, 0)
	MovementLoopAddLocation(NPC, 150.07, -3.18, 162.94, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 169.51, -2.71, 191.21, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 138.69, -3.51, 180.56, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 170.98, -3.13, 168.02, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 149.71, -3.12, 141.42, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 136.18, -3.38, 157.21, 2, 0)
end


