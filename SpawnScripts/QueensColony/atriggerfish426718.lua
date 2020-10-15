--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish426718.lua
	Script Purpose	:	Waypoint Path for atriggerfish426718.lua
	Script Author	:	Rylec
	Script Date	:	12-23-2019 10:11:54 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
        SpawnSet(NPC, "difficulty", "2")  
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -5.34, -14.69, 2.44, 2, 0)
	MovementLoopAddLocation(NPC, -4.51, -14.46, 2.21, 2, 0)
	MovementLoopAddLocation(NPC, -2.16, -14.53, 3.07, 2, 0)
	MovementLoopAddLocation(NPC, -2.87, -13.98, 3.74, 2, 0)
	MovementLoopAddLocation(NPC, -2.02, -14.47, 5.98, 2, 0)
	MovementLoopAddLocation(NPC, -1.87, -14.89, 8.09, 2, 0)
	MovementLoopAddLocation(NPC, -3.06, -13.83, 8.33, 2, 0)
	MovementLoopAddLocation(NPC, -4.4, -14.59, 9.63, 2, 0)
	MovementLoopAddLocation(NPC, -4.93, -14.09, 9.8, 2, 0)
	MovementLoopAddLocation(NPC, -6.28, -14.41, 9.9, 2, 0)
	MovementLoopAddLocation(NPC, -9.33, -14.56, 13.68, 2, 0)
	MovementLoopAddLocation(NPC, -8.47, -14.25, 14.79, 4, 0)
	MovementLoopAddLocation(NPC, -10.56, -14.81, 15.24, 4, 0)
	MovementLoopAddLocation(NPC, -10.63, -14.51, 19.09, 2, 0)
	MovementLoopAddLocation(NPC, -8.72, -14.58, 21.28, 2, 0)
	MovementLoopAddLocation(NPC, -7.18, -12.99, 21.6, 2, 0)
	MovementLoopAddLocation(NPC, -6.11, -13.77, 22.76, 2, 0)
	MovementLoopAddLocation(NPC, -3.92, -13.62, 22.84, 2, 0)
	MovementLoopAddLocation(NPC, -1.18, -13.99, 22.55, 2, 0)
	MovementLoopAddLocation(NPC, -0.36, -13.16, 21.94, 2, 0)
	MovementLoopAddLocation(NPC, 2.68, -14.27, 20.06, 2, 0)
	MovementLoopAddLocation(NPC, 5.92, -14.73, 16.31, 2, 0)
	MovementLoopAddLocation(NPC, 8.68, -13.84, 11.81, 4, 0)
	MovementLoopAddLocation(NPC, 9.64, -14.74, 8.44, 4, 0)
	MovementLoopAddLocation(NPC, 10.43, -15.69, 6.3, 2, 0)
	MovementLoopAddLocation(NPC, 14.07, -15.2, 2.67, 2, 0)
	MovementLoopAddLocation(NPC, 14.3, -13.88, 1.87, 2, 0)
	MovementLoopAddLocation(NPC, 14.77, -14.78, 0.36, 2, 0)
	MovementLoopAddLocation(NPC, 16.41, -13.09, -0.27, 4, 0)
	MovementLoopAddLocation(NPC, 15.72, -13.81, -1.97, 4, 0)
	MovementLoopAddLocation(NPC, 17.1, -14.34, -3.82, 2, 0)
	MovementLoopAddLocation(NPC, 18.14, -13.13, -4, 2, 0)
	MovementLoopAddLocation(NPC, 15.88, -13.34, -7.24, 2, 0)
	MovementLoopAddLocation(NPC, 12.23, -12.42, -8.04, 4, 0)
	MovementLoopAddLocation(NPC, 11.94, -13.22, -9.2, 4, 0)
	MovementLoopAddLocation(NPC, 9.08, -13.6, -9.26, 2, 0)
	MovementLoopAddLocation(NPC, 7.84, -13.16, -10.49, 2, 0)
	MovementLoopAddLocation(NPC, 4.76, -13.96, -8.9, 2, 0)
	MovementLoopAddLocation(NPC, 3.77, -14.5, -9.2, 2, 0)
	MovementLoopAddLocation(NPC, 2.66, -14.6, -9.28, 2, 0)
	MovementLoopAddLocation(NPC, 1.82, -14.12, -7.2, 2, 0)
	MovementLoopAddLocation(NPC, 0.88, -14.37, -5.86, 2, 0)
	MovementLoopAddLocation(NPC, -1.13, -14.4, -5.77, 2, 0)
	MovementLoopAddLocation(NPC, -2.92, -14.47, -7.7, 2, 0)
	MovementLoopAddLocation(NPC, -4.26, -14.24, -10.49, 2, 0)
	MovementLoopAddLocation(NPC, -3, -12.95, -10.45, 4, 0)
	MovementLoopAddLocation(NPC, -6.64, -13.74, -11.68, 4, 0)
	MovementLoopAddLocation(NPC, -10.06, -13.24, -12.23, 2, 0)
	MovementLoopAddLocation(NPC, -9.9, -12.28, -11.15, 2, 0)
	MovementLoopAddLocation(NPC, -12.62, -12.99, -9.03, 2, 0)
	MovementLoopAddLocation(NPC, -12.02, -11.72, -10.72, 2, 0)
	MovementLoopAddLocation(NPC, -12.89, -12.8, -5.09, 2, 0)
	MovementLoopAddLocation(NPC, -10.72, -13.32, 0.27, 2, 0)
	MovementLoopAddLocation(NPC, -9.55, -13.24, 2.47, 2, 0)
	MovementLoopAddLocation(NPC, -8.81, -13.98, 2.89, 2, 0)
	MovementLoopAddLocation(NPC, -7.63, -12.67, 3.21, 2, 0)
	MovementLoopAddLocation(NPC, -5.74, -14.21, 2.72, 2, 0)
end

