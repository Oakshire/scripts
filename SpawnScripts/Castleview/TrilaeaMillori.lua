--[[
    Script Name    : SpawnScripts/Castleview/TrilaeaMillori.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.29 04:10:02
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
    GenericEcologyHail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
    GenericEcologyCallout(NPC, Spawn, faction)
    end
    

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 769.75, -18.91, -165.94, 2, 0)
	MovementLoopAddLocation(NPC, 777.37, -17.39, -166.56, 2, 0)
	MovementLoopAddLocation(NPC, 781.6, -17.39, -161.92, 2, 0)
	MovementLoopAddLocation(NPC, 788.41, -16.22, -155.63, 2, 0)
	MovementLoopAddLocation(NPC, 796.57, -16.22, -152.08, 2, 0)
	MovementLoopAddLocation(NPC, 801.75, -16.22, -145.68, 2, 25)
	MovementLoopAddLocation(NPC, 800.95, -16.22, -145.27, 2, 0)
	MovementLoopAddLocation(NPC, 801.06, -16.22, -141.26, 2, 0)
	MovementLoopAddLocation(NPC, 800.29, -16.22, -136.36, 2, 0)
	MovementLoopAddLocation(NPC, 798, -16.22, -130.5, 2, 0)
	MovementLoopAddLocation(NPC, 797.18, -16.22, -128.43, 2, 0)
	MovementLoopAddLocation(NPC, 791.51, -16.22, -124.58, 2, 25)
	MovementLoopAddLocation(NPC, 791.19, -16.22, -122.77, 2, 0)
	MovementLoopAddLocation(NPC, 793.01, -16.22, -123.1, 2, 0)
	MovementLoopAddLocation(NPC, 793.34, -16.22, -125.53, 2, 0)
	MovementLoopAddLocation(NPC, 796.46, -16.22, -130.65, 2, 0)
	MovementLoopAddLocation(NPC, 797.71, -16.22, -143, 2, 0)
	MovementLoopAddLocation(NPC, 799.43, -16.22, -151.27, 2, 25)
	MovementLoopAddLocation(NPC, 799.52, -16.22, -152.17, 2, 0)
	MovementLoopAddLocation(NPC, 795.01, -16.22, -152.68, 2, 0)
	MovementLoopAddLocation(NPC, 789.78, -16.22, -154.91, 2, 0)
	MovementLoopAddLocation(NPC, 785.73, -16.22, -155.62, 2, 0)
	MovementLoopAddLocation(NPC, 783.84, -16.22, -155.71, 2, 0)
	MovementLoopAddLocation(NPC, 783.72, -15.26, -153.05, 2, 2,"Door")
	MovementLoopAddLocation(NPC, 783.47, -15.23, -148.81, 2, 0)
	MovementLoopAddLocation(NPC, 785.61, -15.22, -144.61, 2, 0)
	MovementLoopAddLocation(NPC, 786.61, -15.22, -145.02, 2, 30)
	MovementLoopAddLocation(NPC, 784.5, -15.22, -143.55, 2, 0)
	MovementLoopAddLocation(NPC, 784.02, -15.22, -145.58, 2, 0)
	MovementLoopAddLocation(NPC, 783.06, -15.23, -148.08, 2, 2,"Door")
	MovementLoopAddLocation(NPC, 782.99, -15.23, -152.35, 2, 0)
	MovementLoopAddLocation(NPC, 782.76, -16.22, -155.74, 2, 0)
	MovementLoopAddLocation(NPC, 782.43, -17.39, -160.89, 2, 0)
	MovementLoopAddLocation(NPC, 776.42, -17.39, -162.5, 2, 0)
	MovementLoopAddLocation(NPC, 767.05, -18.98, -164.49, 2, 0)
	MovementLoopAddLocation(NPC, 756.12, -15.23, -164.81, 2, 0)
	MovementLoopAddLocation(NPC, 753.46, -15.2, -164.75, 2, 0)
	MovementLoopAddLocation(NPC, 749.19, -15.19, -161.4, 2, 0)
	MovementLoopAddLocation(NPC, 744.45, -15.18, -159.22, 2, 0)
	MovementLoopAddLocation(NPC, 736.85, -15.2, -159.14, 2, 0)
	MovementLoopAddLocation(NPC, 730.83, -15.21, -158.23, 2, 0)
	MovementLoopAddLocation(NPC, 730.5, -15.23, -162.23, 2, 25)
	MovementLoopAddLocation(NPC, 729.66, -15.22, -163.28, 2, 0)
	MovementLoopAddLocation(NPC, 728.96, -15.21, -157.95, 2, 0)
	MovementLoopAddLocation(NPC, 735.85, -15.2, -157.97, 2, 0)
	MovementLoopAddLocation(NPC, 741.08, -15.19, -159.56, 2, 0)
	MovementLoopAddLocation(NPC, 746.8, -15.2, -163.87, 2, 0)
	MovementLoopAddLocation(NPC, 749.2, -15.19, -165.57, 2, 0)
	MovementLoopAddLocation(NPC, 753.8, -15.24, -166.24, 2, 0)
	MovementLoopAddLocation(NPC, 755.78, -15.24, -166.26, 2, 0)
	MovementLoopAddLocation(NPC, 764.9, -18.94, -166.34, 2, 0)
end

 function Door(NPC,Spawn)
    local door = GetSpawn(NPC, 2360077)
    UseWidget(door)
end  
    