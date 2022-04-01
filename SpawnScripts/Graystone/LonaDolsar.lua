--[[
    Script Name    : SpawnScripts/Graystone/LonaDolsar.lua
    Script Author  : Dorbin
    Script Date    : 2022.03.12 05:03:46
    Script Purpose : Ecology script for Lona Dolsar
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
	FaceTarget(NPC, Spawn)        
    GenericEcologyHail(NPC, Spawn, faction)
    end
end

function InRange(NPC, Spawn) 
        if not HasLanguage(Spawn,1)then
        if math.random(1, 100) <= 25 then            
        Garbled(NPC,Spawn)
        end
        else
    GenericEcologyCallout(NPC, Spawn, faction)                  
    end
end


function respawn(NPC)
end

function waypoints(NPC)
     MovementLoopAddLocation(NPC, 820.04, -21.06, -134.46, 2,2)
	MovementLoopAddLocation(NPC, 820.04, -21.06, -134.46, 2, math.random(20, 40),"Drink")
	MovementLoopAddLocation(NPC, 820.08, -21.06, -134.18, 2, 0)
	MovementLoopAddLocation(NPC, 824.23, -21.06, -137.68, 2, 0)
	MovementLoopAddLocation(NPC, 833.23, -20.93, -137.54, 2, 0)
	MovementLoopAddLocation(NPC, 837.87, -20.93, -133.32, 2, 0)
	MovementLoopAddLocation(NPC, 838.54, -20.93, -128.22, 2, 0)
	MovementLoopAddLocation(NPC, 833.06, -20.97, -122.85, 2, 0)
	MovementLoopAddLocation(NPC, 833.57, -20.97, -118.44, 2, 0)
	MovementLoopAddLocation(NPC, 837.42, -20.74, -116.33, 2, 2)	
	MovementLoopAddLocation(NPC, 837.42, -20.74, -116.33, 2, math.random(15, 20),"Action")
	MovementLoopAddLocation(NPC, 842.94, -22.75, -120.25, 2, 0)
	MovementLoopAddLocation(NPC, 847.21, -25.38, -132.05, 2, 0)
	MovementLoopAddLocation(NPC, 853.74, -24.22, -145.59, 2, 0)
	MovementLoopAddLocation(NPC, 858.33, -23.82, -153.42, 2, 0)
    MovementLoopAddLocation(NPC, 877.99, -24.92, -153.22, 2,2)	
	MovementLoopAddLocation(NPC, 877.99, -24.92, -153.22, 2, math.random(15, 18),"Action")
	MovementLoopAddLocation(NPC, 893.04, -22.57, -140.35, 2, 0)
	MovementLoopAddLocation(NPC, 896.71, -22.49, -130.29, 2, 0)
	MovementLoopAddLocation(NPC, 898.5, -22.33, -122.41, 2, 0)
	MovementLoopAddLocation(NPC, 893.14, -22.31, -114.26, 2, 0)
    MovementLoopAddLocation(NPC, 893.25, -22.3, -107.48, 2, 2)	
	MovementLoopAddLocation(NPC, 893.25, -22.3, -107.48, 2, 11,"FaceSeer")
    MovementLoopAddLocation(NPC, 893.25, -22.3, -107.48, 2, 1)	
	MovementLoopAddLocation(NPC, 888.56, -22.26, -98.63, 2, 0)
	MovementLoopAddLocation(NPC, 884.07, -22.63, -97.91, 2, 0)
	MovementLoopAddLocation(NPC, 871.31, -24.95, -101.92, 2, 0)
	MovementLoopAddLocation(NPC, 846.94, -23.13, -106.78, 2, 0)
	MovementLoopAddLocation(NPC, 844.32, -22.66, -113.49, 2, 0)
	MovementLoopAddLocation(NPC, 833.23, -20.93, -111.73, 2, 0)
	MovementLoopAddLocation(NPC, 827.57, -20.97, -120.23, 2, math.random(15, 20),"Action")
	MovementLoopAddLocation(NPC, 837.96, -20.93, -130.15, 2, 0)
	MovementLoopAddLocation(NPC, 837.42, -20.93, -137.06, 2, 0)
	MovementLoopAddLocation(NPC, 822.36, -21.06, -138.73, 2, 0)
    --loop 2
	 MovementLoopAddLocation(NPC, 820.04, -21.06, -134.46, 2,2)
	MovementLoopAddLocation(NPC, 820.04, -21.06, -134.46, 2, math.random(30, 45),"Drink")
	MovementLoopAddLocation(NPC, 820.08, -21.06, -134.18, 2, 0)
	MovementLoopAddLocation(NPC, 824.23, -21.06, -137.68, 2, 0)
	MovementLoopAddLocation(NPC, 833.23, -20.93, -137.54, 2, 0)
	MovementLoopAddLocation(NPC, 837.87, -20.93, -133.32, 2, 0)
	MovementLoopAddLocation(NPC, 838.54, -20.93, -128.22, 2, 0)
	MovementLoopAddLocation(NPC, 833.06, -20.97, -122.85, 2, 0)
	MovementLoopAddLocation(NPC, 833.57, -20.97, -118.44, 2, 0)
	MovementLoopAddLocation(NPC, 837.42, -20.74, -116.33, 2, 2)	
	MovementLoopAddLocation(NPC, 837.42, -20.74, -116.33, 2, math.random(15, 20),"Action")
	MovementLoopAddLocation(NPC, 842.94, -22.75, -120.25, 2, 0)
	MovementLoopAddLocation(NPC, 847.21, -25.38, -132.05, 2, 0)
	MovementLoopAddLocation(NPC, 853.74, -24.22, -145.59, 2, 0)
	MovementLoopAddLocation(NPC, 858.33, -23.82, -153.42, 2, 0)
	MovementLoopAddLocation(NPC, 877.99, -24.92, -153.22, 2, math.random(15, 20),"Action")
	MovementLoopAddLocation(NPC, 893.04, -22.57, -140.35, 2, 0)
	MovementLoopAddLocation(NPC, 896.71, -22.49, -130.29, 2, 0)
	MovementLoopAddLocation(NPC, 898.5, -22.33, -122.41, 2, 0)
	MovementLoopAddLocation(NPC, 893.14, -22.31, -114.26, 2, 0)
	MovementLoopAddLocation(NPC, 892.70, -22.31, -111.55, 2, 2)	
	MovementLoopAddLocation(NPC, 892.70, -22.31, -111.55, 2, 10,"Action")
    MovementLoopAddLocation(NPC, 893.12, -22.31, -111.91, 2, 0)	
    MovementLoopAddLocation(NPC, 893.25, -22.3, -107.48, 2, 0)	
	MovementLoopAddLocation(NPC, 888.56, -22.26, -98.63, 2, 0)
	MovementLoopAddLocation(NPC, 884.07, -22.63, -97.91, 2, 0)
	MovementLoopAddLocation(NPC, 871.31, -24.95, -101.92, 2, 0)
	MovementLoopAddLocation(NPC, 846.94, -23.13, -106.78, 2, 0)
	MovementLoopAddLocation(NPC, 844.32, -22.66, -113.49, 2, 0)
	MovementLoopAddLocation(NPC, 833.23, -20.93, -111.73, 2, 0)
	MovementLoopAddLocation(NPC, 827.57, -20.97, -120.23, 2, math.random(15, 20),"Action")
	MovementLoopAddLocation(NPC, 837.96, -20.93, -130.15, 2, 0)
	MovementLoopAddLocation(NPC, 837.42, -20.93, -137.06, 2, 0)
	MovementLoopAddLocation(NPC, 822.36, -21.06, -138.73, 2, 0)
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

function FaceSeer(NPC) 
    local Reyala = GetSpawn(NPC, 2330137)
	
	if Reyala ~= nil then 
	    FaceTarget(NPC, Reyala)
        AddTimer(NPC, 1000, "ReyalaFacesGolan") 
    end
end

function ReyalaFacesGolan(NPC)
    local Reyala = GetSpawn(NPC, 2330137)
	
	if Reyala ~= nil then 
	    FaceTarget(Reyala, NPC)
        AddTimer(NPC, 500, "ReyalaSeersGolan") 
    end
end

function ReyalaSeersGolan(NPC)
    local Reyala = GetSpawn(NPC, 2330137)
	
	if Reyala ~= nil then 
    choice = math.random(1,2)   
                PlayFlavor(Reyala, "voiceover/english/human_eco_good_seer/ft/eco/good/human_eco_good_seer_barmaid_gf_23d3c5ab.mp3","You seek a life to make yourself happy than trying to please others.", "shame", 2950244318, 54283461)
    AddTimer(NPC, 2000, "ConfusedAtReyala")                 
    end
end

function ConfusedAtReyala(NPC)
    local Reyala = GetSpawn(NPC, 2330137)
	if Reyala ~= nil then 
    choice = math.random(1,2)   
         if choice == 1 then
                PlayFlavor(NPC, "","", "confused", 0, 0)
            else  
                PlayFlavor(NPC, "","", "whome", 0, 0)
         end
    AddTimer(NPC, 6000, "ReturnReyala")         
    end
end

function ReturnReyala(NPC)
    local Reyala = GetSpawn(NPC, 2330137)
	SpawnSet(Reyala, "heading", "52.65")
end	

function Action(NPC)
   choice = math.random(1,4)   
         if choice == 1 then
                PlayFlavor(NPC, "","", "stretch", 0, 0)
         elseif choice == 2 then  
                PlayFlavor(NPC, "","", "yawn", 0, 0)
         elseif choice == 3 then  
                PlayFlavor(NPC, "","", "sniff", 0, 0)
            else  
                PlayFlavor(NPC, "","", "tap", 0, 0)
        end
end