--[[
	Script Name		:	raleigh.lua
	Script Purpose	:	Waypoint Path for raleigh.lua
	Script Author	:	Devn00b
	Script Date		:	04/11/2020 06:51:30 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/guard/human_guard_service_good_1_hail_gm_c865a827.mp3", "Duty above all else, citizen, except honor!", "scold", 4141262779, 4227030045, Spawn, 0)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 518.13, -10.48, 148.06, 2, 0)
	MovementLoopAddLocation(NPC, 546.76, -10.58, 151.7, 2, 0)
	MovementLoopAddLocation(NPC, 619.74, -12.25, 144.07, 2, 0)
	MovementLoopAddLocation(NPC, 621.1, -16.52, 201.22, 2, 0)
	MovementLoopAddLocation(NPC, 557.98, -15.36, 210.45, 2, 0)
	MovementLoopAddLocation(NPC, 558.15, -17.19, 232.88, 2, 0)
	MovementLoopAddLocation(NPC, 552.57, -17.74, 244.2, 2, 0)
	MovementLoopAddLocation(NPC, 503.12, -19.64, 242.37, 2, 0)
	MovementLoopAddLocation(NPC, 459.61, -22.15, 233.9, 2, 0)
	MovementLoopAddLocation(NPC, 457.36, -21.39, 226.69, 2, 0)
	MovementLoopAddLocation(NPC, 471.92, -20.75, 189.58, 2, 0)
	MovementLoopAddLocation(NPC, 485.11, -14.58, 159.08, 2, 0)
	MovementLoopAddLocation(NPC, 494.06, -11.84, 144.74, 2, 0)
	MovementLoopAddLocation(NPC, 514.53, -10.6, 147.01, 2, 0)
	MovementLoopAddLocation(NPC, 546.4, -10.57, 151.35, 2, 0)
	MovementLoopAddLocation(NPC, 546.6, -14.95, 189.7, 2, 0)
	MovementLoopAddLocation(NPC, 546.4, -10.57, 151.35, 2, 0)
	MovementLoopAddLocation(NPC, 514.53, -10.6, 147.01, 2, 0)
	MovementLoopAddLocation(NPC, 494.06, -11.84, 144.74, 2, 0)
	MovementLoopAddLocation(NPC, 485.11, -14.58, 159.08, 2, 0)
	MovementLoopAddLocation(NPC, 471.92, -20.75, 189.58, 2, 0)
	MovementLoopAddLocation(NPC, 457.36, -21.39, 226.69, 2, 0)
	MovementLoopAddLocation(NPC, 459.61, -22.15, 233.9, 2, 0)
	MovementLoopAddLocation(NPC, 503.12, -19.64, 242.37, 2, 0)
	MovementLoopAddLocation(NPC, 552.57, -17.74, 244.2, 2, 0)
	MovementLoopAddLocation(NPC, 558.15, -17.19, 232.88, 2, 0)
	MovementLoopAddLocation(NPC, 557.98, -15.36, 210.45, 2, 0)
	MovementLoopAddLocation(NPC, 621.1, -16.52, 201.22, 2, 0)
	MovementLoopAddLocation(NPC, 619.74, -12.25, 144.07, 2, 0)
	MovementLoopAddLocation(NPC, 546.76, -10.58, 151.7, 2, 0)
	MovementLoopAddLocation(NPC, 518.13, -10.48, 148.06, 2, 0)
end


