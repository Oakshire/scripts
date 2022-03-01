--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425466.lua
	Script Purpose	:	Waypoint Path for ashoalglider425466.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:17:15 
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
	MovementLoopAddLocation(NPC, -42.52, -11.28, -41.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -43.75, -11.2, -28.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -33.2, -11.28, -24.05, 2, 0)
	MovementLoopAddLocation(NPC, -27.14, -11.54, -15.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.03, -11.48, -0.56, 2, 0)
	MovementLoopAddLocation(NPC, -25.94, -12.38, 10.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24.76, -11.27, 1.69, 2, 0)
	MovementLoopAddLocation(NPC, -22.68, -11.11, -15.84, 2, 0)
	MovementLoopAddLocation(NPC, -18.01, -11.41, -25.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -20.08, -11.75, -28.31, 2, 0)
	MovementLoopAddLocation(NPC, -22.74, -11.82, -30.82, 2, 0)
	MovementLoopAddLocation(NPC, -30.3, -12.28, -34.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -32.6, -12.13, -37.12, 2, 0)
	MovementLoopAddLocation(NPC, -37.74, -11.43, -40.9, 2, math.random(10, 20))
end


