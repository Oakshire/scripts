--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish426130.lua
	Script Purpose	:	Waypoint Path for atriggerfish426130.lua
	Script Author	:	Rylec
	Script Date	:	11-03-2019 05:46:23 
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
	MovementLoopAddLocation(NPC, -124.37, -13.67, 218.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -91.91, -13.43, 224.18, 2, 0)
	MovementLoopAddLocation(NPC, -89.12, -12.38, 224.99, 2, 0)
	MovementLoopAddLocation(NPC, -86.14, -12.48, 230.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -93.01, -13.19, 224.81, 2, 0)
	MovementLoopAddLocation(NPC, -101.77, -13.67, 201.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -102.03, -13.65, 201.08, 2, 0)
	MovementLoopAddLocation(NPC, -104.33, -12.65, 200.06, 2, 0)
	MovementLoopAddLocation(NPC, -112.68, -12.48, 200.03, 2, 0)
	MovementLoopAddLocation(NPC, -114.47, -12.4, 208.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -113.34, -12.46, 215.79, 2, 0)
	MovementLoopAddLocation(NPC, -99.16, -12.52, 215.99, 2, 0)
	MovementLoopAddLocation(NPC, -83.96, -12.39, 223.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -82.64, -12.52, 219.85, 2, 0)
	MovementLoopAddLocation(NPC, -81.51, -11.71, 210.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -81.95, -11.89, 208.09, 2, 0)
	MovementLoopAddLocation(NPC, -84.25, -11.82, 203.7, 2, 0)
	MovementLoopAddLocation(NPC, -95.66, -12.41, 191.39, 2, 0)
	MovementLoopAddLocation(NPC, -99.24, -12.91, 185.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -100.13, -12.58, 194.81, 2, 0)
	MovementLoopAddLocation(NPC, -104.42, -13.63, 208.35, 2, math.random(10, 20))
end


