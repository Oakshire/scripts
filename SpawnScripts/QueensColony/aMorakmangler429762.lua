--[[
        Script Name     :       SpawnScripts/QueensColony/aMorakmangler429762.lua
	Script Purpose	:	Waypoint Path for aMorakmangler429762.lua
	Script Author	:	Rylec
	Script Date	:	07-28-2020 10:33:33 
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
	MovementLoopAddLocation(NPC, -82.45, 1.86, -206.49, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -86.74, 1.78, -208.57, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -79.05, 1.84, -190.5, 2, 0)
	MovementLoopAddLocation(NPC, -71.71, 2.11, -182.73, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -70.76, 2.1, -179.41, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -71.04, 2.3, -188.3, 2, 0)
	MovementLoopAddLocation(NPC, -65.38, 1.3, -197.94, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -74.22, 2.32, -208.62, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -82.12, 1.65, -180.28, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -81.72, 1.85, -191.64, 2, 0)
	MovementLoopAddLocation(NPC, -80.18, 2.06, -200.3, 2, 0)
	MovementLoopAddLocation(NPC, -81.17, 1.95, -207.69, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -78.96, 1.84, -191.23, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -71.71, 2.32, -199.09, 2, math.random(14, 25))
end

