--[[
    Script Name    : SpawnScripts/Nettleville/DuniDiiun.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.22 01:06:15
    Script Purpose : 
                   : 
--]]


dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
SetPlayerProximityFunction(NPC, 5, "InRange", "LeaveRange")	
end

function InRange(NPC, Spawn) 
    if GetFactionAmount(Spawn,11)<0 then
        FactionCheckingCallout(NPC, Spawn, faction)
        else
    GenericDrunkCallout(NPC, Spawn, faction)    
    end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    if GetFactionAmount(Spawn,11)<0 then
        FactionChecking(NPC, Spawn, faction)
    else
    GenericDrunkHail(NPC, Spawn, faction)
end
end



function waypoints(NPC)
	MovementLoopAddLocation(NPC, 663.26, -24.48, 368.72, 2, 8)
	MovementLoopAddLocation(NPC, 663.26, -24.48, 368.72, 2, 33,"Drink")
	MovementLoopAddLocation(NPC, 663.26, -24.48, 368.72, 2, 32,"Drink")
	MovementLoopAddLocation(NPC, 663.26, -24.48, 368.72, 2, 35,"Drink")
	MovementLoopAddLocation(NPC, 664.16, -24.49, 368.61, 2, 0)
	MovementLoopAddLocation(NPC, 660.95, -24.49, 369.02, 2, 0)
	MovementLoopAddLocation(NPC, 657.5, -24.58, 372.57, 2, 1)
	MovementLoopAddLocation(NPC, 657.5, -24.58, 372.57, 2, 35,"Drink")
	MovementLoopAddLocation(NPC, 657.5, -24.58, 372.57, 2, 35,"Drink")
	MovementLoopAddLocation(NPC, 657.5, -24.58, 372.57, 2, 35,"Drink")
	MovementLoopAddLocation(NPC, 656.78, -24.6, 373.31, 2, 0)
	MovementLoopAddLocation(NPC, 658.99, -24.52, 371.03, 2, 0)
	MovementLoopAddLocation(NPC, 663.4, -24.43, 373.29, 2, 0)
	MovementLoopAddLocation(NPC, 665.49, -24.52, 373.04, 2, 0)
	MovementLoopAddLocation(NPC, 667.08, -24.55, 372.37, 2, 0)
	MovementLoopAddLocation(NPC, 672.4, -24.7, 369.82, 2, 0)
	MovementLoopAddLocation(NPC, 674.28, -24.74, 368.21, 2, 0)
	MovementLoopAddLocation(NPC, 673.38, -24.71, 367.07, 2, 0)
	MovementLoopAddLocation(NPC, 671.32, -24.65, 366.31, 2, 1)
	MovementLoopAddLocation(NPC, 671.32, -24.65, 366.31, 2, 35,"Drink")
	MovementLoopAddLocation(NPC, 671.32, -24.65, 366.31, 2, 35,"Drink")
	MovementLoopAddLocation(NPC, 671.32, -24.65, 366.31, 2, 35,"Drink")
	MovementLoopAddLocation(NPC, 670.35, -24.63, 366.46, 2, 0)
	MovementLoopAddLocation(NPC, 669.65, -24.61, 366.58, 2, 0)
	MovementLoopAddLocation(NPC, 669.74, -24.62, 364.82, 2, 0)
	MovementLoopAddLocation(NPC, 669.79, -24.64, 363.81, 2, 0)
	MovementLoopAddLocation(NPC, 668.98, -24.68, 362, 2, 0)
	MovementLoopAddLocation(NPC, 665.12, -24.8, 347.99, 2, 1)
	MovementLoopAddLocation(NPC, 665.12, -24.8, 347.99, 2, 35,"Drink")
	MovementLoopAddLocation(NPC, 665.12, -24.8, 347.99, 2, 35,"Drink")
	MovementLoopAddLocation(NPC, 665.12, -24.8, 347.99, 2, 35,"Drink")
	MovementLoopAddLocation(NPC, 665.03, -24.81, 349.8, 2, 0)
	MovementLoopAddLocation(NPC, 660.41, -24.83, 358.48, 2, 0)
	MovementLoopAddLocation(NPC, 660.88, -24.52, 368.02, 2, 0)

end




function Drink(NPC)
    PlayAnimation(NPC,11422)
    AddTimer(NPC,8000, "Drink2")
end

function Drink2(NPC)
  choice = math.random(1,4)   
        if choice == 1 then    
        PlayAnimation(NPC,891)
        elseif choice == 2 then    
        PlayAnimation(NPC,11422)
        elseif choice == 3 then    
        PlayFlavor(NPC,"","","hungry",0,0)
        else
        PlayAnimation(NPC,11668)
        end            
    AddTimer(NPC,6000, "Drink3")
end

function Drink3(NPC)
    PlayAnimation(NPC,11422)
end
   