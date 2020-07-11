--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillscout133769582.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillscout133769582.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:22:38 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 107.04, -0.36, -168.38, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 82.17, -0.26, -187.8, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 87.34, -0.47, -181.75, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 72.41, -2.58, -160, 2, 0)
	MovementLoopAddLocation(NPC, 71.54, -2.55, -155.71, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 70.51, -2.57, -161.39, 2, 0)
	MovementLoopAddLocation(NPC, 90.64, -0.48, -187.75, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 98.44, -1.21, -155.53, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 88.77, -0.12, -163.04, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 91.78, -0.3, -164.58, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 109.06, -0.36, -167.81, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 102.55, -0.76, -163.1, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 70.32, -2.26, -155.43, 2, math.random(14, 28))
end


