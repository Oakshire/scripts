--[[
	Script Name		:	landro.lua
	Script Purpose	:	Waypoint Path for landro.lua
	Script Author	:	Devn00b
	Script Date		:	04/12/2020 12:05:55 PM
	Script Notes	:	Locations collected from Live
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    GenericRaceCheckHail(NPC, Spawn)
end

function InRange(NPC,Spawn)
    GenericRaceCheckCallout(NPC, Spawn)
    end
    
function respawn(NPC)
		spawn(NPC)
	end
	
function waypoints(NPC)
	MovementLoopAddLocation(NPC, 463.48, -19.76, -346.26, 2, 0)
	MovementLoopAddLocation(NPC, 447.3, -20.33, -321.65, 2, 0)
	MovementLoopAddLocation(NPC, 432.43, -20.81, -271.1, 2, 0)
	MovementLoopAddLocation(NPC, 446.16, -20.63, -254.5, 2, 0)
	MovementLoopAddLocation(NPC, 441.37, -19.53, -204.77, 2, 0)
	MovementLoopAddLocation(NPC, 438.23, -17.1, -177.77, 2, 0)
	MovementLoopAddLocation(NPC, 425.36, -17.67, -155.68, 2, 0)
	MovementLoopAddLocation(NPC, 404.25, -23.69, -121.33, 2, 0)
	MovementLoopAddLocation(NPC, 394.91, -15.93, -91.15, 2, 0)
	MovementLoopAddLocation(NPC, 394.05, -15.73, -59.67, 2, 0)
	MovementLoopAddLocation(NPC, 388.43, -17.98, -22.83, 2, 0)
	MovementLoopAddLocation(NPC, 323.06, -21.43, -16.85, 2, 0)
	MovementLoopAddLocation(NPC, 300.13, -21.13, -48.51, 2, 0)
	MovementLoopAddLocation(NPC, 273.89, -21.12, -33.85, 2, 0)
	MovementLoopAddLocation(NPC, 276.56, -21.31, -2.55, 2, 0)
	MovementLoopAddLocation(NPC, 299.65, -21.34, 7.74, 2, 0)
	MovementLoopAddLocation(NPC, 312.69, -21.5, 24.28, 2, 0)
	MovementLoopAddLocation(NPC, 340.38, -21.2, 48.51, 2, 0)
	MovementLoopAddLocation(NPC, 357.57, -20.79, 87.39, 2, 0)
	MovementLoopAddLocation(NPC, 388.1, -21.22, 128.1, 2, 0)
	MovementLoopAddLocation(NPC, 374.22, -20.45, 147.95, 2, 0)
	MovementLoopAddLocation(NPC, 349.74, -20.06, 165.65, 2, 0)
	MovementLoopAddLocation(NPC, 340.66, -19.4, 169, 2, 0)
	MovementLoopAddLocation(NPC, 330.05, -18.62, 170.45, 2, 0)
	MovementLoopAddLocation(NPC, 322.42, -18.17, 169.6, 2, 0)
	MovementLoopAddLocation(NPC, 317.43, -17.97, 167.7, 2, 0)
	MovementLoopAddLocation(NPC, 310.82, -17.85, 163.01, 2, 0)
	MovementLoopAddLocation(NPC, 304.93, -17.75, 156.6, 2, 0)
	MovementLoopAddLocation(NPC, 301.88, -17, 149.87, 2, 0)
	MovementLoopAddLocation(NPC, 299.06, -15.83, 140.5, 2, 0)
	MovementLoopAddLocation(NPC, 297.14, -14.91, 131.87, 2, 0)
	MovementLoopAddLocation(NPC, 287.74, -13.48, 106.96, 2, 0)
	MovementLoopAddLocation(NPC, 297.14, -14.91, 131.87, 2, 0)
	MovementLoopAddLocation(NPC, 299.06, -15.83, 140.5, 2, 0)
	MovementLoopAddLocation(NPC, 301.88, -17, 149.87, 2, 0)
	MovementLoopAddLocation(NPC, 304.93, -17.75, 156.6, 2, 0)
	MovementLoopAddLocation(NPC, 310.82, -17.85, 163.01, 2, 0)
	MovementLoopAddLocation(NPC, 317.43, -17.97, 167.7, 2, 0)
	MovementLoopAddLocation(NPC, 322.42, -18.17, 169.6, 2, 0)
	MovementLoopAddLocation(NPC, 330.05, -18.62, 170.45, 2, 0)
	MovementLoopAddLocation(NPC, 340.66, -19.4, 169, 2, 0)
	MovementLoopAddLocation(NPC, 349.74, -20.06, 165.65, 2, 0)
	MovementLoopAddLocation(NPC, 374.22, -20.45, 147.95, 2, 0)
	MovementLoopAddLocation(NPC, 388.1, -21.22, 128.1, 2, 0)
	MovementLoopAddLocation(NPC, 357.57, -20.79, 87.39, 2, 0)
	MovementLoopAddLocation(NPC, 340.38, -21.2, 48.51, 2, 0)
	MovementLoopAddLocation(NPC, 312.69, -21.5, 24.28, 2, 0)
	MovementLoopAddLocation(NPC, 299.65, -21.34, 7.74, 2, 0)
	MovementLoopAddLocation(NPC, 276.56, -21.31, -2.55, 2, 0)
	MovementLoopAddLocation(NPC, 273.89, -21.12, -33.85, 2, 0)
	MovementLoopAddLocation(NPC, 300.13, -21.13, -48.51, 2, 0)
	MovementLoopAddLocation(NPC, 323.06, -21.43, -16.85, 2, 0)
	MovementLoopAddLocation(NPC, 388.43, -17.98, -22.83, 2, 0)
	MovementLoopAddLocation(NPC, 394.05, -15.73, -59.67, 2, 0)
	MovementLoopAddLocation(NPC, 394.91, -15.93, -91.15, 2, 0)
	MovementLoopAddLocation(NPC, 404.25, -23.69, -121.33, 2, 0)
	MovementLoopAddLocation(NPC, 425.36, -17.67, -155.68, 2, 0)
	MovementLoopAddLocation(NPC, 438.23, -17.1, -177.77, 2, 0)
	MovementLoopAddLocation(NPC, 441.37, -19.53, -204.77, 2, 0)
	MovementLoopAddLocation(NPC, 446.16, -20.63, -254.5, 2, 0)
	MovementLoopAddLocation(NPC, 432.43, -20.81, -271.1, 2, 0)
	MovementLoopAddLocation(NPC, 447.3, -20.33, -321.65, 2, 0)
	MovementLoopAddLocation(NPC, 463.48, -19.76, -346.26, 2, 0)
end


