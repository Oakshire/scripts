--[[
	Script Name		:	jaszmine.lua
	Script Purpose	:	Waypoint Path for jaszmine.lua
	Script Author	:	Devn00b
	Script Date		:	04/12/2020 12:18:02 PM
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
	MovementLoopAddLocation(NPC, 299.87, -13.79, 118.93, 2, 15)
	MovementLoopAddLocation(NPC, 289.48, -12.89, 95.9, 2, 5)
	MovementLoopAddLocation(NPC, 282.87, -13.12, 82.6, 2, 0)
	MovementLoopAddLocation(NPC, 268.17, -15.63, 66.99, 2, 0)
	MovementLoopAddLocation(NPC, 256.02, -18.56, 54.27, 2, 0)
	MovementLoopAddLocation(NPC, 254.21, -19.58, 39.57, 2, 0)
	MovementLoopAddLocation(NPC, 254.61, -21.25, -14.06, 2, 0)
	MovementLoopAddLocation(NPC, 265.01, -21.41, -15.09, 2, 0)
	MovementLoopAddLocation(NPC, 271.77, -21.24, -4.51, 2, 0)
	MovementLoopAddLocation(NPC, 299.08, -21.24, 4.26, 2, 0)
	MovementLoopAddLocation(NPC, 316.3, -20.97, -18.62, 2, 0)
	MovementLoopAddLocation(NPC, 318.67, -21.18, -22.28, 2, 0)
	MovementLoopAddLocation(NPC, 302.65, -21.29, -44.12, 2, 0)
	MovementLoopAddLocation(NPC, 264.46, -20.98, -35.54, 2, 0)
	MovementLoopAddLocation(NPC, 261.99, -20.94, -45.33, 2, 0)
	MovementLoopAddLocation(NPC, 261.01, -20.98, -51.08, 2, 0)
	MovementLoopAddLocation(NPC, 269.13, -18.6, -93.49, 2, 0)
	MovementLoopAddLocation(NPC, 293.26, -18.94, -109.13, 2, 0)
	MovementLoopAddLocation(NPC, 293.2, -18.98, -122.05, 2, 0)
	MovementLoopAddLocation(NPC, 283.85, -18.75, -140.97, 2, 0)
	MovementLoopAddLocation(NPC, 292.16, -19.86, -155.63, 2, 0)
	MovementLoopAddLocation(NPC, 322.61, -22.43, -188.18, 2, 0)
	MovementLoopAddLocation(NPC, 335.18, -18.33, -232.84, 2, 0)
	MovementLoopAddLocation(NPC, 378.28, -17.58, -270.92, 2, 0)
	MovementLoopAddLocation(NPC, 421.57, -19.89, -268.02, 2, 0)
	MovementLoopAddLocation(NPC, 436.44, -20.72, -282.29, 2, 0)
	MovementLoopAddLocation(NPC, 451.57, -20.23, -307.34, 2, 0)
	MovementLoopAddLocation(NPC, 451.57, -20.23, -307.34, 2, 11,"EcologyEmote")
	MovementLoopAddLocation(NPC, 451.57, -20.23, -307.34, 2, 0)
	MovementLoopAddLocation(NPC, 436.44, -20.72, -282.29, 2, 0)
	MovementLoopAddLocation(NPC, 421.57, -19.89, -268.02, 2, 0)
	MovementLoopAddLocation(NPC, 378.28, -17.58, -270.92, 2, 0)
	MovementLoopAddLocation(NPC, 335.18, -18.33, -232.84, 2, 0)
	MovementLoopAddLocation(NPC, 322.61, -22.43, -188.18, 2, 0)
	MovementLoopAddLocation(NPC, 292.16, -19.86, -155.63, 2, 0)
	MovementLoopAddLocation(NPC, 283.85, -18.75, -140.97, 2, 0)
	MovementLoopAddLocation(NPC, 293.2, -18.98, -122.05, 2, 0)
	MovementLoopAddLocation(NPC, 293.26, -18.94, -109.13, 2, 0)
	MovementLoopAddLocation(NPC, 269.13, -18.6, -93.49, 2, 0)
	MovementLoopAddLocation(NPC, 261.01, -20.98, -51.08, 2, 0)
	MovementLoopAddLocation(NPC, 261.99, -20.94, -45.33, 2, 0)
	MovementLoopAddLocation(NPC, 264.46, -20.98, -35.54, 2, 0)
	MovementLoopAddLocation(NPC, 302.65, -21.29, -44.12, 2, 0)
	MovementLoopAddLocation(NPC, 318.67, -21.18, -22.28, 2, 0)
	MovementLoopAddLocation(NPC, 316.3, -20.97, -18.62, 2, 0)
	MovementLoopAddLocation(NPC, 299.08, -21.24, 4.26, 2, 0)
	MovementLoopAddLocation(NPC, 271.77, -21.24, -4.51, 2, 0)
	MovementLoopAddLocation(NPC, 265.01, -21.41, -15.09, 2, 0)
	MovementLoopAddLocation(NPC, 254.61, -21.25, -14.06, 2, 0)
	MovementLoopAddLocation(NPC, 254.21, -19.58, 39.57, 2, 0)
	MovementLoopAddLocation(NPC, 256.02, -18.56, 54.27, 2, 0)
	MovementLoopAddLocation(NPC, 268.17, -15.63, 66.99, 2, 0)
	MovementLoopAddLocation(NPC, 282.87, -13.12, 82.6, 2, 0)
	MovementLoopAddLocation(NPC, 289.48, -12.89, 95.9, 2, 0)
	MovementLoopAddLocation(NPC, 299.87, -13.79, 118.93, 2, 0)
end


