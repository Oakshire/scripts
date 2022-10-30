--[[
    Script Name    : SpawnScripts/Castleview/SavanthisHalinthel.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.29 04:10:21
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")
dofile("SpawnScripts/Generic/UnknownLanguage.lua")

function spawn(NPC)
waypoints(NPC)
SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    GenericRaceCheckHail(NPC, Spawn, faction)
end


function InRange(NPC,Spawn)
    GenericRaceCheckCallout(NPC, Spawn, faction)
end


function waypoints(NPC)
	MovementLoopAddLocation(NPC, 769.6, -19.98, -98.53, 2, 28)
	MovementLoopAddLocation(NPC, 772.49, -19.95, -100.21, 2, 0)
	MovementLoopAddLocation(NPC, 778.09, -20.03, -103.36, 2, 0)
	MovementLoopAddLocation(NPC, 782.23, -19.99, -108.53, 2, 0)
	MovementLoopAddLocation(NPC, 774.76, -18.22, -111.31, 2, 0)
	MovementLoopAddLocation(NPC, 774.04, -18.22, -111.52, 2, 0)
	MovementLoopAddLocation(NPC, 770.28, -18.22, -109.58, 2, 0)
	MovementLoopAddLocation(NPC, 768.73, -18.22, -105.87, 2, 0)
	MovementLoopAddLocation(NPC, 765.48, -14, -97.54, 2, 0)
	MovementLoopAddLocation(NPC, 762.58, -13.78, -93.44, 2, 0)
	MovementLoopAddLocation(NPC, 759.61, -13.78, -92.87, 2, 0)
	MovementLoopAddLocation(NPC, 759.06, -13.76, -94.1, 2, 0)
	MovementLoopAddLocation(NPC, 760.22, -13.72, -101.81, 2, 0)
	MovementLoopAddLocation(NPC, 760.41, -13.72, -103.06, 2, 0)
	MovementLoopAddLocation(NPC, 758.95, -13.76, -105.64, 2, 0)
	MovementLoopAddLocation(NPC, 756.71, -13.81, -110.49, 2, 0)
	MovementLoopAddLocation(NPC, 752.16, -13.72, -122.81, 2, 25)
	MovementLoopAddLocation(NPC, 756.95, -13.82, -111.93, 2, 0)
	MovementLoopAddLocation(NPC, 760.07, -13.75, -104.66, 2, 0)
	MovementLoopAddLocation(NPC, 762.43, -13.76, -100.26, 2, 0)
	MovementLoopAddLocation(NPC, 760.91, -13.75, -95.67, 2, 0)
	MovementLoopAddLocation(NPC, 763.26, -13.73, -94.91, 2, 0)
	MovementLoopAddLocation(NPC, 764.78, -14.23, -98.26, 2, 0)
	MovementLoopAddLocation(NPC, 767.93, -18.22, -106.8, 2, 0)
	MovementLoopAddLocation(NPC, 770.15, -18.22, -110.12, 2, 0)
	MovementLoopAddLocation(NPC, 773.37, -18.22, -111.45, 2, 0)
	MovementLoopAddLocation(NPC, 773.93, -18.22, -113.64, 2, 0)
	MovementLoopAddLocation(NPC, 772.1, -18.22, -117.34, 2, 0)
	MovementLoopAddLocation(NPC, 774.64, -19.93, -123.96, 2, 0)
	MovementLoopAddLocation(NPC, 774.05, -19.95, -129.77, 2, 25)
	MovementLoopAddLocation(NPC, 772.63, -19.99, -128.64, 2, 0)
	MovementLoopAddLocation(NPC, 767.48, -20.02, -129.24, 2, 0)
	MovementLoopAddLocation(NPC, 766.67, -20.45, -137.61, 2, 0)
	MovementLoopAddLocation(NPC, 766.64, -20.23, -139.52, 2, 0)
	MovementLoopAddLocation(NPC, 766.96, -19.99, -143.7, 2, 0)
	MovementLoopAddLocation(NPC, 766.6, -19.73, -148.3, 2, 0)
	MovementLoopAddLocation(NPC, 766.09, -19.46, -152.27, 2, 0)
	MovementLoopAddLocation(NPC, 766.27, -18.97, -161.17, 2, 0)
	MovementLoopAddLocation(NPC, 776.6, -17.39, -164.54, 2, 0)
	MovementLoopAddLocation(NPC, 780.96, -17.39, -163.07, 2, 0)
	MovementLoopAddLocation(NPC, 784.32, -17.39, -161.94, 2, 0)
	MovementLoopAddLocation(NPC, 787.2, -16.22, -156.22, 2, 0)
	MovementLoopAddLocation(NPC, 787.48, -16.22, -151.69, 2, 25)
	MovementLoopAddLocation(NPC, 788.45, -16.22, -152.75, 2, 0)
	MovementLoopAddLocation(NPC, 783.04, -17.39, -161.18, 2, 0)
	MovementLoopAddLocation(NPC, 777.01, -17.39, -161.31, 2, 0)
	MovementLoopAddLocation(NPC, 768.87, -18.94, -161.22, 2, 0)
	MovementLoopAddLocation(NPC, 768.33, -19.01, -157.47, 2, 0)
	MovementLoopAddLocation(NPC, 768.21, -19.46, -151.77, 2, 0)
	MovementLoopAddLocation(NPC, 768.5, -19.95, -146.03, 2, 0)
	MovementLoopAddLocation(NPC, 768.02, -20.22, -140.08, 2, 0)
	MovementLoopAddLocation(NPC, 768.12, -20.48, -133.72, 2, 0)
	MovementLoopAddLocation(NPC, 771.08, -19.98, -128.11, 2, 0)
	MovementLoopAddLocation(NPC, 777.98, -19.95, -123.01, 2, 0)
	MovementLoopAddLocation(NPC, 782.93, -19.95, -115.75, 2, 0)
	MovementLoopAddLocation(NPC, 782.52, -19.97, -110.58, 2, 0)
	MovementLoopAddLocation(NPC, 777.49, -20.02, -102.39, 2, 0)
end


