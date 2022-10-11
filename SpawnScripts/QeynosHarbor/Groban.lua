--[[
	Script Name		:	Highgold.lua
	Script Purpose	:	Waypoint Path for Highgold.lua
	Script Author	:	Auto Generated
	Script Date		:	04/08/2020 08:13:18 PM
	Script Notes	:	Locations collected from Live
--]]
dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
    if GetFactionAmount(Spawn,11)<0 then
        else
    FaceTarget(NPC, Spawn)
local Warland = GetSpawn(NPC,2210266)    
	if Warland ~=nil then
    FaceTarget(Warland,Spawn)
	PlayFlavor(Warland, "", "", "attention", 0, 0, Spawn)
    end	
local Highgold = GetSpawn(NPC,2210087)    
	if Highgold ~=nil then
    FaceTarget(Highgold,Spawn)
 	PlayFlavor(Highgold, "", "", "attention", 0, 0, Spawn)
    end	


    end
end

function respawn(NPC)
	spawn(NPC)
	end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 794.25, -21, -60.3, 2, 0)
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



--[[ Old path by Devnoob

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 679.82, -21.04, -115.09, 2, 0)
	MovementLoopAddLocation(NPC, 710.6, -20.89, -66.2, 2, 2)
	MovementLoopAddLocation(NPC, 700.37, -20.64, -15.85, 2, 5)
	MovementLoopAddLocation(NPC, 741.96, -21.2, -14.13, 2, 8)
	MovementLoopAddLocation(NPC, 757.77, -20.81, 7.22, 2, 1)
	MovementLoopAddLocation(NPC, 762.62, -21.48, -45.59, 2, 0)
	MovementLoopAddLocation(NPC, 779.17, -21.13, -45.52, 2, 0)
	MovementLoopAddLocation(NPC, 795.39, -21, -58.93, 2, 12)
	MovementLoopAddLocation(NPC, 745.01, -21.46, -58.01, 2, 0)
	MovementLoopAddLocation(NPC, 715.91, -21.27, -61.53, 2, 0)
	MovementLoopAddLocation(NPC, 676.46, -20.65, -124.59, 2, 17)
	MovementLoopAddLocation(NPC, 715.91, -21.27, -61.53, 2, 0)
	MovementLoopAddLocation(NPC, 745.01, -21.46, -58.01, 2, 0)
	MovementLoopAddLocation(NPC, 795.39, -21, -58.93, 2, 5)
	MovementLoopAddLocation(NPC, 779.17, -21.13, -45.52, 2, 0)
	MovementLoopAddLocation(NPC, 762.62, -21.48, -45.59, 2, 0)
	MovementLoopAddLocation(NPC, 757.77, -20.81, 7.22, 2, 0)
	MovementLoopAddLocation(NPC, 741.96, -21.2, -14.13, 2, 0)
	MovementLoopAddLocation(NPC, 700.37, -20.64, -15.85, 2, 0)
	MovementLoopAddLocation(NPC, 710.6, -20.89, -66.2, 2, 0)
	MovementLoopAddLocation(NPC, 679.82, -21.04, -115.09, 2, 0)
end

]]--
