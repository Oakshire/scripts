--[[
	Script Name		:	quillfingers.lua
	Script Purpose	:	Waypoint Path for quillfingers.lua
	Script Author	:	Devn00b
	Script Date		:	04/11/2020 06:17:43 PM
	Script Notes	:	Locations collected from Live
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
GenericEcologyHail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
    GenericEcologyCallout(NPC, Spawn, faction)
    end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 451.46, -11.41, 116.82, 2, 0)
	MovementLoopAddLocation(NPC, 470.39, -11.52, 134.93, 2, 0)
	MovementLoopAddLocation(NPC, 489.07, -11.4, 142.29, 2, 0)
	MovementLoopAddLocation(NPC, 525.11, -10.46, 149.37, 2, 0)
	MovementLoopAddLocation(NPC, 545.9, -10.56, 152.61, 2, 0)
	MovementLoopAddLocation(NPC, 605.81, -12.12, 146.65, 2, 0)
	MovementLoopAddLocation(NPC, 609.47, -11.57, 158.08, 2, 0)
	MovementLoopAddLocation(NPC, 625.38, -12.36, 158.09, 2, 0)
	MovementLoopAddLocation(NPC, 625.59, -16.63, 195.33, 2, 0)
	MovementLoopAddLocation(NPC, 678.57, -19.45, 182.33, 2, 0)
	MovementLoopAddLocation(NPC, 686.49, -19.57, 218.19, 2, 0)
	MovementLoopAddLocation(NPC, 622.04, -18.61, 233.99, 2, 0)
	MovementLoopAddLocation(NPC, 578.55, -17.93, 241.46, 2, 0)
	MovementLoopAddLocation(NPC, 561.94, -17.73, 242.56, 2, 0)
	MovementLoopAddLocation(NPC, 533.14, -18.33, 242.15, 2, 0)
	MovementLoopAddLocation(NPC, 497.26, -19.87, 240.62, 2, 0)
	MovementLoopAddLocation(NPC, 465.94, -21.88, 234.24, 2, 0)
	MovementLoopAddLocation(NPC, 459.18, -22.03, 232.23, 2, 0)
	MovementLoopAddLocation(NPC, 479.65, -19.85, 180.64, 2, 0)
	MovementLoopAddLocation(NPC, 490.42, -12.8, 150.23, 2, 0)
	MovementLoopAddLocation(NPC, 480.65, -11.77, 141.88, 2, 0)
	MovementLoopAddLocation(NPC, 450.19, -11.44, 116.21, 2, 0)
	MovementLoopAddLocation(NPC, 480.65, -11.77, 141.88, 2, 0)
	MovementLoopAddLocation(NPC, 490.42, -12.8, 150.23, 2, 0)
	MovementLoopAddLocation(NPC, 479.65, -19.85, 180.64, 2, 0)
	MovementLoopAddLocation(NPC, 459.18, -22.03, 232.23, 2, 0)
	MovementLoopAddLocation(NPC, 465.94, -21.88, 234.24, 2, 0)
	MovementLoopAddLocation(NPC, 497.26, -19.87, 240.62, 2, 0)
	MovementLoopAddLocation(NPC, 533.14, -18.33, 242.15, 2, 0)
	MovementLoopAddLocation(NPC, 561.94, -17.73, 242.56, 2, 0)
	MovementLoopAddLocation(NPC, 578.55, -17.93, 241.46, 2, 0)
	MovementLoopAddLocation(NPC, 622.04, -18.61, 233.99, 2, 0)
	MovementLoopAddLocation(NPC, 686.49, -19.57, 218.19, 2, 0)
	MovementLoopAddLocation(NPC, 678.57, -19.45, 182.33, 2, 0)
	MovementLoopAddLocation(NPC, 625.59, -16.63, 195.33, 2, 0)
	MovementLoopAddLocation(NPC, 625.38, -12.36, 158.09, 2, 0)
	MovementLoopAddLocation(NPC, 609.47, -11.57, 158.08, 2, 0)
	MovementLoopAddLocation(NPC, 605.81, -12.12, 146.65, 2, 0)
	MovementLoopAddLocation(NPC, 545.9, -10.56, 152.61, 2, 0)
	MovementLoopAddLocation(NPC, 525.11, -10.46, 149.37, 2, 0)
	MovementLoopAddLocation(NPC, 489.07, -11.4, 142.29, 2, 0)
	MovementLoopAddLocation(NPC, 470.39, -11.52, 134.93, 2, 0)
	MovementLoopAddLocation(NPC, 451.46, -11.41, 116.82, 2, 0)
end


