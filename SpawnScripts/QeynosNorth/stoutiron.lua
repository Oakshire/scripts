--[[
	Script Name		:	stoutiron.lua
	Script Purpose	:	Waypoint Path for stoutiron.lua
	Script Author	:	Devn00b
	Script Date		:	04/15/2020 04:56:57 PM
	Script Notes	:	Locations collected from Live
--]]
dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")
dofile("SpawnScripts/Generic/ExpelNonCitizen.lua")

function spawn(NPC)
	waypoints(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function hailed(NPC, Spawn)
   if GetFactionAmount(Spawn,11)<0 then
        else
    FaceTarget(NPC, Spawn)
    GenericGuardHail(NPC,Spawn)
    end
end

function InRange(NPC, Spawn)
    NonCitizen(NPC,Spawn)    
end

function respawn(NPC)
spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 366.02, -18.33, -272.16, 2, 0)
	MovementLoopAddLocation(NPC, 431.6, -20.85, -268.87, 2, 0)
	MovementLoopAddLocation(NPC, 398.61, -17.76, -272.02, 2, 0)
	MovementLoopAddLocation(NPC, 382.22, -17.56, -270.8, 2, 0)
	MovementLoopAddLocation(NPC, 338.65, -18.13, -233.43, 2, 0)
	MovementLoopAddLocation(NPC, 332.04, -22.87, -216.95, 2, 0)
	MovementLoopAddLocation(NPC, 321.12, -22.38, -185.92, 2, 0)
	MovementLoopAddLocation(NPC, 295.5, -20.9, -160.61, 2, 0)
	MovementLoopAddLocation(NPC, 284.59, -18.75, -142.28, 2, 0)
	MovementLoopAddLocation(NPC, 301.23, -19.99, -112.29, 2, 0)
	MovementLoopAddLocation(NPC, 269, -18.62, -94.27, 2, 0)
	MovementLoopAddLocation(NPC, 258.67, -20.79, -52.15, 2, 0)
	MovementLoopAddLocation(NPC, 265.53, -21.3, -27.72, 2, 0)
	MovementLoopAddLocation(NPC, 301.16, -21.23, -44.9, 2, 0)
	MovementLoopAddLocation(NPC, 321.33, -21.45, -22.43, 2, 0)
	MovementLoopAddLocation(NPC, 305.29, -21.12, 1.72, 2, 0)
	MovementLoopAddLocation(NPC, 279.23, -21.32, -4.67, 2, 0)
	MovementLoopAddLocation(NPC, 256.8, -21.38, -20.68, 2, 0)
	MovementLoopAddLocation(NPC, 250.76, -20.66, -4.67, 2, 0)
	MovementLoopAddLocation(NPC, 252.27, -19.04, 48.63, 2, 0)
	MovementLoopAddLocation(NPC, 277.05, -13.87, 72.71, 2, 0)
	MovementLoopAddLocation(NPC, 287.87, -12.89, 91.72, 2, 0)
	MovementLoopAddLocation(NPC, 293.28, -13.81, 117.82, 2, 0)
	MovementLoopAddLocation(NPC, 302.36, -17.12, 150.81, 2, 0)
	MovementLoopAddLocation(NPC, 316.94, -17.98, 166.39, 2, 0)
	MovementLoopAddLocation(NPC, 330.9, -18.7, 170.2, 2, 0)
	MovementLoopAddLocation(NPC, 362.75, -20.06, 156.34, 2, 0)
	MovementLoopAddLocation(NPC, 381.27, -20.79, 137.78, 2, 0)
	MovementLoopAddLocation(NPC, 408.42, -14.21, 74.82, 2, 0)
	MovementLoopAddLocation(NPC, 413.13, -13.83, 58.33, 2, 0)
	MovementLoopAddLocation(NPC, 396.74, -15.13, 21.03, 2, 0)
	MovementLoopAddLocation(NPC, 392.1, -17.01, -32.56, 2, 0)
	MovementLoopAddLocation(NPC, 397.5, -16.13, -89.47, 2, 0)
	MovementLoopAddLocation(NPC, 399.73, -23.53, -114.06, 2, 0)
	MovementLoopAddLocation(NPC, 425.15, -17.79, -154.07, 2, 0)
	MovementLoopAddLocation(NPC, 438.5, -17.1, -178.01, 2, 0)
	MovementLoopAddLocation(NPC, 438.72, -18.54, -197.59, 2, 0)
	MovementLoopAddLocation(NPC, 439.03, -20.98, -238.39, 2, 0)
	MovementLoopAddLocation(NPC, 436.78, -20.78, -280.35, 2, 0)
	MovementLoopAddLocation(NPC, 451.35, -20.24, -307.86, 2, 0)
	MovementLoopAddLocation(NPC, 436.78, -20.78, -280.35, 2, 0)
	MovementLoopAddLocation(NPC, 439.03, -20.98, -238.39, 2, 0)
	MovementLoopAddLocation(NPC, 438.72, -18.54, -197.59, 2, 0)
	MovementLoopAddLocation(NPC, 438.5, -17.1, -178.01, 2, 0)
	MovementLoopAddLocation(NPC, 425.15, -17.79, -154.07, 2, 0)
	MovementLoopAddLocation(NPC, 399.73, -23.53, -114.06, 2, 0)
	MovementLoopAddLocation(NPC, 397.5, -16.13, -89.47, 2, 0)
	MovementLoopAddLocation(NPC, 392.1, -17.01, -32.56, 2, 0)
	MovementLoopAddLocation(NPC, 396.74, -15.13, 21.03, 2, 0)
	MovementLoopAddLocation(NPC, 413.13, -13.83, 58.33, 2, 0)
	MovementLoopAddLocation(NPC, 408.42, -14.21, 74.82, 2, 0)
	MovementLoopAddLocation(NPC, 381.27, -20.79, 137.78, 2, 0)
	MovementLoopAddLocation(NPC, 362.75, -20.06, 156.34, 2, 0)
	MovementLoopAddLocation(NPC, 330.9, -18.7, 170.2, 2, 0)
	MovementLoopAddLocation(NPC, 316.94, -17.98, 166.39, 2, 0)
	MovementLoopAddLocation(NPC, 302.36, -17.12, 150.81, 2, 0)
	MovementLoopAddLocation(NPC, 293.28, -13.81, 117.82, 2, 0)
	MovementLoopAddLocation(NPC, 287.87, -12.89, 91.72, 2, 0)
	MovementLoopAddLocation(NPC, 277.05, -13.87, 72.71, 2, 0)
	MovementLoopAddLocation(NPC, 252.27, -19.04, 48.63, 2, 0)
	MovementLoopAddLocation(NPC, 250.76, -20.66, -4.67, 2, 0)
	MovementLoopAddLocation(NPC, 256.8, -21.38, -20.68, 2, 0)
	MovementLoopAddLocation(NPC, 279.23, -21.32, -4.67, 2, 0)
	MovementLoopAddLocation(NPC, 305.29, -21.12, 1.72, 2, 0)
	MovementLoopAddLocation(NPC, 321.33, -21.45, -22.43, 2, 0)
	MovementLoopAddLocation(NPC, 301.16, -21.23, -44.9, 2, 0)
	MovementLoopAddLocation(NPC, 265.53, -21.3, -27.72, 2, 0)
	MovementLoopAddLocation(NPC, 258.67, -20.79, -52.15, 2, 0)
	MovementLoopAddLocation(NPC, 269, -18.62, -94.27, 2, 0)
	MovementLoopAddLocation(NPC, 301.23, -19.99, -112.29, 2, 0)
	MovementLoopAddLocation(NPC, 284.59, -18.75, -142.28, 2, 0)
	MovementLoopAddLocation(NPC, 295.5, -20.9, -160.61, 2, 0)
	MovementLoopAddLocation(NPC, 321.12, -22.38, -185.92, 2, 0)
	MovementLoopAddLocation(NPC, 332.04, -22.87, -216.95, 2, 0)
	MovementLoopAddLocation(NPC, 338.65, -18.13, -233.43, 2, 0)
	MovementLoopAddLocation(NPC, 382.22, -17.56, -270.8, 2, 0)
	MovementLoopAddLocation(NPC, 398.61, -17.76, -272.02, 2, 0)
	MovementLoopAddLocation(NPC, 431.6, -20.85, -268.87, 2, 0)
	MovementLoopAddLocation(NPC, 366.02, -18.33, -272.16, 2, 0)
end


