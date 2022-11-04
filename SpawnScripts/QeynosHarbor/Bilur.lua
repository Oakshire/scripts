--[[
	Script Name		:	Bilur.lua
	Script Purpose	:	Waypoint Path for Bilur.lua
	Script Author	:	Devn00b
	Script Date		:	04/09/2020 01:10:38 AM
	Script Notes	:	Locations collected from Live
--]]
dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")
dofile("SpawnScripts/Generic/ExpelNonCitizen.lua")

function spawn(NPC)
	AddTimer(NPC,1900,"waypoints")
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function hailed(NPC, Spawn)
    if GetFactionAmount(Spawn,11)<0 then
        else
    FaceTarget(NPC, Spawn)
    GenericGuardHail(NPC,Spawn)
local Hanstock = GetSpawn(NPC,2210073)    
	if Hanstock ~=nil then
    FaceTarget(Hanstock,Spawn)
	PlayFlavor(Hanstock, "", "", "attention", 0, 0, Spawn)
    end	
local Oakhall = GetSpawn(NPC,2210072)    
	if Oakhall ~=nil then
    FaceTarget(Oakhall,Spawn)
 	PlayFlavor(Oakhall, "", "", "attention", 0, 0, Spawn)
   end	    

    end
end


function InRange(NPC, Spawn)
    NonCitizen(NPC,Spawn)    
end

function respawn(NPC)
	spawn(NPC)
	end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 898.99, -23.89, -31.94, 2, 0)
	MovementLoopAddLocation(NPC, 902.63, -25.37, -24.9, 2, 0)
	MovementLoopAddLocation(NPC, 904.6, -25.37, -14.12, 2, 0)
	MovementLoopAddLocation(NPC, 905.39, -25.37, 1.6, 2, 0)
	MovementLoopAddLocation(NPC, 903.48, -25.37, 13.39, 2, 0)
	MovementLoopAddLocation(NPC, 898.34, -25.37, 31.45, 2, 0)
	MovementLoopAddLocation(NPC, 892.48, -25.37, 41.15, 2, 0)
	MovementLoopAddLocation(NPC, 889.1, -25.37, 43.75, 2, 0)
	MovementLoopAddLocation(NPC, 884.94, -25.37, 44.74, 2, 0)
	MovementLoopAddLocation(NPC, 870.3, -25.37, 42.83, 2, 0)
	MovementLoopAddLocation(NPC, 857.65, -25.37, 41.36, 2, 0)
	MovementLoopAddLocation(NPC, 853.62, -24.15, 41.2, 2, 0)
	MovementLoopAddLocation(NPC, 842.78, -23.1, 43.14, 2, 0)
	MovementLoopAddLocation(NPC, 833.99, -23.31, 44.71, 2, 0)
	MovementLoopAddLocation(NPC, 832.86, -23.31, 46.74, 2, 0)
	MovementLoopAddLocation(NPC, 819.62, -23.31, 75.37, 2, 0)
	MovementLoopAddLocation(NPC, 817.3, -23.31, 83.28, 2, 0)
	MovementLoopAddLocation(NPC, 815.88, -23.31, 100.06, 2, 0)
	MovementLoopAddLocation(NPC, 813.07, -23.31, 111.83, 2, 0)
	MovementLoopAddLocation(NPC, 813.3, -23.33, 119.04, 2, 0)
	MovementLoopAddLocation(NPC, 810.24, -23.31, 123.59, 2, 0)
	MovementLoopAddLocation(NPC, 806.41, -23.32, 121.1, 2, 0)
	MovementLoopAddLocation(NPC, 810.39, -23.31, 114.14, 2, 0)
	MovementLoopAddLocation(NPC, 815.65, -23.31, 103.24, 2, 0)
	MovementLoopAddLocation(NPC, 817.16, -23.31, 98.64, 2, 0)
	MovementLoopAddLocation(NPC, 817.24, -23.31, 83.23, 2, 0)
	MovementLoopAddLocation(NPC, 827.26, -23.31, 59.57, 2, 0)
	MovementLoopAddLocation(NPC, 835.69, -23.31, 42.84, 2, 0)
	MovementLoopAddLocation(NPC, 842.85, -23.11, 42.64, 2, 0)
	MovementLoopAddLocation(NPC, 857.22, -25.37, 40.55, 2, 0)
	MovementLoopAddLocation(NPC, 866.53, -25.37, 42.31, 2, 0)
	MovementLoopAddLocation(NPC, 884.82, -25.37, 44.99, 2, 0)
	MovementLoopAddLocation(NPC, 890.13, -25.37, 43.48, 2, 0)
	MovementLoopAddLocation(NPC, 897, -25.37, 33.43, 2, 0)
	MovementLoopAddLocation(NPC, 905.32, -25.37, 2.65, 2, 0)
	MovementLoopAddLocation(NPC, 906.92, -25.37, -10.6, 2, 0)
	MovementLoopAddLocation(NPC, 901.32, -25.34, -28.3, 2, 0)
	MovementLoopAddLocation(NPC, 896.96, -23.65, -42.62, 2, 0)
	MovementLoopAddLocation(NPC, 892.44, -25.36, -54.04, 2, 0)
	MovementLoopAddLocation(NPC, 887.08, -25.36, -59.81, 2, 0)
	MovementLoopAddLocation(NPC, 872.58, -25.36, -62.58, 2, 0)
	MovementLoopAddLocation(NPC, 863.27, -25.36, -63.39, 2, 0)
	MovementLoopAddLocation(NPC, 842.39, -25.36, -62.98, 2, 0)
	MovementLoopAddLocation(NPC, 827.44, -23.9, -62.05, 2, 0)
	MovementLoopAddLocation(NPC, 814.63, -21.06, -59.61, 2, 0)
	MovementLoopAddLocation(NPC, 813.79, -20.86, -60.7, 2, 0)
	MovementLoopAddLocation(NPC, 817.05, -21.55, -63.8, 2, 0)
	MovementLoopAddLocation(NPC, 822.62, -22.81, -62.65, 2, 0)
	MovementLoopAddLocation(NPC, 833.39, -24.99, -62.45, 2, 0)
	MovementLoopAddLocation(NPC, 852.73, -25.36, -63.01, 2, 0)
	MovementLoopAddLocation(NPC, 869.41, -25.36, -62.98, 2, 0)
	MovementLoopAddLocation(NPC, 884.39, -25.36, -59.64, 2, 0)
	MovementLoopAddLocation(NPC, 891.75, -25.36, -54.96, 2, 0)
	MovementLoopAddLocation(NPC, 897, -23.45, -40.35, 2, 0)
end


--[[
function waypoints(NPC)
	MovementLoopAddLocation(NPC, 803.77, -20.99, 135.44, 2, 20)
	MovementLoopAddLocation(NPC, 817.09, -23.31, 82.45, 2, 0)
	MovementLoopAddLocation(NPC, 833.86, -23.31, 44.3, 2, 0)
	MovementLoopAddLocation(NPC, 858.41, -25.37, 40.72, 2, 0)
	MovementLoopAddLocation(NPC, 911.08, -25.39, 37.14, 2, 0)
	MovementLoopAddLocation(NPC, 901.46, -25.37, -20.28, 2, 0)
	MovementLoopAddLocation(NPC, 893.95, -25.34, -48.41, 2, 0)
	MovementLoopAddLocation(NPC, 860.97, -25.44, -73.48, 2, 30)
	MovementLoopAddLocation(NPC, 893.95, -25.34, -48.41, 2, 0)
	MovementLoopAddLocation(NPC, 901.46, -25.37, -20.28, 2, 0)
	MovementLoopAddLocation(NPC, 911.08, -25.39, 37.14, 2, 0)
	MovementLoopAddLocation(NPC, 858.41, -25.37, 40.72, 2, 0)
	MovementLoopAddLocation(NPC, 833.86, -23.31, 44.3, 2, 0)
	MovementLoopAddLocation(NPC, 817.09, -23.31, 82.45, 2, 0)
	MovementLoopAddLocation(NPC, 803.77, -20.99, 135.44, 2, 20)
end
]]--

