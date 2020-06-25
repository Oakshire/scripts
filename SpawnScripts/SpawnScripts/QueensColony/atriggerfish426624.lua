--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish426624.lua
	Script Purpose	:	Waypoint Path for atriggerfish426624.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 09:26:50 
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
	MovementLoopAddLocation(NPC, -28.05, -12.06, -85.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -30.35, -11.54, -81.96, 2, 0)
	MovementLoopAddLocation(NPC, -32.19, -11.41, -79.51, 2, 0)
	MovementLoopAddLocation(NPC, -41.37, -11.57, -69.45, 2, 0)
	MovementLoopAddLocation(NPC, -45.46, -12.26, -64.41, 2, 0)
	MovementLoopAddLocation(NPC, -48.28, -12.26, -62.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -46.29, -10.52, -52.17, 2, 0)
	MovementLoopAddLocation(NPC, -45.13, -10.51, -34.03, 2, 0)
	MovementLoopAddLocation(NPC, -42.52, -11.14, -24.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -34.83, -10.41, -1.74, 2, 0)
	MovementLoopAddLocation(NPC, -30.7, -11.79, 16.03, 2, 0)
	MovementLoopAddLocation(NPC, -30.29, -12.53, 19.19, 2, 0)
	MovementLoopAddLocation(NPC, -31.24, -13.36, 23.19, 2, 0)
	MovementLoopAddLocation(NPC, -32.33, -13.45, 24.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -30.95, -13.67, 35.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -33.05, -13.52, 31.5, 2, 0)
	MovementLoopAddLocation(NPC, -37.77, -13.96, 23.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -42.54, -10.47, 12.41, 2, 0)
	MovementLoopAddLocation(NPC, -46.63, -10.19, 4.43, 2, 0)
	MovementLoopAddLocation(NPC, -50.34, -11.08, -2.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -48.54, -10.42, -4.88, 2, 0)
	MovementLoopAddLocation(NPC, -42.18, -10.36, -56.94, 2, 0)
	MovementLoopAddLocation(NPC, -39.08, -11.34, -70.87, 2, 0)
	MovementLoopAddLocation(NPC, -35.24, -11.95, -79.6, 2, math.random(10, 20))
end


