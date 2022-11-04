--[[
	Script Name		:	raleigh.lua
	Script Purpose	:	Waypoint Path for raleigh.lua
	Script Author	:	Devn00b
	Script Date		:	04/11/2020 06:51:30 PM
	Script Notes	:	Locations collected from Live
--]]
dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")
dofile("SpawnScripts/Generic/ExpelNonCitizen.lua")

function spawn(NPC)
AddTimer(NPC,2000,"waypoints")
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function InRange(NPC, Spawn)
    NonCitizen(NPC,Spawn)    
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    if GetFactionAmount(Spawn,11)<0 then
        else
    FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/guard/human_guard_service_good_1_hail_gm_c865a827.mp3", "Duty above all else, citizen, except honor!", "scold", 4141262779, 4227030045, Spawn, 0)
    end
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 621.88, -15.72, 184.05, 2, 0)
	MovementLoopAddLocation(NPC, 621.42, -12.85, 161.06, 2, 0)
	MovementLoopAddLocation(NPC, 619.77, -12.23, 143.64, 2, 0)
	MovementLoopAddLocation(NPC, 617.04, -12.12, 142.63, 2, 0)
	MovementLoopAddLocation(NPC, 600.69, -12.05, 145.93, 2, 0)
	MovementLoopAddLocation(NPC, 583.68, -10.42, 147.57, 2, 0)
	MovementLoopAddLocation(NPC, 549.98, -10.56, 151.12, 2, 0)
	MovementLoopAddLocation(NPC, 546.65, -10.47, 154.19, 2, 0)
	MovementLoopAddLocation(NPC, 545.89, -10.74, 169.73, 2, 0)
	MovementLoopAddLocation(NPC, 545.39, -15.27, 198.53, 2, 6)
	MovementLoopAddLocation(NPC, 546.31, -10.3, 156.25, 2, 0)
	MovementLoopAddLocation(NPC, 543.88, -10.51, 151.06, 2, 0)
	MovementLoopAddLocation(NPC, 534.08, -10.5, 150.89, 2, 0)
	MovementLoopAddLocation(NPC, 521.18, -10.45, 149.16, 2, 0)
	MovementLoopAddLocation(NPC, 506.16, -11.24, 144.65, 2, 0)
	MovementLoopAddLocation(NPC, 500.59, -11.08, 136.71, 2, 6)
	MovementLoopAddLocation(NPC, 501.19, -11.6, 143.91, 2, 0)
	MovementLoopAddLocation(NPC, 525.03, -10.49, 149.91, 2, 0)
	MovementLoopAddLocation(NPC, 549.11, -10.59, 151.97, 2, 0)
	MovementLoopAddLocation(NPC, 567.43, -10.61, 150.95, 2, 0)
	MovementLoopAddLocation(NPC, 589.83, -10.56, 147.49, 2, 0)
	MovementLoopAddLocation(NPC, 615.66, -12.21, 144.05, 2, 0)
	MovementLoopAddLocation(NPC, 620.5, -12.31, 146.06, 2, 0)
	MovementLoopAddLocation(NPC, 622.52, -16.13, 190.9, 2, 6)
end

--[[ORIGINAL ATTEMPT, Too Broad]
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
]]--

