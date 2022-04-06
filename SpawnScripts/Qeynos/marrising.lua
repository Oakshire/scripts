--[[
	Script Name		:	Marrising.lua
	Script Purpose	:	Waypoint Path for Marrising.lua
	Script Author	:	Devn00b
	Script Date		:	04/10/2020 04:46:03 PM
	Script Notes	:	Locations collected from Live
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

local TimeCheck = false
local CalloutTimeCheck = false
local FactionCalloutTimeCheck = false

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

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 707.61, -19.46, 175.9, 2, 0)
	MovementLoopAddLocation(NPC, 713.7, -19.4, 179.73, 2, 0)
	MovementLoopAddLocation(NPC, 716.28, -19.45, 181.76, 2, 0)
	MovementLoopAddLocation(NPC, 718.4, -19.6, 184.27, 2, 0)
	MovementLoopAddLocation(NPC, 719.49, -19.64, 187.17, 2, 0)
	MovementLoopAddLocation(NPC, 719.53, -19.58, 190.1, 2, 0)
	MovementLoopAddLocation(NPC, 718.14, -19.55, 192.61, 2, 0)
	MovementLoopAddLocation(NPC, 715.25, -19.53, 194.33, 2, 0)
	MovementLoopAddLocation(NPC, 711.92, -19.53, 194.53, 2, 0)
	MovementLoopAddLocation(NPC, 708.96, -19.53, 193.61, 2, 0)
	MovementLoopAddLocation(NPC, 704.91, -19.53, 192.29, 2, 0)
	MovementLoopAddLocation(NPC, 692.42, -19.52, 195.54, 2, 0)
	MovementLoopAddLocation(NPC, 688.64, -19.52, 218.45, 2, 0)
	MovementLoopAddLocation(NPC, 632.1, -18.99, 231.92, 2, 0)
	MovementLoopAddLocation(NPC, 563.86, -17.76, 244.65, 2, 0)
	MovementLoopAddLocation(NPC, 561.11, -17.26, 233.98, 2, 0)
	MovementLoopAddLocation(NPC, 556.66, -14.99, 216.32, 2, 0)
	MovementLoopAddLocation(NPC, 550.9, -15.43, 208.24, 2, 0)
	MovementLoopAddLocation(NPC, 547.13, -15.4, 204.2, 2, 0)
	MovementLoopAddLocation(NPC, 547.26, -15.24, 199.45, 2, 0)
	MovementLoopAddLocation(NPC, 547.46, -13.6, 182.35, 2, 0)
	MovementLoopAddLocation(NPC, 547.24, -10.21, 163.68, 2, 0)
	MovementLoopAddLocation(NPC, 547.24, -10.1, 148.65, 2, 0)
	MovementLoopAddLocation(NPC, 541.54, -10.25, 149.2, 2, 0)
	MovementLoopAddLocation(NPC, 532.31, -10.34, 149.51, 2, 0)
	MovementLoopAddLocation(NPC, 523.91, -10.4, 148.71, 2, 0)
	MovementLoopAddLocation(NPC, 516.15, -10.43, 146.28, 2, 0)
	MovementLoopAddLocation(NPC, 502.44, -11.37, 141.98, 2, 0)
	MovementLoopAddLocation(NPC, 484.36, -11.51, 136.33, 2, 0)
	MovementLoopAddLocation(NPC, 469.76, -11.53, 131.51, 2, 0)
	MovementLoopAddLocation(NPC, 484.36, -11.51, 136.33, 2, 0)
	MovementLoopAddLocation(NPC, 502.44, -11.37, 141.98, 2, 0)
	MovementLoopAddLocation(NPC, 516.15, -10.43, 146.28, 2, 0)
	MovementLoopAddLocation(NPC, 523.91, -10.4, 148.71, 2, 0)
	MovementLoopAddLocation(NPC, 532.31, -10.34, 149.51, 2, 0)
	MovementLoopAddLocation(NPC, 541.54, -10.25, 149.2, 2, 0)
	MovementLoopAddLocation(NPC, 547.24, -10.1, 148.65, 2, 0)
	MovementLoopAddLocation(NPC, 547.24, -10.21, 163.68, 2, 0)
	MovementLoopAddLocation(NPC, 547.46, -13.6, 182.35, 2, 0)
	MovementLoopAddLocation(NPC, 547.26, -15.24, 199.45, 2, 0)
	MovementLoopAddLocation(NPC, 547.13, -15.4, 204.2, 2, 0)
	MovementLoopAddLocation(NPC, 550.9, -15.43, 208.24, 2, 0)
	MovementLoopAddLocation(NPC, 556.66, -14.99, 216.32, 2, 0)
	MovementLoopAddLocation(NPC, 561.11, -17.26, 233.98, 2, 0)
	MovementLoopAddLocation(NPC, 563.86, -17.76, 244.65, 2, 0)
	MovementLoopAddLocation(NPC, 632.1, -18.99, 231.92, 2, 0)
	MovementLoopAddLocation(NPC, 688.64, -19.52, 218.45, 2, 0)
	MovementLoopAddLocation(NPC, 692.42, -19.52, 195.54, 2, 0)
	MovementLoopAddLocation(NPC, 704.91, -19.53, 192.29, 2, 0)
	MovementLoopAddLocation(NPC, 708.96, -19.53, 193.61, 2, 0)
	MovementLoopAddLocation(NPC, 711.92, -19.53, 194.53, 2, 0)
	MovementLoopAddLocation(NPC, 715.25, -19.53, 194.33, 2, 0)
	MovementLoopAddLocation(NPC, 718.14, -19.55, 192.61, 2, 0)
	MovementLoopAddLocation(NPC, 719.53, -19.58, 190.1, 2, 0)
	MovementLoopAddLocation(NPC, 719.49, -19.64, 187.17, 2, 0)
	MovementLoopAddLocation(NPC, 718.4, -19.6, 184.27, 2, 7)
	MovementLoopAddLocation(NPC, 716.28, -19.45, 181.76, 2, 0)
	MovementLoopAddLocation(NPC, 713.7, -19.4, 179.73, 2, 0)
	MovementLoopAddLocation(NPC, 707.61, -19.46, 175.9, 2, 7)
end


