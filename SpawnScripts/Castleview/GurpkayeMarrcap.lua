--[[
    Script Name    : SpawnScripts/Castleview/GurpkayeMarrcap.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.29 04:10:38
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
	MovementLoopAddLocation(NPC, 740.49, -15.21, -162.69, 2, 1)
	MovementLoopAddLocation(NPC, 740.49, -15.21, -162.69, 2, 25,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 739.38, -15.21, -163.17, 2, 0)
	MovementLoopAddLocation(NPC, 739.42, -15.21, -164.05, 2, 0)
	MovementLoopAddLocation(NPC, 741.5, -15.2, -163.84, 2, 0)
	MovementLoopAddLocation(NPC, 744.53, -15.2, -163.7, 2, 0)
	MovementLoopAddLocation(NPC, 747.2, -15.19, -164.75, 2, 0)
	MovementLoopAddLocation(NPC, 751.4, -15.24, -166.39, 2, 0)
	MovementLoopAddLocation(NPC, 755.57, -15.22, -166.64, 2, 0)
	MovementLoopAddLocation(NPC, 763.6, -18.94, -166.34, 2, 0)
	MovementLoopAddLocation(NPC, 766.01, -18.95, -166.4, 2, 0)
	MovementLoopAddLocation(NPC, 767.38, -18.96, -166.2, 2, 0)
	MovementLoopAddLocation(NPC, 768.2, -18.96, -163.08, 2, 0)
	MovementLoopAddLocation(NPC, 768.4, -19.21, -155.41, 2, 0)
	MovementLoopAddLocation(NPC, 768.34, -19.96, -142.22, 2, 0)
	MovementLoopAddLocation(NPC, 767.93, -20.45, -135.31, 2, 0)
	MovementLoopAddLocation(NPC, 769.73, -20.01, -130.35, 2, 0)
	MovementLoopAddLocation(NPC, 767.64, -19.98, -124.57, 2, 1)
	MovementLoopAddLocation(NPC, 767.64, -19.98, -124.57, 2, 25,"EcologyEmotes")
--	MovementLoopAddLocation(NPC, 765.75, -19.94, -124.61, 2, 0)
	MovementLoopAddLocation(NPC, 758.48, -20.04, -123.47, 2, 0)
	MovementLoopAddLocation(NPC, 756.21, -20.08, -122.58, 2, 0)
	MovementLoopAddLocation(NPC, 748.82, -21.25, -120.36, 2, 0)
	MovementLoopAddLocation(NPC, 746.64, -21.23, -116.42, 2, 0)
	MovementLoopAddLocation(NPC, 745.71, -21.24, -114.73, 2, 0)
	MovementLoopAddLocation(NPC, 746.24, -21.21, -110.15, 2, 0)
	MovementLoopAddLocation(NPC, 746.05, -21.22, -110, 2, 1)
	MovementLoopAddLocation(NPC, 746.05, -21.22, -110, 2, 30,"Drink")
	MovementLoopAddLocation(NPC, 746.05, -21.22, -110, 2, 30,"Drink")
	MovementLoopAddLocation(NPC, 745.12, -21.24, -109.23, 2, 0)
	MovementLoopAddLocation(NPC, 744.54, -21.25, -110.29, 2, 0)
	MovementLoopAddLocation(NPC, 745.46, -21.21, -116.51, 2, 0)
	MovementLoopAddLocation(NPC, 746.54, -21.29, -118.46, 2, 0)
	MovementLoopAddLocation(NPC, 755.89, -20.04, -120.85, 2, 0)
	MovementLoopAddLocation(NPC, 759.64, -19.97, -124.46, 2, 0)
	MovementLoopAddLocation(NPC, 763.28, -19.94, -127.07, 2, 0)
	MovementLoopAddLocation(NPC, 765.89, -20.5, -133.75, 2, 0)
	MovementLoopAddLocation(NPC, 766.22, -20.45, -134.59, 2, 0)
	MovementLoopAddLocation(NPC, 766.45, -20.22, -138.85, 2, 0)
	MovementLoopAddLocation(NPC, 766.96, -19.99, -142.56, 2, 0)
	MovementLoopAddLocation(NPC, 767.02, -19.99, -145.89, 2, 0)
	MovementLoopAddLocation(NPC, 766.13, -19.46, -150.47, 2, 0)
	MovementLoopAddLocation(NPC, 766.45, -18.97, -158.58, 2, 0)
	MovementLoopAddLocation(NPC, 766.32, -18.98, -164.09, 2, 0)
	MovementLoopAddLocation(NPC, 764.74, -18.97, -164.91, 2, 0)
	MovementLoopAddLocation(NPC, 755.53, -15.22, -164.68, 2, 0)
	MovementLoopAddLocation(NPC, 753.45, -15.2, -164.64, 2, 0)
	MovementLoopAddLocation(NPC, 753.58, -15.19, -163.21, 2, 0)
	MovementLoopAddLocation(NPC, 756.07, -15.19, -157.72, 2, 1)
	MovementLoopAddLocation(NPC, 756.07, -15.19, -157.72, 2, 25,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 754.58, -15.19, -158.74, 2, 0)
	MovementLoopAddLocation(NPC, 749.22, -15.18, -161.24, 2, 0)
	MovementLoopAddLocation(NPC, 746.8, -15.19, -161.39, 2, 0)
	MovementLoopAddLocation(NPC, 743.52, -15.2, -163.22, 2, 0)
end


 function Drink(NPC)
    PlayAnimation(NPC,11422)
    AddTimer(NPC,8000, "Drink2")
end

function Drink2(NPC)
  choice = math.random(1,3)   
        if choice == 1 then    
        PlayAnimation(NPC,891)
        elseif choice == 2 then    
        PlayAnimation(NPC,11422)
        else
        PlayAnimation(NPC,11668)
        end            
    AddTimer(NPC,6000, "Drink3")
end

function Drink3(NPC)
    PlayAnimation(NPC,11422)
end    