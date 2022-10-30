--[[
    Script Name    : SpawnScripts/Castleview/TrinatalisValdamaya.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.29 04:10:08
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
	MovementLoopAddLocation(NPC, 702.16, -15.69, -138.8, 2, 1)
	MovementLoopAddLocation(NPC, 702.16, -15.69, -138.8, 2, 25,"Action")
	MovementLoopAddLocation(NPC, 702.05, -15.69, -137.97, 2, 0)
	MovementLoopAddLocation(NPC, 703.61, -15.69, -138.4, 2, 0)
	MovementLoopAddLocation(NPC, 702.71, -15.69, -140.22, 2, 0)
	MovementLoopAddLocation(NPC, 698.17, -15.69, -143.19, 2, 0)
	MovementLoopAddLocation(NPC, 696.17, -15.69, -144.37, 2, 1)
	MovementLoopAddLocation(NPC, 696.17, -15.69, -144.37, 2, 25,"Action")
	MovementLoopAddLocation(NPC, 695.75, -15.69, -144.18, 2, 0)
	MovementLoopAddLocation(NPC, 696.85, -15.69, -143.24, 2, 0)
	MovementLoopAddLocation(NPC, 701.53, -15.69, -144.15, 2, 0)
	MovementLoopAddLocation(NPC, 704.67, -14.69, -146.34, 2, 2,"Door1")
	MovementLoopAddLocation(NPC, 707.31, -14.89, -148.85, 2, 0)
	MovementLoopAddLocation(NPC, 708.1, -14.97, -149.8, 2, 0)
	MovementLoopAddLocation(NPC, 710.36, -16.16, -152.83, 2, 0)
	MovementLoopAddLocation(NPC, 714.46, -16.16, -153.88, 2, 0)
	MovementLoopAddLocation(NPC, 719.97, -16.16, -155.85, 2, 0)
	MovementLoopAddLocation(NPC, 726.35, -15.21, -156.74, 2, 0)
	MovementLoopAddLocation(NPC, 730.93, -15.22, -163.29, 2, 1)
	MovementLoopAddLocation(NPC, 730.93, -15.22, -163.29, 2, 25,"Action")
	MovementLoopAddLocation(NPC, 729.79, -15.22, -164.02, 2, 0)
	MovementLoopAddLocation(NPC, 729.63, -15.23, -162.56, 2, 0)
	MovementLoopAddLocation(NPC, 732.47, -15.21, -158.06, 2, 0)
	MovementLoopAddLocation(NPC, 734.54, -15.17, -153.59, 2, 0)
	MovementLoopAddLocation(NPC, 734.87, -15.19, -142.08, 2, 0)
	MovementLoopAddLocation(NPC, 735.1, -15.19, -141.85, 2, 0)
	MovementLoopAddLocation(NPC, 736.82, -14.71, -140.91, 2, 2,"Door2")
	MovementLoopAddLocation(NPC, 739.2, -14.69, -140.35, 2, 0)
	MovementLoopAddLocation(NPC, 742.03, -14.69, -140.83, 2, 0)
	MovementLoopAddLocation(NPC, 744.89, -14.69, -142.01, 2, 0)
	MovementLoopAddLocation(NPC, 745.69, -14.69, -149.09, 2, 1)
	MovementLoopAddLocation(NPC, 745.69, -14.69, -149.09, 2, 25,"Action")
	MovementLoopAddLocation(NPC, 746.22, -14.69, -149.82, 2, 0)
	MovementLoopAddLocation(NPC, 747.28, -14.69, -147.38, 2, 0)
	MovementLoopAddLocation(NPC, 749.4, -14.69, -139.72, 2, 1)
	MovementLoopAddLocation(NPC, 749.4, -14.69, -139.72, 2, 25,"Action")
	MovementLoopAddLocation(NPC, 748.35, -14.69, -139.96, 2, 0)
	MovementLoopAddLocation(NPC, 746.35, -14.69, -141.34, 2, 0)
	MovementLoopAddLocation(NPC, 742.87, -14.69, -141.55, 2, 0)
	MovementLoopAddLocation(NPC, 739.71, -14.69, -140.13, 2, 2,"Door2")
	MovementLoopAddLocation(NPC, 734.56, -15.19, -140.21, 2, 0)
	MovementLoopAddLocation(NPC, 734.85, -15.24, -149.07, 2, 0)
	MovementLoopAddLocation(NPC, 729.99, -15.49, -150.73, 2, 0)
	MovementLoopAddLocation(NPC, 726.56, -15.93, -150.68, 2, 0)
	MovementLoopAddLocation(NPC, 716.27, -16.2, -147.73, 2, 1)
	MovementLoopAddLocation(NPC, 716.27, -16.2, -147.73, 2, 25,"Action")
	MovementLoopAddLocation(NPC, 716.62, -16.21, -147.08, 2, 0)
	MovementLoopAddLocation(NPC, 717.69, -16.23, -147.07, 2, 0)
	MovementLoopAddLocation(NPC, 718.04, -16.22, -149.7, 2, 0)
	MovementLoopAddLocation(NPC, 716.76, -16.19, -151.76, 2, 0)
	MovementLoopAddLocation(NPC, 713.67, -16.16, -152.99, 2, 0)
	MovementLoopAddLocation(NPC, 708.53, -14.96, -148.87, 2, 0)
	MovementLoopAddLocation(NPC, 705.47, -14.69, -146.56, 2, 2,"Door1")
	MovementLoopAddLocation(NPC, 702.42, -15.69, -143.61, 2, 0)
end

function Door1(NPC,Spawn)
    local door = GetSpawn(NPC, 2360079)
    UseWidget(door)
end

function Door2(NPC,Spawn)
    local door2 = GetSpawn(NPC, 2360078)
    UseWidget(door2)
end


function Action(NPC)
    local choice = MakeRandomInt(1, 4)
    if choice == 1 then
        PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
    elseif choice == 2 then
        PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
    elseif choice == 3 then
        PlayFlavor(NPC, "", "", "sniff", 0, 0, Spawn)
    elseif choice == 4 then
        PlayFlavor(NPC, "", "", "tap", 0, 0, Spawn)
    end
end      