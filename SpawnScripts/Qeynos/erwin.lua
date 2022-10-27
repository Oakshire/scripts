--[[
	Script Name		:	erwin.lua
	Script Purpose	:	Waypoint Path for erwin.lua
	Script Author	:	Devn00b
	Script Date		:	04/11/2020 02:39:02 PM
	Script Notes	:	Locations collected from Live
--]]
dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function InRange(NPC, Spawn)
	if math.random(0, 100) <= 25 then
	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/guard/human_guard_service_good_1_hail_gm_c865a827.mp3", "Duty above all else, citizen, except honor!", "scold", 4141262779, 4227030045, Spawn, 0)
	else
		CheckFaction(NPC, Spawn, "Qeynos")
	end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	GenericGuardHail(NPC, Spawn)
end

function respawn(NPC)
		spawn(NPC)
	end
	
function waypoints(NPC)
	MovementLoopAddLocation(NPC, 454.74, -20.93, 213.81, 2, 0)
	MovementLoopAddLocation(NPC, 466.9, -21.19, 202.46, 2, 0)
	MovementLoopAddLocation(NPC, 471.23, -21.11, 195.84, 2, 0)
	MovementLoopAddLocation(NPC, 475.29, -21.06, 195.68, 2, 0)
	MovementLoopAddLocation(NPC, 491.39, -17.34, 200.47, 2, 0)
	MovementLoopAddLocation(NPC, 501.53, -15.79, 205.01, 2, 0)
	MovementLoopAddLocation(NPC, 519.53, -15.61, 207.07, 2, 0)
	MovementLoopAddLocation(NPC, 536.01, -15.34, 210.78, 2, 0)
	MovementLoopAddLocation(NPC, 570.85, -15.66, 208.71, 2, 0)
	MovementLoopAddLocation(NPC, 614.71, -16.09, 201.55, 2, 0)
	MovementLoopAddLocation(NPC, 650.02, -16.93, 191.85, 2, 0)
	MovementLoopAddLocation(NPC, 669.25, -18.71, 186.5, 2, 0)
	MovementLoopAddLocation(NPC, 682.46, -19.52, 183.74, 2, 0)
	MovementLoopAddLocation(NPC, 686.8, -19.52, 188.12, 2, 0)
	MovementLoopAddLocation(NPC, 689.5, -19.52, 193.53, 2, 0)
	MovementLoopAddLocation(NPC, 694.3, -19.52, 194.77, 2, 0)
	MovementLoopAddLocation(NPC, 704.89, -19.54, 191.44, 2, 0)
	MovementLoopAddLocation(NPC, 704.3, -19.47, 180.97, 2, 0)
	MovementLoopAddLocation(NPC, 703.94, -19.47, 176.94, 2, 0)
	MovementLoopAddLocation(NPC, 686.62, -20.13, 166.55, 2, 0)
	MovementLoopAddLocation(NPC, 678.22, -20.82, 156.41, 2, 0)
	MovementLoopAddLocation(NPC, 669.82, -21.29, 140.37, 2, 0)
	MovementLoopAddLocation(NPC, 665.59, -21.22, 103.62, 2, 0)
	MovementLoopAddLocation(NPC, 667.42, -21.31, 123.11, 2, 0)
	MovementLoopAddLocation(NPC, 670.61, -21.26, 143.62, 2, 0)
	MovementLoopAddLocation(NPC, 682.76, -20.38, 163.53, 2, 0)
	MovementLoopAddLocation(NPC, 702.26, -19.55, 174.34, 2, 0)
	MovementLoopAddLocation(NPC, 720.78, -19.64, 183.64, 2, 0)
	MovementLoopAddLocation(NPC, 724.47, -19.62, 193.34, 2, 0)
	MovementLoopAddLocation(NPC, 717.08, -19.52, 195.13, 2, 0)
	MovementLoopAddLocation(NPC, 709.49, -19.53, 196.2, 2, 0)
	MovementLoopAddLocation(NPC, 703.74, -19.53, 192.74, 2, 0)
	MovementLoopAddLocation(NPC, 692.03, -19.52, 196.09, 2, 0)
	MovementLoopAddLocation(NPC, 689.23, -19.52, 196.91, 2, 0)
	MovementLoopAddLocation(NPC, 683.03, -19.49, 215.78, 2, 0)
	MovementLoopAddLocation(NPC, 677.54, -19.73, 221.69, 2, 0)
	MovementLoopAddLocation(NPC, 655.7, -19.04, 228.28, 2, 0)
	MovementLoopAddLocation(NPC, 628.85, -18.75, 234.62, 2, 0)
	MovementLoopAddLocation(NPC, 608.3, -18.1, 239.05, 2, 0)
	MovementLoopAddLocation(NPC, 565.43, -17.73, 245.68, 2, 0)
	MovementLoopAddLocation(NPC, 562.49, -17.51, 238.05, 2, 0)
	MovementLoopAddLocation(NPC, 558.82, -17.12, 230.47, 2, 0)
	MovementLoopAddLocation(NPC, 556.95, -15.31, 218.53, 2, 0)
	MovementLoopAddLocation(NPC, 556.71, -15.12, 213.96, 2, 0)
	MovementLoopAddLocation(NPC, 554.18, -15.27, 212.18, 2, 0)
	MovementLoopAddLocation(NPC, 524.61, -15.55, 208.65, 2, 0)
	MovementLoopAddLocation(NPC, 493.74, -16.93, 202.29, 2, 0)
	MovementLoopAddLocation(NPC, 474.12, -21.11, 194.42, 2, 0)
	MovementLoopAddLocation(NPC, 458.14, -20.55, 184.01, 2, 0)
	MovementLoopAddLocation(NPC, 441.9, -20.49, 176.88, 2, 0)
	MovementLoopAddLocation(NPC, 435.25, -20.61, 181.11, 2, 0)
	MovementLoopAddLocation(NPC, 435.58, -20.61, 193.92, 2, 0)
	MovementLoopAddLocation(NPC, 447.2, -20.68, 209.48, 2, 0)
end






--[[
function waypoints(NPC)
	MovementLoopAddLocation(NPC, 698.34, -19.9, 131.15, 2, 0)
	MovementLoopAddLocation(NPC, 677.48, -21.02, 142.28, 2, 0)
	MovementLoopAddLocation(NPC, 680.55, -20.76, 155.63, 2, 0)
	MovementLoopAddLocation(NPC, 704.73, -19.48, 175.59, 2, 0)
	MovementLoopAddLocation(NPC, 703.89, -19.54, 189.78, 2, 0)
	MovementLoopAddLocation(NPC, 692.1, -19.52, 195.98, 2, 0)
	MovementLoopAddLocation(NPC, 679.77, -19.76, 221.54, 2, 0)
	MovementLoopAddLocation(NPC, 671.72, -19.66, 223.75, 2, 0)
	MovementLoopAddLocation(NPC, 686.27, -20.49, 267.75, 2, 30)
	MovementLoopAddLocation(NPC, 671.72, -19.66, 223.75, 2, 0)
	MovementLoopAddLocation(NPC, 679.77, -19.76, 221.54, 2, 0)
	MovementLoopAddLocation(NPC, 692.1, -19.52, 195.98, 2, 0)
	MovementLoopAddLocation(NPC, 703.89, -19.54, 189.78, 2, 0)
	MovementLoopAddLocation(NPC, 704.73, -19.48, 175.59, 2, 0)
	MovementLoopAddLocation(NPC, 680.55, -20.76, 155.63, 2, 0)
	MovementLoopAddLocation(NPC, 677.48, -21.02, 142.28, 2, 0)
	MovementLoopAddLocation(NPC, 698.34, -19.9, 131.15, 2, 30)
end
]]--

