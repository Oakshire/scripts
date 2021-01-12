--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer133769425.lua
	Script Purpose	:	Waypoint Path for amorakdevourer133769425.lua
	Script Author	:	Rylec
	Script Date	:	06-01-2020 10:10:58 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
        SpawnSet(NPC, "level", "3")
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 221.91, -1.16, -68.46, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 219.03, -0.98, -69.77, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 217.89, -1.24, -68.19, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 214.91, -0.77, -81.2, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 222.07, -2.14, -46.27, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 222.06, -0.88, -49.9, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 219.21, -1.47, -62.53, 2, math.random(14, 25))
end

