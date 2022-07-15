--[[
    Script Name    : SpawnScripts/Starcrest/ChadwickStrohn.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.29 02:06:14
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

function InRange(NPC,Spawn)
    GenericEcologyCallout(NPC, Spawn, faction)
end

function Door(NPC,Spawn)
    local door = GetSpawn(NPC, 2340076)
    UseWidget(door)
end

function FaceBar(NPC)
	SpawnSet(NPC, "heading", "340")
end	


function Drink(NPC)
    PlayAnimation(NPC,11422)--Drink
    AddTimer(NPC,8000, "Drink2")
end

function Drink2(NPC)
  choice = math.random(1,4)   
        if choice == 1 then    
        PlayAnimation(NPC,891)--Yawn
        elseif choice == 2 then    
        PlayAnimation(NPC,11422) --Drink
        elseif choice == 3 then    
        PlayAnimation(NPC,11152 )--Chuckle
        else
        PlayAnimation(NPC,11668)--Happy
        end            
    AddTimer(NPC,6000, "Drink3")
end

function Drink3(NPC)
    PlayAnimation(NPC,11422)--Drink
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 721.14, -20.47, 264.76, 2, 1,"FaceBar")
	MovementLoopAddLocation(NPC, 721.14, -20.47, 264.76, 2, 33,"Drink")
	MovementLoopAddLocation(NPC, 721.14, -20.47, 264.76, 2, 1,"FaceBar")
	MovementLoopAddLocation(NPC, 721.14, -20.47, 264.76, 2, 33,"Drink")
	MovementLoopAddLocation(NPC, 721.14, -20.47, 264.76, 2, 1,"FaceBar")
	MovementLoopAddLocation(NPC, 721.14, -20.47, 264.76, 2, 33,"Drink")
	MovementLoopAddLocation(NPC, 721.51, -20.46, 264.45, 2, 0)
	MovementLoopAddLocation(NPC, 724.6, -20.46, 265.36, 2, 0)
	MovementLoopAddLocation(NPC, 731.57, -20.46, 267.71, 2, 2,"Door")
	MovementLoopAddLocation(NPC, 733.14, -20.44, 273.19, 2, 0)
	MovementLoopAddLocation(NPC, 742.87, -20.59, 272.5, 2, 0)
	MovementLoopAddLocation(NPC, 757.17, -20.56, 271.45, 2, 0)
	MovementLoopAddLocation(NPC, 770.17, -20.18, 268.23, 2, 1)
	MovementLoopAddLocation(NPC, 770.17, -20.18, 268.23, 2, 45,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 769.92, -20.29, 270.06, 2, 0)
	MovementLoopAddLocation(NPC, 762.61, -20.45, 273.78, 2, 0)
	MovementLoopAddLocation(NPC, 756.2, -20.53, 273.95, 2, 0)
	MovementLoopAddLocation(NPC, 733.2, -20.39, 278.06, 2, 0)
	MovementLoopAddLocation(NPC, 723.67, -20.41, 281.84, 2, 0)
	MovementLoopAddLocation(NPC, 714.94, -19.96, 281.85, 2, 1)
	MovementLoopAddLocation(NPC, 714.94, -19.96, 281.85, 2, 33,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 714.94, -19.96, 281.85, 2, 1)
	MovementLoopAddLocation(NPC, 715.11, -20.1, 282.71, 2, 0)
	MovementLoopAddLocation(NPC, 719.85, -20.25, 285.91, 2, 0)
	MovementLoopAddLocation(NPC, 731.41, -20.44, 299.04, 2, 0)
	MovementLoopAddLocation(NPC, 741.8, -20.35, 307.52, 2, 1)
	MovementLoopAddLocation(NPC, 741.8, -20.35, 307.52, 2, 33,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 740.17, -20.35, 307.49, 2, 0)
	MovementLoopAddLocation(NPC, 736.37, -20.43, 307.91, 2, 0)
	MovementLoopAddLocation(NPC, 731.57, -20.53, 319.44, 2, 0)
	MovementLoopAddLocation(NPC, 728.9, -20.44, 324.22, 2, 0)
	MovementLoopAddLocation(NPC, 737.25, -24.58, 331.81, 2, 0)
	MovementLoopAddLocation(NPC, 741.07, -24.71, 332.39, 2, 0)
	MovementLoopAddLocation(NPC, 751.24, -24.68, 342.43, 2, 0)
	MovementLoopAddLocation(NPC, 762.92, -25.1, 337.17, 2, 0)
	MovementLoopAddLocation(NPC, 789.45, -25.03, 326.82, 2, 0)
	MovementLoopAddLocation(NPC, 803.05, -25.81, 322.74, 2, 1)
	MovementLoopAddLocation(NPC, 803.05, -25.81, 322.74, 2, 33,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 803.6, -25.85, 323.19, 2, 0)
	MovementLoopAddLocation(NPC, 803.66, -25.76, 320.71, 2, 0)
	MovementLoopAddLocation(NPC, 813.02, -25.85, 315.74, 2, 0)
	MovementLoopAddLocation(NPC, 816.04, -25.77, 311.51, 2, 1)
	MovementLoopAddLocation(NPC, 816.04, -25.77, 311.51, 2, 15,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 811.27, -25.29, 308.25, 2, 0)
	MovementLoopAddLocation(NPC, 800.87, -20.28, 301.11, 2, 0)
	MovementLoopAddLocation(NPC, 793.94, -20.52, 293.89, 2, 0)
	MovementLoopAddLocation(NPC, 788.5, -20.53, 291.85, 2, 0)
	MovementLoopAddLocation(NPC, 780.62, -20.44, 291.12, 2, 0)
	MovementLoopAddLocation(NPC, 764.84, -20.4, 288.55, 2, 0)
	MovementLoopAddLocation(NPC, 757.07, -20.42, 283.51, 2, 0)
	MovementLoopAddLocation(NPC, 748.26, -20.55, 277.35, 2, 0)
	MovementLoopAddLocation(NPC, 742.32, -20.44, 276.29, 2, 0)
	MovementLoopAddLocation(NPC, 733.59, -20.44, 275.01, 2, 2,"Door")
	MovementLoopAddLocation(NPC, 730.18, -20.46, 267.02, 2, 0)
	MovementLoopAddLocation(NPC, 723.55, -20.46, 265.62, 2, 0)
	MovementLoopAddLocation(NPC, 722.12, -20.46, 266.63, 2, 0)
end


