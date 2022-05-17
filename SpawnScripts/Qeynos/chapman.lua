--[[
	Script Name		:	chapman.lua
	Script Purpose	:	Waypoint Path for chapman.lua
	Script Author	:	Devn00b
	Script Date		:	04/10/2020 12:23:48 PM
	Script Notes	:	Locations collected from Live
--]]
dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
		GenericGuardHail(NPC, Spawn)
end

function respawn(NPC)
		spawn(NPC)
	end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 414.47, -20.94, 159.19, 2, 6)
	MovementLoopAddLocation(NPC, 424.69, -20.9, 170.89, 2, 0)
	MovementLoopAddLocation(NPC, 431.64, -20.73, 184.92, 2, 0)
	MovementLoopAddLocation(NPC, 439.98, -20.46, 215.9, 2, 0)
	MovementLoopAddLocation(NPC, 450.62, -21.86, 236.52, 2, 0)
	MovementLoopAddLocation(NPC, 447.44, -21.74, 250.47, 2, 0)
	MovementLoopAddLocation(NPC, 435.8, -21.81, 272.78, 2, 2)
	MovementLoopAddLocation(NPC, 435.8, -21.81, 272.78, 2, 9,"FaceGuard")
	MovementLoopAddLocation(NPC, 435.15, -21.7, 273, 2, 0)
	MovementLoopAddLocation(NPC, 447.57, -21.78, 251.96, 2, 0)
	MovementLoopAddLocation(NPC, 457.71, -21.05, 220.7, 2, 0)
	MovementLoopAddLocation(NPC, 466.95, -21.04, 199.03, 2, 0)
	MovementLoopAddLocation(NPC, 465.15, -20.74, 187.6, 2, 0)
	MovementLoopAddLocation(NPC, 448.32, -20.47, 178.12, 2, 0)
	MovementLoopAddLocation(NPC, 413.07, -20.93, 154.6, 2, 0)
end


function FaceGuard(NPC) -- Saluting Knight-Captain Garath script
    local Eraanus = GetSpawn(NPC, 2310093)
	
	if Eraanus ~= nil then 
	    FaceTarget(NPC, Eraanus)
        AddTimer(NPC, 1000, "CaptainFacesGuard") 
    end
end




function CaptainFacesGuard(NPC)
    local Eraanus = GetSpawn(NPC, 2310093)
	
	if Eraanus ~= nil then 
	    FaceTarget(Eraanus, NPC)
        AddTimer(NPC, 500, "CaptainSalutesGuard") 
    end
end

function CaptainSalutesGuard(NPC)
    local Eraanus = GetSpawn(NPC, 2310093)
	
	if Eraanus ~= nil then 
        PlayAnimation(Eraanus, 12167)
        AddTimer(NPC, 1000, "SaluteCaptain")         
    end
end

function SaluteCaptain(NPC)
local Eraanus = GetSpawn(NPC, 2310093)
	
	if Eraanus ~= nil then 
        PlayAnimation(NPC, 12167)
      --  AddTimer(NPC, 1000, "CaptainFacesGuard")
    end
end
--[[
function waypoints(NPC)
	MovementLoopAddLocation(NPC, 413.02, -20.94, 157.49, 2, 0)
	MovementLoopAddLocation(NPC, 431.34, -20.77, 177.7, 2, 0)
	MovementLoopAddLocation(NPC, 452.04, -21.98, 240.54, 2, 0)
	MovementLoopAddLocation(NPC, 436.42, -21.74, 269.85, 2, 0)
	MovementLoopAddLocation(NPC, 447.66, -21.76, 259.01, 2, 0)
	MovementLoopAddLocation(NPC, 457.88, -22.22, 236.4, 2, 0)
	MovementLoopAddLocation(NPC, 505.74, -19.56, 242.9, 2, 0)
	MovementLoopAddLocation(NPC, 578.81, -17.93, 242.68, 2, 0)
	MovementLoopAddLocation(NPC, 663.88, -19.39, 224.79, 2, 0)
	MovementLoopAddLocation(NPC, 686.32, -19.52, 217.22, 2, 0)
	MovementLoopAddLocation(NPC, 679.24, -19.42, 184.53, 2, 0)
	MovementLoopAddLocation(NPC, 601.85, -15.83, 204.98, 2, 0)
	MovementLoopAddLocation(NPC, 547, -15.41, 209.65, 2, 0)
	MovementLoopAddLocation(NPC, 497.18, -16.39, 203.07, 2, 0)
	MovementLoopAddLocation(NPC, 413, -20.94, 157.01, 2, 0)
	MovementLoopAddLocation(NPC, 497.18, -16.39, 203.07, 2, 0)
	MovementLoopAddLocation(NPC, 547, -15.41, 209.65, 2, 0)
	MovementLoopAddLocation(NPC, 601.85, -15.83, 204.98, 2, 0)
	MovementLoopAddLocation(NPC, 679.24, -19.42, 184.53, 2, 0)
	MovementLoopAddLocation(NPC, 686.32, -19.52, 217.22, 2, 0)
	MovementLoopAddLocation(NPC, 663.88, -19.39, 224.79, 2, 0)
	MovementLoopAddLocation(NPC, 578.81, -17.93, 242.68, 2, 0)
	MovementLoopAddLocation(NPC, 505.74, -19.56, 242.9, 2, 0)
	MovementLoopAddLocation(NPC, 457.88, -22.22, 236.4, 2, 0)
	MovementLoopAddLocation(NPC, 447.66, -21.76, 259.01, 2, 0)
	MovementLoopAddLocation(NPC, 436.42, -21.74, 269.85, 2, 0)
	MovementLoopAddLocation(NPC, 452.04, -21.98, 240.54, 2, 0)
	MovementLoopAddLocation(NPC, 431.34, -20.77, 177.7, 2, 0)
	MovementLoopAddLocation(NPC, 413.02, -20.94, 157.49, 2, 0)
end
]]--

