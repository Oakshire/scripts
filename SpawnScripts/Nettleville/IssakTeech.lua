--[[
    Script Name    : SpawnScripts/Nettleville/IssakTeech.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.21 08:06:54
    Script Purpose : 
                   : 
--]]


dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")		
    waypoints(NPC)
end

function hailed(NPC, Spawn)
GenericRaceCheckHail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
GenericRaceCheckCallout(NPC, Spawn, faction)
end

function FaceStreet(NPC)
	SpawnSet(NPC, "heading", "250")
end	

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 627.34, -22.48, 363.65, 2, 1)
	MovementLoopAddLocation(NPC, 627.34, -22.48, 363.65, 2, 55,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 627.85, -22.48, 363.98, 2, 0)
	MovementLoopAddLocation(NPC, 631.53, -22.53, 363.98, 2, 0)
	MovementLoopAddLocation(NPC, 632.12, -22.5, 362.6, 2, 0)
	MovementLoopAddLocation(NPC, 637.9, -22.33, 348.51, 2, 0)
	MovementLoopAddLocation(NPC, 640.59, -22.32, 345.05, 2, 0)
	MovementLoopAddLocation(NPC, 642.37, -22.32, 342.3, 2, 0)
	MovementLoopAddLocation(NPC, 638.14, -21.35, 336.49, 2, 1,"FaceStreet")
	MovementLoopAddLocation(NPC, 638.14, -21.35, 336.49, 2, 45,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 638.14, -21.35, 336.49, 2, 45,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 638.34, -21.35, 337.13, 2, 0)
	MovementLoopAddLocation(NPC, 639.83, -22.32, 341.67, 2, 0)
	MovementLoopAddLocation(NPC, 633.67, -22.38, 357.69, 2, 0)
	MovementLoopAddLocation(NPC, 636.25, -22.31, 368.73, 2, 0)
	MovementLoopAddLocation(NPC, 639.86, -23.52, 366.85, 2, 0)
	MovementLoopAddLocation(NPC, 642.62, -24.8, 364.49, 2, 0)
	MovementLoopAddLocation(NPC, 647.99, -24.84, 361.9, 2, 0)
	MovementLoopAddLocation(NPC, 653.52, -24.79, 364.01, 2, 0)
	MovementLoopAddLocation(NPC, 662.15, -24.43, 370.67, 2, 0)
	MovementLoopAddLocation(NPC, 662.84, -24.43, 370.82, 2, 1)
	MovementLoopAddLocation(NPC, 662.84, -24.43, 370.82, 2, 35,"Drink")
	MovementLoopAddLocation(NPC, 662.84, -24.43, 370.82, 2, 35,"Drink")
	MovementLoopAddLocation(NPC, 662.84, -24.43, 370.82, 2, 35,"Drink")
	MovementLoopAddLocation(NPC, 663.14, -24.44, 369.71, 2, 0)
	MovementLoopAddLocation(NPC, 657.77, -24.6, 369.07, 2, 0)
	MovementLoopAddLocation(NPC, 642.95, -24.79, 367.11, 2, 0)
	MovementLoopAddLocation(NPC, 640.62, -23.71, 368.52, 2, 0)
	MovementLoopAddLocation(NPC, 637.43, -22.27, 370.29, 2, 0)
	MovementLoopAddLocation(NPC, 635, -22.34, 369.13, 2, 0)
	MovementLoopAddLocation(NPC, 634.12, -22.42, 366.3, 2, 0)
	MovementLoopAddLocation(NPC, 631.24, -22.55, 364.34, 2, 0)
	MovementLoopAddLocation(NPC, 626.7, -22.41, 362.63, 2, 0)
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

