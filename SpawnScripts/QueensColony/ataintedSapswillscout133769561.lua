--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillscout133769561.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillscout133769561.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:21:04 
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
	MovementLoopAddLocation(NPC, 124.21, -0.41, -209.72, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 147.82, -0.5, -211.83, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 140.3, -0.63, -214.74, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 135.94, -0.72, -215.59, 2, 0)
	MovementLoopAddLocation(NPC, 128.78, -0.48, -213.65, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 152.3, -0.83, -218.73, 2, 0)
	MovementLoopAddLocation(NPC, 156.03, -0.58, -220.68, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 146.54, -0.65, -214.85, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 142.83, -0.8, -216.27, 2, 0)
	MovementLoopAddLocation(NPC, 131.03, -0.76, -217.89, 2, 0)
	MovementLoopAddLocation(NPC, 123.75, -0.74, -220.12, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 138.3, -0.46, -208.7, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 135.55, -0.45, -210.55, 2, 0)
	MovementLoopAddLocation(NPC, 128.93, -0.73, -215.63, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 136.83, -0.75, -215.8, 2, math.random(14, 28))
end


