--[[
    Script Name    : SpawnScripts/QeynosHarbor/GerloffCrazyEyes.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.11 01:06:49
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
   

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 777.66, -20.64, 15.92, 2, 1)
	MovementLoopAddLocation(NPC, 777.66, -20.64, 15.92, 2, 12,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 777.66, -20.64, 15.92, 2, 12,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 773.61, -20.64, 11.52, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 763.7, -20.66, 7.77, 2, 0)
	MovementLoopAddLocation(NPC, 765.44, -21.05, -8.36, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 756.01, -21.03, -15.21, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 755.72, -21.05, -8.97, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 767.58, -20.64, -28.13, 2, 0)
	MovementLoopAddLocation(NPC, 768.63, -20.64, -28.31, 2, 0)
	MovementLoopAddLocation(NPC, 768.63, -20.64, -28.31, 2, 1)
	MovementLoopAddLocation(NPC, 768.63, -20.64, -28.31, 2, 25,"Drink")
	MovementLoopAddLocation(NPC, 771.72, -20.64, -25.86, 2, 0)
	MovementLoopAddLocation(NPC, 777.57, -20.64, -34.14, 2, 0)
	MovementLoopAddLocation(NPC, 775.45, -20.64, -35.16, 2, 0)
	MovementLoopAddLocation(NPC, 769.03, -20.97, -40.61, 2, 1)
	MovementLoopAddLocation(NPC, 769.03, -20.97, -40.61, 2, 25,"Drink")
	MovementLoopAddLocation(NPC, 750.78, -21.35, -41.55, 2, 0)
	MovementLoopAddLocation(NPC, 740.06, -21.39, -47.19, 2, 0)
	MovementLoopAddLocation(NPC, 735.32, -21.39, -45.98, 2, math.random(3,8))
	MovementLoopAddLocation(NPC, 756.74, -21.01, -68.08, 2, math.random(3,8))
	MovementLoopAddLocation(NPC, 759.67, -21.21, -65.33, 2, math.random(3,8))
	MovementLoopAddLocation(NPC, 766.02, -20.51, -70.45, 2, 0)
	MovementLoopAddLocation(NPC, 761, -21.02, -38.83, 2, math.random(3,8))
	MovementLoopAddLocation(NPC, 750.46, -21.19, -32.32, 2, math.random(3,8))
	MovementLoopAddLocation(NPC, 734.62, -21.36, -26.7, 2, math.random(3,8))
	MovementLoopAddLocation(NPC, 712.4, -20.73, -27.97, 2, 0)
	MovementLoopAddLocation(NPC, 717.35, -20.64, -11.08, 2, 0)
	MovementLoopAddLocation(NPC, 725.69, -20.66, -7.15, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 725.54, -20.76, -13.37, 2, math.random(3,8))
	MovementLoopAddLocation(NPC, 730.24, -20.79, -10.6, 2, math.random(3,8))
	MovementLoopAddLocation(NPC, 725.54, -20.76, -13.37, 2, 0)
	MovementLoopAddLocation(NPC, 725.69, -20.66, -7.15, 2, 0)
	MovementLoopAddLocation(NPC, 717.35, -20.64, -11.08, 2, 0)
	MovementLoopAddLocation(NPC, 712.4, -20.73, -27.97, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 734.62, -21.36, -26.7, 2, math.random(3,8))
	MovementLoopAddLocation(NPC, 750.46, -21.19, -32.32, 2, math.random(3,8))
	MovementLoopAddLocation(NPC, 761, -21.02, -38.83, 2, 0)
	MovementLoopAddLocation(NPC, 766.02, -20.51, -70.45, 2, 0)
	MovementLoopAddLocation(NPC, 759.67, -21.21, -65.33, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 756.74, -21.01, -68.08, 2, math.random(3,8))
	MovementLoopAddLocation(NPC, 735.32, -21.39, -45.98, 2, math.random(3,8))
	MovementLoopAddLocation(NPC, 740.06, -21.39, -47.19, 2, 0)
	MovementLoopAddLocation(NPC, 750.78, -21.35, -41.55, 2, 0)
	MovementLoopAddLocation(NPC, 769.03, -20.97, -40.61, 2, 1)
	MovementLoopAddLocation(NPC, 769.03, -20.97, -40.61, 2, 25,"Drink")
	MovementLoopAddLocation(NPC, 775.45, -20.64, -35.16, 2, 0)
	MovementLoopAddLocation(NPC, 777.57, -20.64, -34.14, 2, 0)
	MovementLoopAddLocation(NPC, 771.72, -20.64, -25.86, 2, 0)
	MovementLoopAddLocation(NPC, 768.63, -20.64, -28.31, 2, 1)
	MovementLoopAddLocation(NPC, 768.63, -20.64, -28.31, 2, 25,"Drink")
	MovementLoopAddLocation(NPC, 768.63, -20.64, -28.31, 2, 0)
	MovementLoopAddLocation(NPC, 767.58, -20.64, -28.13, 2, 0)
	MovementLoopAddLocation(NPC, 755.72, -21.05, -8.97, 2, math.random(3,8))
	MovementLoopAddLocation(NPC, 756.01, -21.03, -15.21, 2, math.random(3,8))
	MovementLoopAddLocation(NPC, 765.44, -21.05, -8.36, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 763.7, -20.66, 7.77, 2, math.random(3,8))
	MovementLoopAddLocation(NPC, 773.61, -20.64, 11.52, 2, 0)
	MovementLoopAddLocation(NPC, 777.66, -20.64, 15.92, 2, 1)
	MovementLoopAddLocation(NPC, 777.66, -20.64, 15.92, 2, 25,"EcologyEmotes")
end


