--[[
    Script Name    : SpawnScripts/Castleview/Blurgg.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.29 04:10:34
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
waypoints(NPC)
SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    GenericRaceCheckHail(NPC, Spawn)
end

function InRange(NPC,Spawn)
    GenericRaceCheckCallout(NPC, Spawn)
    end
    

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 774.09, -16.22, -151.15, 2, 25)
	MovementLoopAddLocation(NPC, 777.35, -16.22, -152.51, 2, 0)
	MovementLoopAddLocation(NPC, 779.29, -16.22, -155.5, 2, 0)
	MovementLoopAddLocation(NPC, 780.99, -16.49, -157.5, 2, 0)
	MovementLoopAddLocation(NPC, 786.43, -16.47, -157.19, 2, 0)
	MovementLoopAddLocation(NPC, 791.95, -16.22, -154.42, 2, 0)
	MovementLoopAddLocation(NPC, 798.07, -16.22, -149.8, 2, 0)
	MovementLoopAddLocation(NPC, 798.66, -16.22, -143.97, 2, 0)
	MovementLoopAddLocation(NPC, 799.02, -16.22, -134.52, 2, 0)
	MovementLoopAddLocation(NPC, 796.59, -16.22, -129.69, 2, 0)
	MovementLoopAddLocation(NPC, 791.99, -16.22, -127.27, 2, 0)
	MovementLoopAddLocation(NPC, 787.67, -16.22, -128.3, 2, 0)
	MovementLoopAddLocation(NPC, 783.91, -16.22, -130.15, 2, 0)
	MovementLoopAddLocation(NPC, 777.98, -16.22, -132.18, 2, 0)
	MovementLoopAddLocation(NPC, 775.07, -16.22, -132.87, 2, 0)
	MovementLoopAddLocation(NPC, 771.87, -16.22, -136.91, 2, 25)
	MovementLoopAddLocation(NPC, 775.07, -16.22, -132.87, 2, 0)
--	MovementLoopAddLocation(NPC, 774.75, -16.22, -133.42, 2, 0)
	MovementLoopAddLocation(NPC, 783.2, -16.22, -129.66, 2, 0)
	MovementLoopAddLocation(NPC, 787.85, -16.22, -128.64, 2, 0)
	MovementLoopAddLocation(NPC, 789.99, -16.22, -127.7, 2, 0)
	MovementLoopAddLocation(NPC, 791.53, -16.22, -123.09, 2, 0)
	MovementLoopAddLocation(NPC, 793.14, -16.22, -118.86, 2, 0)
	MovementLoopAddLocation(NPC, 793.41, -16.22, -112.12, 2, 0)
	MovementLoopAddLocation(NPC, 798.4, -15.92, -106.69, 2, 25)
	MovementLoopAddLocation(NPC, 797.57, -16.01, -106.54, 2, 0)
	MovementLoopAddLocation(NPC, 795.8, -16.12, -106.22, 2, 0)
	MovementLoopAddLocation(NPC, 788.52, -16.22, -104.27, 2, 0)
	MovementLoopAddLocation(NPC, 789.23, -16.89, -109.73, 2, 0)
	MovementLoopAddLocation(NPC, 788.75, -19.97, -117.68, 2, 0)
	MovementLoopAddLocation(NPC, 787.84, -19.96, -117.61, 2, 0)
	MovementLoopAddLocation(NPC, 787.14, -19.95, -116.15, 2, 0)
	MovementLoopAddLocation(NPC, 785.51, -19.96, -112.73, 2, 0)
	MovementLoopAddLocation(NPC, 781.79, -19.94, -105.09, 2, 0)
	MovementLoopAddLocation(NPC, 780.31, -20.05, -101.14, 2, 0)
	MovementLoopAddLocation(NPC, 783.72, -21.17, -95.13, 2, 0)
	MovementLoopAddLocation(NPC, 782.97, -21, -90.53, 2, 25)
	MovementLoopAddLocation(NPC, 782.41, -20.07, -100.42, 2, 0)
	MovementLoopAddLocation(NPC, 782.7, -19.94, -106.11, 2, 0)
	MovementLoopAddLocation(NPC, 782.84, -19.95, -112.54, 2, 0)
	MovementLoopAddLocation(NPC, 780.97, -19.95, -119.28, 2, 0)
	MovementLoopAddLocation(NPC, 776.09, -19.95, -124.03, 2, 0)
	MovementLoopAddLocation(NPC, 771.39, -19.99, -126.31, 2, 0)
	MovementLoopAddLocation(NPC, 766.82, -19.99, -127.53, 2, 0)
	MovementLoopAddLocation(NPC, 766.17, -20.45, -135.39, 2, 0)
	MovementLoopAddLocation(NPC, 766.94, -19.99, -141.81, 2, 0)
	MovementLoopAddLocation(NPC, 767.16, -19.99, -144.02, 2, 0)
	MovementLoopAddLocation(NPC, 766.76, -19.73, -148.97, 2, 0)
	MovementLoopAddLocation(NPC, 765.86, -19.46, -152.19, 2, 0)
	MovementLoopAddLocation(NPC, 766.16, -18.97, -160.58, 2, 0)
	MovementLoopAddLocation(NPC, 769.53, -18.92, -162.54, 2, 0)
	MovementLoopAddLocation(NPC, 776.12, -17.39, -163.41, 2, 0)
	MovementLoopAddLocation(NPC, 778.59, -17.39, -163.34, 2, 0)
	MovementLoopAddLocation(NPC, 778.61, -16.22, -155.53, 2, 0)
	MovementLoopAddLocation(NPC, 777.82, -16.22, -153.63, 2, 0)
end


    