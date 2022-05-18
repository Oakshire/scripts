--[[
    Script Name    : SpawnScripts/NorthQeynos/NicolaDering.lua
    Script Author  : Dorbin
    Script Date    : 2022.04.22 05:04:03
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
SetPlayerProximityFunction(NPC, 3, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    GenericEcologyHail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
    if GetFactionAmount(Spawn,11) <0 then
    FaceTarget(NPC,Spawn)
    FactionCheckingCallout(NPC, Spawn, faction)
elseif math.random(1,100)<=20 then
    FaceTarget(NPC,Spawn)
    GenericEcologyHail(NPC, Spawn, faction)
    end
end


function respawn(NPC)
		spawn(NPC)
		end
		

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 335.72, -20.99, 146.2, 2, 1)
	MovementLoopAddLocation(NPC, 335.72, -20.99, 146.2, 2, math.random(6,8),"Cheer")
	MovementLoopAddLocation(NPC, 335.72, -20.99, 146.2, 2, 1)
	MovementLoopAddLocation(NPC, 335.72, -20.99, 146.2, 2, 0)
	MovementLoopAddLocation(NPC, 338.61, -20.99, 144.14, 2, 1)
	MovementLoopAddLocation(NPC, 338.61, -20.99, 144.14, 2, math.random(8,10),"EcologyEmotes")
	MovementLoopAddLocation(NPC, 343.95, -20.99, 149.41, 2, 0)
	MovementLoopAddLocation(NPC, 348.80, -20.99, 148.93, 2, 1) 
	MovementLoopAddLocation(NPC, 348.80, -20.99, 148.93, 2,8 ,"ForHarold")
	MovementLoopAddLocation(NPC, 348.80, -20.99, 148.93, 2, 1)
	MovementLoopAddLocation(NPC, 347.34, -20.99, 146.27, 2, 0)
	MovementLoopAddLocation(NPC, 348.04, -21, 142.99, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 350.41, -21, 139.33, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 353.67, -20.99, 137.95, 2, 1)
	MovementLoopAddLocation(NPC, 353.67, -20.99, 137.95, 2, math.random(8,10),"EcologyEmotes")
	MovementLoopAddLocation(NPC, 353.67, -20.99, 137.95, 2, 1)
	MovementLoopAddLocation(NPC, 357.45, -21, 138.6, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 356.56, -21, 141.04, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 348.41, -21, 144.37, 2, 0)
	MovementLoopAddLocation(NPC, 344.98, -20.99, 149.85, 2, 1)
	local check = MakeRandomInt(1,2)
	if check == 1 then 
	MovementLoopAddLocation(NPC, 344.98, -20.99, 149.85, 2, 8,"ForGretta")
    else
    end
	MovementLoopAddLocation(NPC, 344.98, -20.99, 149.85, 2, 1)
    MovementLoopAddLocation(NPC, 340.48, -20.99, 151.36, 2, 0)
	MovementLoopAddLocation(NPC, 340.69, -20.99, 153.14, 2, 0)
	MovementLoopAddLocation(NPC, 340.37, -20.99, 154.58, 2, 0)
	MovementLoopAddLocation(NPC, 339.94, -20.99, 154.73, 2, 1)
	MovementLoopAddLocation(NPC, 339.94, -20.99, 154.73, 2, math.random(4,8),"Cheer")
	MovementLoopAddLocation(NPC, 340.88, -20.99, 153.28, 2, 0)
	MovementLoopAddLocation(NPC, 340.4, -20.99, 151.76, 2, 0)
	MovementLoopAddLocation(NPC, 342.14, -20.99, 149.44, 2, 0)
	MovementLoopAddLocation(NPC, 337.79, -20.99, 144.74, 2, 0)
	MovementLoopAddLocation(NPC, 337.79, -20.99, 144.74, 2,1)
end


function ForHarold(NPC,Spawn)
    local Copper = GetSpawn(NPC, 2220095)
	if Copper ~= nil then 
        SetTarget(NPC,Copper)
        SetTarget(Copper,NPC)
        FaceTarget(NPC,Copper)
        choice = math.random(1,3)   
   if choice == 1 then
                PlayFlavor(NPC, "","", "sniff", 0, 0)
        elseif choice == 2 then
                PlayFlavor(NPC, "","", "scold", 0, 0)            
        else  
                PlayFlavor(NPC, "","", "agree", 0, 0)
    AddTimer(NPC, 2000, "CopperEmotes")                 
         end
    end
end

function CopperEmotes(NPC,Spawn)
    local Copper = GetSpawn(NPC, 2220095)

	if Copper ~= nil then 

  	    choice = math.random(1,3)   

         if choice == 1 then
                PlayFlavor(Copper, "","", "confused", 0, 0)
        elseif choice == 2 then
                PlayFlavor(Copper, "","", "agree", 0, 0)            
        elseif choice == 3 then
                PlayFlavor(Copper, "","", "wink", 0, 0) 
        end
    end
end	

function Cheer(NPC,Spawn)
    choice = math.random(1,3)   
   if choice == 1 then
                PlayFlavor(NPC, "","", "no", 0, 0)
        elseif choice == 2 then
                PlayFlavor(NPC, "","", "smile", 0, 0)            
        else  
                PlayFlavor(NPC, "","", "agree", 0, 0)
         end
    end


function ForGretta(NPC)
    local Gretta = GetSpawn(NPC, 2220094)
	if Gretta ~= nil then 
    choice = math.random(1,3)   
   if choice == 1 then
                PlayFlavor(NPC, "","", "no", 0, 0)
        elseif choice == 2 then
                PlayFlavor(NPC, "","", "stinky", 0, 0)            
        else  
                PlayFlavor(NPC, "","", "agree", 0, 0)
    AddTimer(NPC, 2000, "GrettaEmotes")                 
         end
    end
end

function GrettaEmotes(NPC,Spawn)
    local Gretta = GetSpawn(NPC, 2220094)

	if Gretta ~= nil then 
  	    choice = math.random(1,3)   

         if choice == 1 then
                PlayFlavor(Gretta, "","", "smile", 0, 0)
        elseif choice == 2 then
                PlayFlavor(Gretta, "","", "agree", 0, 0)            
        else  
                PlayFlavor(Gretta, "","", "stinky", 0, 0) 
        end
    end
end	

