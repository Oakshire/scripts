--[[
    Script Name    : SpawnScripts/Graystone/NorvilleBurninghaunch.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.07 07:07:55
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/UnknownLanguage.lua")
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
SetPlayerProximityFunction(NPC, 5, "InRange", "LeaveRange")	
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    if not HasLanguage(Spawn,1)then
    FaceTarget(NPC, Spawn)    
    Garbled(NPC,Spawn)
    else
    if GetFactionAmount(Spawn,11)<0 then
        FactionCheckHail(NPC,Spawn,faction)
    else
	FaceTarget(NPC, Spawn)        
    local choice = math.random(1, 6)
	if choice == 1 then
		PlayFlavor(NPC, "", "Well its not easy being the best looking guy in town, but I think I pull it off well.", "flirt", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "I'm feeling stronger than usual today.", "charge", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Some of my friends tell me I'm weak.  I think its true, I've only been able to lift two goblins and an orc lately.", "pout", 1689589577, 4560189, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "", "Funny, the wound didn't smell like that yesterday.", "stinky", 1689589577, 4560189, Spawn)
	elseif choice == 5 then
		PlayFlavor(NPC, "", "Strength isn't just the size of your muscles... It's, well... Yeah it is.", "confused", 1689589577, 4560189, Spawn)
	elseif choice == 6 then
		PlayFlavor(NPC, "", "Darn. I chugged that barrel much slower than I chugged the last three.", "gutcramp", 1689589577, 4560189, Spawn)
	end
end
end
end
function InRange(NPC, Spawn) 
        if not HasLanguage(Spawn,1)then
        if math.random(1, 100) <= 25 then            
        Garbled(NPC,Spawn)
        end
        else
    if GetFactionAmount(Spawn,11)<0 then
        FactionCheckHail(NPC,Spawn,faction)
    else
        GenericEcologyCallout(NPC, Spawn, faction)                  
    end
end
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 870.35, -8.06, -128.44, 2, 0)
	MovementLoopAddLocation(NPC, 867.4, -8.06, -131.87, 2, 1)
	MovementLoopAddLocation(NPC, 867.4, -8.06, -131.87, 2, 30,"Drink")
	MovementLoopAddLocation(NPC, 867.4, -8.06, -131.87, 2, 30,"Drink")
	MovementLoopAddLocation(NPC, 867.33, -8.06, -132.14, 2, 0)
	MovementLoopAddLocation(NPC, 870.92, -8.06, -131.67, 2, 0)
	MovementLoopAddLocation(NPC, 880.01, -8.48, -130.6, 2, 0)
	MovementLoopAddLocation(NPC, 886, -11.06, -129.2, 2, 0)
	MovementLoopAddLocation(NPC, 886.66, -11.06, -126.1, 2, 0)
	MovementLoopAddLocation(NPC, 885.3, -13.85, -120.18, 2, 0)
	MovementLoopAddLocation(NPC, 883.27, -14.06, -118.39, 2, 0)
	MovementLoopAddLocation(NPC, 878.37, -14.06, -118.86, 2, 0)
	MovementLoopAddLocation(NPC, 872.46, -14.06, -120.13, 2, 0)
	MovementLoopAddLocation(NPC, 866.85, -14.06, -121.54, 2, 1)
	MovementLoopAddLocation(NPC, 866.85, -14.06, -121.54, 2, 18,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 866.53, -14.06, -123.24, 2, 0)
	MovementLoopAddLocation(NPC, 865.53, -14.06, -128.08, 2, 0)
	MovementLoopAddLocation(NPC, 859.09, -16.83, -129.35, 2, 0)
	MovementLoopAddLocation(NPC, 858.4, -17.06, -129.22, 2, 0)
	MovementLoopAddLocation(NPC, 857.68, -17.06, -128.33, 2, 0)
	MovementLoopAddLocation(NPC, 856.47, -20.06, -120.93, 2, 0)
	MovementLoopAddLocation(NPC, 856.35, -20.06, -118.38, 2, 1)
	MovementLoopAddLocation(NPC, 856.35, -20.06, -118.38, 2, 30,"Drink")
	MovementLoopAddLocation(NPC, 856.35, -20.06, -118.38, 2, 30,"Drink")
	MovementLoopAddLocation(NPC, 856.35, -20.06, -118.38, 2, 30,"Drink")
	MovementLoopAddLocation(NPC, 857.91, -20.06, -119.97, 2, 0)
	MovementLoopAddLocation(NPC, 854.64, -20.06, -121.51, 2, 0)
	MovementLoopAddLocation(NPC, 856.43, -17.06, -130.01, 2, 0)
	MovementLoopAddLocation(NPC, 859.48, -16.82, -130.97, 2, 0)
	MovementLoopAddLocation(NPC, 866.38, -14.06, -129.2, 2, 0)
	MovementLoopAddLocation(NPC, 869.75, -14.07, -125.45, 2, 0)
	MovementLoopAddLocation(NPC, 872.92, -14.06, -123.72, 2, 0)
	MovementLoopAddLocation(NPC, 876.78, -14.06, -119.83, 2, 0)
	MovementLoopAddLocation(NPC, 883.02, -14.06, -119.36, 2, 0)
	MovementLoopAddLocation(NPC, 884.11, -13.43, -121.28, 2, 0)
	MovementLoopAddLocation(NPC, 885.22, -11.06, -127.8, 2, 0)
	MovementLoopAddLocation(NPC, 877.26, -8.06, -129.52, 2, 0)
	MovementLoopAddLocation(NPC, 872.74, -8.06, -129.62, 2, 0)
end



function Drink(NPC)
    PlayAnimation(NPC,11422)
    AddTimer(NPC,8000, "Drink2")
end

function Drink2(NPC)
  choice = math.random(1,2)   
         if choice == 1 then    
            PlayAnimation(NPC,891)
        else
            PlayAnimation(NPC,11668)
        end            
    AddTimer(NPC,6000, "Drink3")
end

function Drink3(NPC)
    PlayAnimation(NPC,11422)
end
