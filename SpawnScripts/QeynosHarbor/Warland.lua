--[[
	Script Name		:	Warland.lua
	Script Purpose	:	Waypoint Path for Warland.lua
	Script Author	:	Auto Generated
	Script Date		:	04/08/2020 10:30:14 PM
	Script Notes	:	Locations collected from Live
--]]


dofile("SpawnScripts/Generic/ExpelNonCitizen.lua")
dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
    AddTimer(NPC,1900,"waypoints")
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end


function InRange(NPC, Spawn)
    NonCitizen(NPC,Spawn)    
    if GetFactionAmount(Spawn,11) >20000 then
	if math.random(1,100)<25 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/guard/human_guard_service_good_1_hail_gm_ee473c11.mp3", "Good day to you, citizen. All preserve Queen Antonia.", "salute", 2997871263, 2912813719, Spawn, 0)
	    
    end
end
end


function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
    if GetFactionAmount(Spawn,11)<0 then
        else
    FaceTarget(NPC, Spawn)
    GenericGuardHail(NPC,Spawn)
local Groban = GetSpawn(NPC,2210088)    
	if Groban ~=nil then
    FaceTarget(Groban,Spawn)
 	PlayFlavor(Groban, "", "", "attention", 0, 0, Spawn)
   end	 
local Highgold = GetSpawn(NPC,2210087)    
	if Highgold ~=nil then
    FaceTarget(Highgold,Spawn)
 	PlayFlavor(Highgold, "", "", "attention", 0, 0, Spawn)
    end	
    FaceTarget(NPC, Spawn)
	GenericGuardHail(NPC, Spawn)
	end
end

function respawn(NPC)
	spawn(NPC)
	end
	
--[[Old path by Devnoob
function waypoints(NPC)
	MovementLoopAddLocation(NPC, 705.82, -20.64, -22.54, 2, 0)
	MovementLoopAddLocation(NPC, 740.93, -21.44, -22.18, 2, 0)
	MovementLoopAddLocation(NPC, 757.61, -20.88, -35.3, 2, 0)
	MovementLoopAddLocation(NPC, 764.83, -21.84, -55.37, 2, 0)
	MovementLoopAddLocation(NPC, 727.1, -21.24, -63.05, 2, 0)
	MovementLoopAddLocation(NPC, 710.11, -21.06, -83.53, 2, 20)
	MovementLoopAddLocation(NPC, 727.1, -21.24, -63.05, 2, 0)
	MovementLoopAddLocation(NPC, 764.83, -21.84, -55.37, 2, 0)
	MovementLoopAddLocation(NPC, 757.61, -20.88, -35.3, 2, 0)
	MovementLoopAddLocation(NPC, 740.93, -21.44, -22.18, 2, 0)
	MovementLoopAddLocation(NPC, 705.82, -20.64, -22.54, 2, 0)
end
--]]


function waypoints(NPC)
	MovementLoopAddLocation(NPC, 794.25, -21, -60.3, 2, 2)
	MovementLoopAddLocation(NPC, 772.27, -21.61, -59.66, 2, 0)
	MovementLoopAddLocation(NPC, 760.59, -21.7, -58.92, 2, 0)
	MovementLoopAddLocation(NPC, 739.71, -21.37, -57.96, 2, 0)
	MovementLoopAddLocation(NPC, 727.83, -21.35, -59.01, 2, 0)
	MovementLoopAddLocation(NPC, 713.7, -20.97, -78.42, 2, 0)
	MovementLoopAddLocation(NPC, 691.67, -21.46, -108.83, 2, 0)
	MovementLoopAddLocation(NPC, 687.81, -21.1, -115.14, 2, 0)
	MovementLoopAddLocation(NPC, 681.96, -21.03, -115.62, 2, 0)
	MovementLoopAddLocation(NPC, 679.39, -21.14, -112.78, 2, 0)
	MovementLoopAddLocation(NPC, 689.87, -21.54, -99.94, 2, 0)
	MovementLoopAddLocation(NPC, 705.26, -21.11, -81.33, 2, 0)
	MovementLoopAddLocation(NPC, 717.69, -21.08, -66.29, 2, 0)
	MovementLoopAddLocation(NPC, 716.74, -20.84, -25.46, 2, 0)
	MovementLoopAddLocation(NPC, 716.53, -20.65, -16.01, 2, 0)
	MovementLoopAddLocation(NPC, 709.19, -20.64, -13.58, 2, 0)
	MovementLoopAddLocation(NPC, 701.63, -20.64, -13.85, 2, 0)
	MovementLoopAddLocation(NPC, 698.89, -20.64, -17.24, 2, 0)
	MovementLoopAddLocation(NPC, 699.08, -20.64, -21.61, 2, 0)
	MovementLoopAddLocation(NPC, 699.75, -20.64, -23.81, 2, 0)
	MovementLoopAddLocation(NPC, 755.76, -20.89, -21.87, 2, 0)
	MovementLoopAddLocation(NPC, 760.66, -20.72, -25, 2, 0)
	MovementLoopAddLocation(NPC, 756.84, -21.5, -47.79, 2, 0)
	MovementLoopAddLocation(NPC, 715.26, -21.4, -50.18, 2, 0)
	MovementLoopAddLocation(NPC, 714.68, -21.06, -64.63, 2, 0)
	MovementLoopAddLocation(NPC, 754.6, -21.56, -59.25, 2, 0)
	MovementLoopAddLocation(NPC, 789.89, -21.15, -55.73, 2, 0)
	MovementLoopAddLocation(NPC, 796.71, -20.97, -56.55, 2, 0)
	MovementLoopAddLocation(NPC, 789.89, -21.15, -55.73, 2, 0)
	MovementLoopAddLocation(NPC, 754.6, -21.56, -59.25, 2, 0)
	MovementLoopAddLocation(NPC, 714.68, -21.06, -64.63, 2, 0)
	MovementLoopAddLocation(NPC, 715.26, -21.4, -50.18, 2, 0)
	MovementLoopAddLocation(NPC, 756.84, -21.5, -47.79, 2, 0)
	MovementLoopAddLocation(NPC, 760.66, -20.72, -25, 2, 0)
	MovementLoopAddLocation(NPC, 755.76, -20.89, -21.87, 2, 0)
	MovementLoopAddLocation(NPC, 699.75, -20.64, -23.81, 2, 0)
	MovementLoopAddLocation(NPC, 699.08, -20.64, -21.61, 2, 0)
	MovementLoopAddLocation(NPC, 698.89, -20.64, -17.24, 2, 0)
	MovementLoopAddLocation(NPC, 701.63, -20.64, -13.85, 2, 0)
	MovementLoopAddLocation(NPC, 709.19, -20.64, -13.58, 2, 0)
	MovementLoopAddLocation(NPC, 716.53, -20.65, -16.01, 2, 0)
	MovementLoopAddLocation(NPC, 716.74, -20.84, -25.46, 2, 0)
	MovementLoopAddLocation(NPC, 717.69, -21.08, -66.29, 2, 0)
	MovementLoopAddLocation(NPC, 705.26, -21.11, -81.33, 2, 0)
	MovementLoopAddLocation(NPC, 689.87, -21.54, -99.94, 2, 0)
	MovementLoopAddLocation(NPC, 679.39, -21.14, -112.78, 2, 0)
	MovementLoopAddLocation(NPC, 681.96, -21.03, -115.62, 2, 0)
	MovementLoopAddLocation(NPC, 687.81, -21.1, -115.14, 2, 0)
	MovementLoopAddLocation(NPC, 691.67, -21.46, -108.83, 2, 0)
	MovementLoopAddLocation(NPC, 713.7, -20.97, -78.42, 2, 0)
	MovementLoopAddLocation(NPC, 727.83, -21.35, -59.01, 2, 0)
	MovementLoopAddLocation(NPC, 739.71, -21.37, -57.96, 2, 0)
	MovementLoopAddLocation(NPC, 760.59, -21.7, -58.92, 2, 0)
	MovementLoopAddLocation(NPC, 772.27, -21.61, -59.66, 2, 0)
	MovementLoopAddLocation(NPC, 794.25, -21, -60.3, 2, 0)
end




