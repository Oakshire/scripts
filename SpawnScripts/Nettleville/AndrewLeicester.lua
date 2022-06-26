--[[
    Script Name    : SpawnScripts/Nettleville/AndrewLeicester.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.21 08:06:55
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
SetPlayerProximityFunction(NPC, 5, "InRange", "LeaveRange")	
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    GenericEcologyHail(NPC, Spawn, faction)
    end


function InRange(NPC, Spawn) 
 if GetFactionAmount(Spawn,11)<0 then
    GenericEcologyCallout(NPC, Spawn, faction)
    end
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 667.08, -24.59, 364.59, 2, 1)
	MovementLoopAddLocation(NPC, 667.08, -24.59, 364.59, 2, 45,"Drink")
	MovementLoopAddLocation(NPC, 667.08, -24.59, 364.59, 2, 45,"Drink")
	MovementLoopAddLocation(NPC, 667.08, -24.59, 364.59, 2, 45,"Drink")
    MovementLoopAddLocation(NPC, 666.99, -24.57, 365.05, 2, 0)
    MovementLoopAddLocation(NPC, 666.08, -24.62, 363.20, 2, 0)
    MovementLoopAddLocation(NPC, 659.52, -24.64, 365.4, 2, 0)
	MovementLoopAddLocation(NPC, 654.11, -24.7, 367.96, 2, 0)
	MovementLoopAddLocation(NPC, 645.01, -24.73, 373.11, 2, 0)
	MovementLoopAddLocation(NPC, 634.48, -24.97, 378.5, 2, 0)
	MovementLoopAddLocation(NPC, 631.31, -25.16, 379.01, 2, 0)
	MovementLoopAddLocation(NPC, 620.32, -25.97, 376.09, 2, 0)
	MovementLoopAddLocation(NPC, 615.55, -26.3, 376.08, 2, 0)
	MovementLoopAddLocation(NPC, 599.87, -26.48, 379.27, 2, 0)
	MovementLoopAddLocation(NPC, 599.87, -26.48, 379.27, 2, 0)
	MovementLoopAddLocation(NPC, 599.78, -26.49, 379.78, 2, 0)
	MovementLoopAddLocation(NPC, 599.93, -26.51, 381.12, 2, 1)
	MovementLoopAddLocation(NPC, 599.93, -26.51, 381.12, 2, 22,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 599.93, -26.51, 381.12, 2, 25,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 598.16, -26.47, 379.93, 2, 0)
	MovementLoopAddLocation(NPC, 595.46, -26.42, 379.64, 2, 0)
	MovementLoopAddLocation(NPC, 591.84, -26.41, 378.62, 2, 0)
	MovementLoopAddLocation(NPC, 589.6, -26.4, 378.57, 2, 0)
	MovementLoopAddLocation(NPC, 586.74, -25.76, 373.23, 2, 1,"FaceGate")
	MovementLoopAddLocation(NPC, 586.74, -25.76, 373.23, 2, 35,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 586.74, -25.76, 373.23, 2, 35,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 586.73, -26.21, 375.45, 2, 0)
	MovementLoopAddLocation(NPC, 592.93, -26.1, 376.45, 2, 0)
	MovementLoopAddLocation(NPC, 592.93, -26.1, 376.45, 2, 0)
	MovementLoopAddLocation(NPC, 592.93, -26.1, 376.45, 2, 0)
	MovementLoopAddLocation(NPC, 613.9, -26.35, 374.34, 2, 0)
	MovementLoopAddLocation(NPC, 619.35, -25.86, 371.68, 2, 0)
	MovementLoopAddLocation(NPC, 624.19, -25.35, 372.34, 2, 0)
	MovementLoopAddLocation(NPC, 632.79, -25.02, 376.76, 2, 0)
	MovementLoopAddLocation(NPC, 639.53, -24.83, 375.31, 2, 0)
	MovementLoopAddLocation(NPC, 646.24, -24.72, 373.54, 2, 0)
	MovementLoopAddLocation(NPC, 653.44, -24.72, 370.2, 2, 0)
	MovementLoopAddLocation(NPC, 658.51, -24.62, 367.3, 2, 0)
	MovementLoopAddLocation(NPC, 666.95, -24.64, 362.82, 2, 0)
end

 function FaceGate(NPC)
    SetHeading(NPC,153)
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

