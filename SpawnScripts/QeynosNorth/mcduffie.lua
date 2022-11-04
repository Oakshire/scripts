--[[
	Script Name		:	mcduffie.lua
	Script Purpose	:	Waypoint Path for mcduffie.lua
	Script Author	:	Devn00b
	Script Date		:	04/11/2020 09:50:04 PM
	Script Notes	:	Locations collected from Live
--]]

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")
dofile("SpawnScripts/Generic/ExpelNonCitizen.lua")

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
    waypoints(NPC)
end

function InRange(NPC, Spawn)
    NonCitizen(NPC,Spawn)    
end


function respawn(NPC)
spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 253.33, -20.62, -2.19, 2, 0)
	MovementLoopAddLocation(NPC, 250.77, -19.51, 39.19, 2, 0)
	MovementLoopAddLocation(NPC, 260.85, -17.76, 57.91, 2, 0)
	MovementLoopAddLocation(NPC, 287.28, -12.76, 81.92, 2, 0)
	MovementLoopAddLocation(NPC, 289.58, -13.18, 103.87, 2, 0)
	MovementLoopAddLocation(NPC, 293.33, -14.07, 120.93, 2, 0)
	MovementLoopAddLocation(NPC, 300.81, -16.32, 144.09, 2, 0)
	MovementLoopAddLocation(NPC, 309.1, -17.86, 157.64, 2, 0)
	MovementLoopAddLocation(NPC, 318.85, -18.07, 165.16, 2, 0)
	MovementLoopAddLocation(NPC, 331.02, -18.8, 168.64, 2, 0)
	MovementLoopAddLocation(NPC, 341.48, -19.59, 167.2, 2, 0)
	MovementLoopAddLocation(NPC, 352.36, -20.04, 163.58, 2, 0)
	MovementLoopAddLocation(NPC, 363.03, -19.99, 156.96, 2, 0)
	MovementLoopAddLocation(NPC, 372.58, -20.51, 147.33, 2, 0)
	MovementLoopAddLocation(NPC, 379.31, -20.72, 135.98, 2, 0)
	MovementLoopAddLocation(NPC, 391.28, -19.75, 110.36, 2, 0)
	MovementLoopAddLocation(NPC, 407.96, -14.17, 74.33, 2, 0)
	MovementLoopAddLocation(NPC, 410.51, -13.91, 67.96, 2, 0)
	MovementLoopAddLocation(NPC, 411.36, -13.81, 60.04, 2, 0)
	MovementLoopAddLocation(NPC, 400.94, -14.26, 37.6, 2, 0)
	MovementLoopAddLocation(NPC, 397.27, -15.01, 23.14, 2, 0)
	MovementLoopAddLocation(NPC, 392.54, -17.07, -6.66, 2, 0)
	MovementLoopAddLocation(NPC, 392.07, -17.5, -15.97, 2, 0)
	MovementLoopAddLocation(NPC, 385.24, -18.51, -16.73, 2, 0)
	MovementLoopAddLocation(NPC, 377.06, -19.49, -17.35, 2, 0)
	MovementLoopAddLocation(NPC, 367.33, -20.53, -17.55, 2, 0)
	MovementLoopAddLocation(NPC, 354.98, -21.49, -14.98, 2, 0)
	MovementLoopAddLocation(NPC, 357.11, -20.73, -3.39, 2, 0)
	MovementLoopAddLocation(NPC, 369.75, -20.82, 15.07, 2, 0)
	MovementLoopAddLocation(NPC, 376.81, -20.78, 24.26, 2, 0)
	MovementLoopAddLocation(NPC, 365.74, -20.84, 13.26, 2, 0)
	MovementLoopAddLocation(NPC, 355.24, -20.93, 2.89, 2, 0)
	MovementLoopAddLocation(NPC, 330.75, -21.5, -18.34, 2, 0)
	MovementLoopAddLocation(NPC, 355.24, -20.93, 2.89, 2, 0)
	MovementLoopAddLocation(NPC, 365.74, -20.84, 13.26, 2, 0)
	MovementLoopAddLocation(NPC, 376.81, -20.78, 24.26, 2, 0)
	MovementLoopAddLocation(NPC, 369.75, -20.82, 15.07, 2, 0)
	MovementLoopAddLocation(NPC, 357.11, -20.73, -3.39, 2, 0)
	MovementLoopAddLocation(NPC, 354.98, -21.49, -14.98, 2, 0)
	MovementLoopAddLocation(NPC, 367.33, -20.53, -17.55, 2, 0)
	MovementLoopAddLocation(NPC, 377.06, -19.49, -17.35, 2, 0)
	MovementLoopAddLocation(NPC, 385.24, -18.51, -16.73, 2, 0)
	MovementLoopAddLocation(NPC, 392.07, -17.5, -15.97, 2, 0)
	MovementLoopAddLocation(NPC, 392.54, -17.07, -6.66, 2, 0)
	MovementLoopAddLocation(NPC, 397.27, -15.01, 23.14, 2, 0)
	MovementLoopAddLocation(NPC, 400.94, -14.26, 37.6, 2, 0)
	MovementLoopAddLocation(NPC, 411.36, -13.81, 60.04, 2, 0)
	MovementLoopAddLocation(NPC, 410.51, -13.91, 67.96, 2, 0)
	MovementLoopAddLocation(NPC, 407.96, -14.17, 74.33, 2, 0)
	MovementLoopAddLocation(NPC, 391.28, -19.75, 110.36, 2, 0)
	MovementLoopAddLocation(NPC, 379.31, -20.72, 135.98, 2, 0)
	MovementLoopAddLocation(NPC, 372.58, -20.51, 147.33, 2, 0)
	MovementLoopAddLocation(NPC, 363.03, -19.99, 156.96, 2, 0)
	MovementLoopAddLocation(NPC, 352.36, -20.04, 163.58, 2, 0)
	MovementLoopAddLocation(NPC, 341.48, -19.59, 167.2, 2, 0)
	MovementLoopAddLocation(NPC, 331.02, -18.8, 168.64, 2, 0)
	MovementLoopAddLocation(NPC, 318.85, -18.07, 165.16, 2, 0)
	MovementLoopAddLocation(NPC, 309.1, -17.86, 157.64, 2, 0)
	MovementLoopAddLocation(NPC, 300.81, -16.32, 144.09, 2, 0)
	MovementLoopAddLocation(NPC, 293.33, -14.07, 120.93, 2, 0)
	MovementLoopAddLocation(NPC, 289.58, -13.18, 103.87, 2, 0)
	MovementLoopAddLocation(NPC, 287.28, -12.76, 81.92, 2, 0)
	MovementLoopAddLocation(NPC, 260.85, -17.76, 57.91, 2, 0)
	MovementLoopAddLocation(NPC, 250.77, -19.51, 39.19, 2, 0)
	MovementLoopAddLocation(NPC, 253.33, -20.62, -2.19, 2, 0)
end


