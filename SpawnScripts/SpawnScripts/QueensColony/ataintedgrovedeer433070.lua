--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedgrovedeer433070.lua
	Script Purpose	:	Waypoint Path for ataintedgrovedeer433070.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:20:37 
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
	MovementLoopAddLocation(NPC, 147.98, -3.63, 193.4, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 154.21, -3.13, 197.44, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 155.25, -3.03, 148.58, 2, 0)
	MovementLoopAddLocation(NPC, 157.19, -3.05, 139.37, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 158.5, -3.1, 148.86, 2, 0)
	MovementLoopAddLocation(NPC, 166.89, -3.22, 170.75, 2, 0)
	MovementLoopAddLocation(NPC, 170.26, -2.85, 188.11, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 158.79, -3.4, 162.72, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 157.27, -3.19, 166.52, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 154.18, -2.98, 189.33, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 158.96, -4.15, 209.59, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 159.92, -4.08, 208.15, 2, 0)
	MovementLoopAddLocation(NPC, 166.73, -3.54, 203.6, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 154.04, -3, 168.5, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 164.79, -3.2, 170.59, 2, 0)
	MovementLoopAddLocation(NPC, 174.37, -3.63, 174.68, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 178.18, -3.62, 193.26, 2, math.random(10, 24))
end


