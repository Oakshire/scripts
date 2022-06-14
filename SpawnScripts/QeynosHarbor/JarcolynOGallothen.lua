--[[
    Script Name    : SpawnScripts/QeynosHarbor/JarcolynOGallothen.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.11 06:06:38
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
    

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 931.92, -19.56, 61.18, 2, 1)
	MovementLoopAddLocation(NPC, 931.92, -19.56, 61.18, 2, 12,"Action")
	MovementLoopAddLocation(NPC, 946.66, -19.53, 67.21, 2, 0)
	MovementLoopAddLocation(NPC, 954.61, -19.57, 70.72, 2, 0)
	MovementLoopAddLocation(NPC, 970.28, -25.56, 77.8, 2, 0)
	MovementLoopAddLocation(NPC, 962.85, -25.48, 95.31, 2, 0)
	MovementLoopAddLocation(NPC, 949.95, -25.44, 94.59, 2, 0)
	MovementLoopAddLocation(NPC, 950.4, -25.44, 93.26, 2, 0)
	MovementLoopAddLocation(NPC, 959.35, -22.59, 92.18, 2, 0)
	MovementLoopAddLocation(NPC, 961.47, -22.46, 92.53, 2, 0)
	MovementLoopAddLocation(NPC, 966.29, -20.69, 92.63, 2, 0)
	MovementLoopAddLocation(NPC, 969.73, -20.69, 94.33, 2, 0)
	MovementLoopAddLocation(NPC, 972.21, -20.69, 91.19, 2, 1)
	MovementLoopAddLocation(NPC, 972.21, -20.69, 91.19, 2, 12,"Animate")
	MovementLoopAddLocation(NPC, 970.43, -20.69, 94.83, 2, 1)
	MovementLoopAddLocation(NPC, 970.43, -20.69, 94.83, 2, 12,"Animate")
	MovementLoopAddLocation(NPC, 970.43, -20.69, 94.83, 2, 1)
	MovementLoopAddLocation(NPC, 965.98, -20.69, 92.71, 2, 0)
	MovementLoopAddLocation(NPC, 959.88, -22.64, 92.33, 2, 0)
	MovementLoopAddLocation(NPC, 950.64, -25.44, 93.23, 2, 0)
	MovementLoopAddLocation(NPC, 941.27, -25.43, 91.2, 2, 0)
	MovementLoopAddLocation(NPC, 936.24, -25.27, 94.52, 2, 0)
	MovementLoopAddLocation(NPC, 934.64, -25.27, 92.8, 2, 0)
	MovementLoopAddLocation(NPC, 937.86, -22.07, 85.07, 2, 0)
	MovementLoopAddLocation(NPC, 932.89, -22.08, 82.67, 2, 0)
	MovementLoopAddLocation(NPC, 923.49, -19.53, 78.1, 2, 0)
	MovementLoopAddLocation(NPC, 925.45, -19.49, 74.46, 2, 0)
	MovementLoopAddLocation(NPC, 931.26, -19.56, 60.65, 2, 1)
	MovementLoopAddLocation(NPC, 931.26, -19.56, 60.65, 2, 10,"Animate")
	MovementLoopAddLocation(NPC, 931.26, -19.56, 60.65, 2, 10,"Animate")
	MovementLoopAddLocation(NPC, 939.17, -19.67, 64.39, 2, 0)
	MovementLoopAddLocation(NPC, 939.2, -19.67, 64.61, 2, 0)
	MovementLoopAddLocation(NPC, 931.91, -19.56, 61.23, 2, 1)
	MovementLoopAddLocation(NPC, 931.91, -19.56, 61.23, 2, 1)
	MovementLoopAddLocation(NPC, 931.91, -19.56, 61.23, 2, 10,"Animate")
	MovementLoopAddLocation(NPC, 931.91, -19.56, 61.23, 2, 10,"Animate")
	MovementLoopAddLocation(NPC, 924.11, -19.55, 78.15, 2, 0)
	MovementLoopAddLocation(NPC, 938.19, -22.06, 84.09, 2, 0)
	MovementLoopAddLocation(NPC, 934.13, -25.27, 93.4, 2, 0)
	MovementLoopAddLocation(NPC, 929.5, -25.27, 96.24, 2, 0)
	MovementLoopAddLocation(NPC, 915.36, -25.34, 90.48, 2, 0)
	MovementLoopAddLocation(NPC, 924.56, -25.56, 62.41, 2, 0)
	MovementLoopAddLocation(NPC, 922.32, -25.49, 46.1, 2, 0)
	MovementLoopAddLocation(NPC, 922.32, -25.49, 46.1, 2, 1)
	MovementLoopAddLocation(NPC, 922.32, -25.49, 46.1, 2, 30,"Drink")
	MovementLoopAddLocation(NPC, 922.32, -25.49, 46.1, 2, 0)
	MovementLoopAddLocation(NPC, 924.56, -25.56, 62.41, 2, 0)
	MovementLoopAddLocation(NPC, 915.36, -25.34, 90.48, 2, 0)
	MovementLoopAddLocation(NPC, 929.5, -25.27, 96.24, 2, 0)
	MovementLoopAddLocation(NPC, 934.13, -25.27, 93.4, 2, 0)
	MovementLoopAddLocation(NPC, 938.19, -22.06, 84.09, 2, 0)
	MovementLoopAddLocation(NPC, 924.11, -19.55, 78.15, 2, 0)
	MovementLoopAddLocation(NPC, 931.91, -19.56, 61.23, 2, 1)
	MovementLoopAddLocation(NPC, 931.91, -19.56, 61.23, 2, 10,"Animate")
	MovementLoopAddLocation(NPC, 931.91, -19.56, 61.23, 2, 10,"Animate")
	MovementLoopAddLocation(NPC, 939.2, -19.67, 64.61, 2, 0)
	MovementLoopAddLocation(NPC, 939.17, -19.67, 64.39, 2, 0)
	MovementLoopAddLocation(NPC, 931.26, -19.56, 60.65, 2, 1)
	MovementLoopAddLocation(NPC, 931.26, -19.56, 60.65, 2, 10,"Animate")
	MovementLoopAddLocation(NPC, 931.26, -19.56, 60.65, 2, 10,"Animate")
	MovementLoopAddLocation(NPC, 925.45, -19.49, 74.46, 2, 0)
	MovementLoopAddLocation(NPC, 923.49, -19.53, 78.1, 2, 0)
	MovementLoopAddLocation(NPC, 932.89, -22.08, 82.67, 2, 0)
	MovementLoopAddLocation(NPC, 937.86, -22.07, 85.07, 2, 0)
	MovementLoopAddLocation(NPC, 934.64, -25.27, 92.8, 2, 0)
	MovementLoopAddLocation(NPC, 936.24, -25.27, 94.52, 2, 0)
	MovementLoopAddLocation(NPC, 941.27, -25.43, 91.2, 2, 0)
	MovementLoopAddLocation(NPC, 950.64, -25.44, 93.23, 2, 0)
	MovementLoopAddLocation(NPC, 959.88, -22.64, 92.33, 2, 0)
	MovementLoopAddLocation(NPC, 965.98, -20.69, 92.71, 2, 0)
	MovementLoopAddLocation(NPC, 970.43, -20.69, 94.83, 2, 1)
	MovementLoopAddLocation(NPC, 970.43, -20.69, 94.83, 2, 12,"Animate")
	MovementLoopAddLocation(NPC, 972.21, -20.69, 91.19, 2, 0)
	MovementLoopAddLocation(NPC, 969.73, -20.69, 94.33, 2, 0)
	MovementLoopAddLocation(NPC, 966.29, -20.69, 92.63, 2, 0)
	MovementLoopAddLocation(NPC, 961.47, -22.46, 92.53, 2, 0)
	MovementLoopAddLocation(NPC, 959.35, -22.59, 92.18, 2, 0)
	MovementLoopAddLocation(NPC, 950.4, -25.44, 93.26, 2, 0)
	MovementLoopAddLocation(NPC, 949.95, -25.44, 94.59, 2, 0)
	MovementLoopAddLocation(NPC, 962.85, -25.48, 95.31, 2, 0)
	MovementLoopAddLocation(NPC, 970.28, -25.56, 77.8, 2, 0)
	MovementLoopAddLocation(NPC, 954.61, -19.57, 70.72, 2, 0)
	MovementLoopAddLocation(NPC, 946.66, -19.53, 67.21, 2, 0)
	MovementLoopAddLocation(NPC, 931.92, -19.56, 61.18, 2, 8)
end

function Animate(NPC)    
  choice = math.random(1,4)   
        if choice == 1 then    
        PlayAnimation(NPC,12030) --square
        elseif choice == 2 then    
        PlayAnimation(NPC,12978) --ponder
        elseif choice == 3 then    
        PlayAnimation(NPC,13056) --tapfoot
        else
        PlayAnimation(NPC,12329)--sniff
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

