--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427563.lua
	Script Purpose	:	Waypoint Path for aneedlefang427563.lua
	Script Author	:	Rylec
	Script Date	:	11-03-2019 06:00:16 
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
	MovementLoopAddLocation(NPC, -81.46, -12.14, 172.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -89.42, -12.22, 181.76, 2, 0)
	MovementLoopAddLocation(NPC, -92.2, -12.80, 184.75, 2, 0)
	MovementLoopAddLocation(NPC, -96, -12.80, 185.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -91.95, -12.24, 188.55, 2, 0)
	MovementLoopAddLocation(NPC, -85.57, -12.04, 198.24, 2, 0)
	MovementLoopAddLocation(NPC, -81.61, -13, 203.54, 2, 0)
	MovementLoopAddLocation(NPC, -81.67, -13.45, 208.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -90.91, -11.96, 205.71, 2, 0)
	MovementLoopAddLocation(NPC, -105.96, -12.11, 205.8, 2, 0)
	MovementLoopAddLocation(NPC, -114.81, -12.44, 214.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -100.63, -13.14, 215.12, 2, 0)
	MovementLoopAddLocation(NPC, -96.98, -13.82, 212.75, 2, 0)
	MovementLoopAddLocation(NPC, -92.34, -13.72, 212.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -84.63, -12.65, 202.58, 2, 0)
	MovementLoopAddLocation(NPC, -66.28, -12.11, 187.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -81.17, -11.95, 191.17, 2, 0)
	MovementLoopAddLocation(NPC, -86.57, -11.81, 193.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -83.91, -11.88, 183.62, 2, 0)
end


