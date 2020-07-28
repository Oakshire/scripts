--[[
        Script Name     :       SpawnScripts/QueensColony/aMorakmangler429689.lua
	Script Purpose	:	Waypoint Path for aMorakmangler429689.lua
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
	MovementLoopAddLocation(NPC, -1.48, 2, -188.63, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 2.82, 1.85, -206.48, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 1.47, 2.6, -178.85, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -0.57, 2.06, -187.79, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -0.19, 2.6, -183.08, 2, 0)
	MovementLoopAddLocation(NPC, -0.36, 2.6, -179.81, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -5.63, 2.62, -176.23, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 2.58, 1.87, -196.52, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 2.4, 2.03, -193.05, 2, 0)
	MovementLoopAddLocation(NPC, 2.94, 2.59, -179.33, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 4.86, 2.02, -189.92, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 11.33, 2.01, -206.44, 2, 0)
	MovementLoopAddLocation(NPC, 24.04, 1.95, -222.68, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 11.46, 2.01, -207.2, 2, 0)
	MovementLoopAddLocation(NPC, 6.89, 2.04, -193.52, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 4.25, 2.03, -191.23, 2, 0)
end


