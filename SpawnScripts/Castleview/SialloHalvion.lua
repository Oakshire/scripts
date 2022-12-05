--[[
    Script Name    : SpawnScripts/Castleview/SialloHalvion.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.29 04:10:30
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
	MovementLoopAddLocation(NPC, 763.09, -13.76, -103.71, 2, 1)
	MovementLoopAddLocation(NPC, 763.09, -13.76, -103.71, 2, 25,"Action2")
	MovementLoopAddLocation(NPC, 764, -13.73, -103.97, 2, 0)
	MovementLoopAddLocation(NPC, 761.35, -13.74, -96.57, 2, 0)
	MovementLoopAddLocation(NPC, 762.02, -13.73, -94.97, 2, 0)
	MovementLoopAddLocation(NPC, 763.23, -13.73, -94.83, 2, 0)
	MovementLoopAddLocation(NPC, 764.09, -13.7, -96.23, 2, 0)
	MovementLoopAddLocation(NPC, 767.92, -18.22, -106.78, 2, 0)
	MovementLoopAddLocation(NPC, 768.95, -18.22, -109.93, 2, 0)
	MovementLoopAddLocation(NPC, 767.72, -18.22, -112.22, 2, 0)
	MovementLoopAddLocation(NPC, 766.79, -18.22, -113.97, 2, 0)
	MovementLoopAddLocation(NPC, 762.61, -18.6, -115.67, 2, 0)
	MovementLoopAddLocation(NPC, 761.55, -19.43, -116.27, 2, 0)
	MovementLoopAddLocation(NPC, 760.24, -19.97, -116.78, 2, 0)
	MovementLoopAddLocation(NPC, 757.86, -19.94, -118.1, 2, 0)
	MovementLoopAddLocation(NPC, 754.07, -19.98, -118.49, 2, 1)
	MovementLoopAddLocation(NPC, 754.07, -19.98, -118.49, 2, 25,"Action2")
	MovementLoopAddLocation(NPC, 747.73, -21.3, -123.12, 2, 0)
	MovementLoopAddLocation(NPC, 747.45, -21.31, -123.43, 2, 1)
	MovementLoopAddLocation(NPC, 747.45, -21.31, -123.43, 2, 25,"Action")
	MovementLoopAddLocation(NPC, 746.32, -21.32, -122.02, 2, 0)
	MovementLoopAddLocation(NPC, 756.3, -19.99, -119.86, 2, 0)
	MovementLoopAddLocation(NPC, 760.65, -19.98, -123.13, 2, 0)
	MovementLoopAddLocation(NPC, 764.93, -19.94, -126.49, 2, 0)
	MovementLoopAddLocation(NPC, 772.04, -19.99, -127.07, 2, 0)
	MovementLoopAddLocation(NPC, 782.25, -19.95, -124.22, 2, 1)
	MovementLoopAddLocation(NPC, 782.25, -19.95, -124.22, 2, 25,"Action2")
	MovementLoopAddLocation(NPC, 781.39, -19.95, -123.45, 2, 0)
	MovementLoopAddLocation(NPC, 784.78, -19.93, -117.29, 2, 0)
	MovementLoopAddLocation(NPC, 789.47, -19.97, -119.23, 2, 0)
	MovementLoopAddLocation(NPC, 790.23, -18.38, -113.63, 2, 0)
	MovementLoopAddLocation(NPC, 789.46, -16.22, -107.16, 2, 0)
	MovementLoopAddLocation(NPC, 790.74, -16.22, -105.48, 2, 0)
	MovementLoopAddLocation(NPC, 791.64, -16.22, -105.36, 2, 0)
	MovementLoopAddLocation(NPC, 793.08, -16.22, -113.13, 2, 0)
	MovementLoopAddLocation(NPC, 793.41, -16.22, -120.93, 2, 0)
	MovementLoopAddLocation(NPC, 793.5, -16.22, -125.52, 2, 0)
	MovementLoopAddLocation(NPC, 795.83, -16.22, -128.22, 2, 0)
	MovementLoopAddLocation(NPC, 801.41, -16.22, -131.7, 2, 1)
	MovementLoopAddLocation(NPC, 801.41, -16.22, -131.7, 2, 25,"Action2")
	MovementLoopAddLocation(NPC, 800.55, -16.22, -132.64, 2, 0)
	MovementLoopAddLocation(NPC, 797.46, -16.22, -129.67, 2, 0)
	MovementLoopAddLocation(NPC, 793.2, -16.22, -125.07, 2, 0)
	MovementLoopAddLocation(NPC, 792.77, -16.22, -108.92, 2, 0)
	MovementLoopAddLocation(NPC, 791.69, -16.22, -105.3, 2, 0)
	MovementLoopAddLocation(NPC, 789.16, -16.22, -106.5, 2, 0)
	MovementLoopAddLocation(NPC, 789.14, -16.22, -107.57, 2, 0)
	MovementLoopAddLocation(NPC, 789.74, -17.73, -111.99, 2, 0)
	MovementLoopAddLocation(NPC, 788.79, -19.97, -118.05, 2, 0)
	MovementLoopAddLocation(NPC, 786.7, -19.93, -117.11, 2, 0)
	MovementLoopAddLocation(NPC, 781.89, -19.99, -108.44, 2, 0)
	MovementLoopAddLocation(NPC, 779.87, -19.48, -109.5, 2, 0)
	MovementLoopAddLocation(NPC, 777.11, -18.22, -110.62, 2, 0)
	MovementLoopAddLocation(NPC, 774.1, -18.22, -111.53, 2, 0)
	MovementLoopAddLocation(NPC, 770.08, -18.22, -109.24, 2, 0)
	MovementLoopAddLocation(NPC, 768.84, -18.22, -105.92, 2, 0)
	MovementLoopAddLocation(NPC, 767.17, -16.49, -102.2, 2, 0)
	MovementLoopAddLocation(NPC, 764.83, -13.69, -95.95, 2, 0)
	MovementLoopAddLocation(NPC, 762.88, -13.77, -94.16, 2, 0)
	MovementLoopAddLocation(NPC, 759.9, -13.79, -96.09, 2, 0)
	MovementLoopAddLocation(NPC, 760.81, -13.76, -101.31, 2, 0)
end


function Action(NPC,Spawn)
    choice = MakeRandomInt(1,3)
    if choice ==1 then
    PlayFlavor(NPC,"","","cheer",0,0)
    elseif choice ==2 then
    PlayFlavor(NPC,"","","applaude",0,0)
    elseif choice ==2 then
    PlayFlavor(NPC,"","","happy",0,0)
    end
end

function Action2(NPC)
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