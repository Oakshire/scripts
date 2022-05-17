--[[
	Script Name		:	woodrow.lua
	Script Purpose	:	Waypoint Path for woodrow.lua
	Script Author	:	Devn00b
	Script Date		:	04/11/2020 06:13:14 PM
	Script Notes	:	Locations collected from Live
--]]
dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
--waypoints(NPC)	
end

function respawn(NPC)
	spawn(NPC)
end


function InRange(NPC, Spawn)
if GetFactionAmount(Spawn,11) >20000 then
	if math.random(0, 100) <= 25 then
		FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/service/guard/barbarian_guard_service_good_1_hail_gm_ee473c11.mp3", "Good day to you, citizen. All preserve Queen Antonia.", "salute", 2268064933, 2349331472, Spawn)
	else
		CheckFaction(NPC, Spawn, "Qeynos")
	end	
	end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
		GenericGuardHail(NPC, Spawn)
	end
	
function waypoints(NPC)
	MovementLoopAddLocation(NPC, 673.7, -21.14, 144.6, 2, 0)
	MovementLoopAddLocation(NPC, 682.32, -20.67, 157.2, 2, 0)
	MovementLoopAddLocation(NPC, 721.58, -19.64, 183.31, 2, 0)
	MovementLoopAddLocation(NPC, 724.37, -19.88, 185.32, 2, 0)
	MovementLoopAddLocation(NPC, 778.22, -21.01, 178.06, 2, 1)
	MovementLoopAddLocation(NPC, 778.22, -21.01, 178.06, 2, 8,"FaceGuard2")
	MovementLoopAddLocation(NPC, 778.22, -21.01, 178.06, 2, 1)	
	MovementLoopAddLocation(NPC, 743.16, -20.65, 189.88, 2, 0)
	MovementLoopAddLocation(NPC, 744.9, -19.02, 198.56, 2, 0)
	MovementLoopAddLocation(NPC, 739.77, -20.59, 189.28, 2, 0)
	MovementLoopAddLocation(NPC, 721.95, -19.32, 203.18, 2, 0)
	MovementLoopAddLocation(NPC, 720.31, -19.56, 194.64, 2, 0)
	MovementLoopAddLocation(NPC, 707.27, -19.53, 196.34, 2, 0)
	MovementLoopAddLocation(NPC, 702.15, -19.49, 176.73, 2, 0)
	MovementLoopAddLocation(NPC, 675.8, -20.59, 157.81, 2, 0)
	MovementLoopAddLocation(NPC, 668.62, -21.19, 145.22, 2, 0)
	MovementLoopAddLocation(NPC, 666.2, -21.3, 132.47, 2, 0)
	MovementLoopAddLocation(NPC, 663.46, -21.16, 105.58, 2, 0)
	MovementLoopAddLocation(NPC, 654.3, -20.75, 102.88, 2, 0)
	MovementLoopAddLocation(NPC, 643.14, -20.66, 97.19, 2, 0)
	MovementLoopAddLocation(NPC, 626.94, -26.4, 103.99, 2, 1)
	MovementLoopAddLocation(NPC, 626.94, -26.4, 103.99, 2, 8,"FaceGuard")	
	MovementLoopAddLocation(NPC, 626.94, -26.4, 103.99, 2, 1)
	MovementLoopAddLocation(NPC, 643.14, -20.66, 97.19, 2, 0)
	MovementLoopAddLocation(NPC, 654.3, -20.75, 102.88, 2, 0)
	MovementLoopAddLocation(NPC, 663.46, -21.16, 105.58, 2, 0)
	MovementLoopAddLocation(NPC, 666.2, -21.3, 132.47, 2, 0)
	MovementLoopAddLocation(NPC, 668.62, -21.19, 145.22, 2, 0)
	MovementLoopAddLocation(NPC, 675.8, -20.59, 157.81, 2, 0)
	MovementLoopAddLocation(NPC, 702.15, -19.49, 176.73, 2, 0)
	MovementLoopAddLocation(NPC, 707.27, -19.53, 196.34, 2, 0)
	MovementLoopAddLocation(NPC, 720.31, -19.56, 194.64, 2, 0)
	MovementLoopAddLocation(NPC, 721.95, -19.32, 203.18, 2, 0)
	MovementLoopAddLocation(NPC, 739.77, -20.59, 189.28, 2, 0)
	MovementLoopAddLocation(NPC, 744.9, -19.02, 198.56, 2, 0)
	MovementLoopAddLocation(NPC, 743.16, -20.65, 189.88, 2, 0)
	MovementLoopAddLocation(NPC, 778.22, -21.01, 178.06, 2, 0)
	MovementLoopAddLocation(NPC, 724.37, -19.88, 185.32, 2, 0)
	MovementLoopAddLocation(NPC, 721.58, -19.64, 183.31, 2, 0)
	MovementLoopAddLocation(NPC, 682.32, -20.67, 157.2, 2, 0)
	MovementLoopAddLocation(NPC, 673.7, -21.14, 144.6, 2, 0)
end


function FaceGuard(NPC) -- Saluting script
    local Krelal = GetSpawn(NPC, 2310078)
	
	if Krelal ~= nil then 
	    FaceTarget(NPC, Krelal)
        AddTimer(NPC, 1000, "CaptainFacesGuard") 
    end
end




function CaptainFacesGuard(NPC)
    local Krelal = GetSpawn(NPC, 2310078)
	
	if Krelal ~= nil then 
	    FaceTarget(Krelal, NPC)
        AddTimer(NPC, 500, "CaptainSalutesGuard") 
    end
end

function CaptainSalutesGuard(NPC)
    local Krelal = GetSpawn(NPC, 2310078)
	
	if Krelal ~= nil then 
        PlayAnimation(Krelal, 12167)
        AddTimer(NPC, 1000, "SaluteCaptain")         
    end
end

function SaluteCaptain(NPC)
local Krelal = GetSpawn(NPC, 2310078)
	
	if Krelal ~= nil then 
        PlayAnimation(NPC, 12167)
      --  AddTimer(NPC, 1000, "CaptainFacesGuard")
    end
end


-----------------------------------------------------------

function FaceGuard2(NPC) -- Saluting script
    local Mott = GetSpawn(NPC, 2310119)
	
	if Mott ~= nil then 
	    FaceTarget(NPC, Mott)
        AddTimer(NPC, 1000, "CaptainFacesGuard2") 
    end
end




function CaptainFacesGuard2(NPC)
    local Mott = GetSpawn(NPC, 2310119)
	
	if Mott ~= nil then 
	    FaceTarget(Mott, NPC)
        AddTimer(NPC, 500, "CaptainSalutesGuard2") 
    end
end

function CaptainSalutesGuard2(NPC)
    local Mott = GetSpawn(NPC, 2310119)
	
	if Mott ~= nil then 
        PlayAnimation(Mott, 12167)
        AddTimer(NPC, 1000, "SaluteCaptain2")         
    end
end

function SaluteCaptain2(NPC)
local Mott = GetSpawn(NPC, 2310119)
	
	if Mott ~= nil then 
        PlayAnimation(NPC, 12167)
      --  AddTimer(NPC, 1000, "CaptainFacesGuard2")
    end
end
