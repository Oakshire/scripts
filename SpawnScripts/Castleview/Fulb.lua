--[[
    Script Name    : SpawnScripts/Castleview/Fulb.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.29 04:10:26
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
	MovementLoopAddLocation(NPC, 705.76, -14.94, -151.09, 2, 1)
	MovementLoopAddLocation(NPC, 705.76, -14.94, -151.09, 2, 25,"Action")
	MovementLoopAddLocation(NPC, 707.19, -14.97, -150.49, 2, 0)
	MovementLoopAddLocation(NPC, 710.03, -16.16, -152.8, 2, 0)
	MovementLoopAddLocation(NPC, 713.93, -16.15, -155.36, 2, 0)
	MovementLoopAddLocation(NPC, 719.62, -16.16, -157.15, 2, 0)
	MovementLoopAddLocation(NPC, 725.64, -15.22, -156.79, 2, 0)
	MovementLoopAddLocation(NPC, 729.44, -15.19, -154.47, 2, 1)
	MovementLoopAddLocation(NPC, 730.62, -15.19, -155.33, 2, 25,"Action")
	MovementLoopAddLocation(NPC, 731.91, -15.18, -154.57, 2, 0)
	MovementLoopAddLocation(NPC, 733.46, -15.18, -152.58, 2, 0)
	MovementLoopAddLocation(NPC, 733.85, -15.18, -152.74, 2, 0)
	MovementLoopAddLocation(NPC, 737.51, -15.19, -158.29, 2, 0)
	MovementLoopAddLocation(NPC, 742.72, -15.2, -160.83, 2, 0)
	MovementLoopAddLocation(NPC, 752.12, -15.24, -166.5, 2, 0)
	MovementLoopAddLocation(NPC, 756.77, -15.51, -166.06, 2, 0)
	MovementLoopAddLocation(NPC, 765.11, -18.95, -166.16, 2, 0)
	MovementLoopAddLocation(NPC, 776.09, -17.39, -166.72, 2, 0)
	MovementLoopAddLocation(NPC, 777.52, -17.39, -166.86, 2, 0)
	MovementLoopAddLocation(NPC, 788.3, -17.43, -168.18, 2, 1)
	MovementLoopAddLocation(NPC, 788.3, -17.43, -168.18, 2, 25,"Action")
	MovementLoopAddLocation(NPC, 787.14, -17.39, -166.33, 2, 0)
	MovementLoopAddLocation(NPC, 777.52, -17.39, -165.32, 2, 0)
	MovementLoopAddLocation(NPC, 765.38, -18.97, -164.67, 2, 0)
	MovementLoopAddLocation(NPC, 755.03, -15.22, -164.72, 2, 0)
	MovementLoopAddLocation(NPC, 748.06, -15.19, -161.42, 2, 0)
	MovementLoopAddLocation(NPC, 742.78, -15.18, -158.9, 2, 0)
	MovementLoopAddLocation(NPC, 736.67, -15.19, -157.62, 2, 0)
	MovementLoopAddLocation(NPC, 732.39, -15.2, -157.03, 2, 0)
	MovementLoopAddLocation(NPC, 720.91, -16.13, -163.28, 2, 1)
	MovementLoopAddLocation(NPC, 720.91, -16.13, -163.28, 2, 25,"Action")
	MovementLoopAddLocation(NPC, 720.17, -16.13, -163.37, 2, 0)
	MovementLoopAddLocation(NPC, 716.58, -16.17, -157.54, 2, 0)
	MovementLoopAddLocation(NPC, 709.96, -15.26, -149.86, 2, 0)
	MovementLoopAddLocation(NPC, 708.61, -14.96, -148.65, 2, 0)
	MovementLoopAddLocation(NPC, 705.51, -14.95, -150.67, 2, 0)
end


