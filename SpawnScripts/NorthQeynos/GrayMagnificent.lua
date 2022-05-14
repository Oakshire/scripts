--[[
    Script Name    : SpawnScripts/NorthQeynos/GrayMagnificent.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.13 02:05:32
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
AddTimer(NPC, 5000, "EmoteLoop")
AddTimer(NPC, 12000,"Swooning")
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function EmoteLoop(NPC)
    local emoteChoice = MakeRandomInt(1,4)

    if emoteChoice == 1 then
-- flourish
        PlayAnimation(NPC, 298)
        AddTimer(NPC, MakeRandomInt(10000,12000), "EmoteLoop")	
    elseif emoteChoice == 2 then
-- kiss
        PlayAnimation(NPC, 11762)
        AddTimer(NPC, MakeRandomInt(5000,8000), "EmoteLoop")	
    
    elseif emoteChoice == 3 then
-- dance
        PlayAnimation(NPC, 11298)
        AddTimer(NPC, MakeRandomInt(10000,12000), "EmoteLoop")	
    
    elseif emoteChoice == 4 then
-- full curtsey
        PlayAnimation(NPC, 11633)
        AddTimer(NPC, MakeRandomInt(7000,9000), "EmoteLoop")	
     end
end

function Swooning(NPC,Spawn)
        local Laura = GetSpawn(NPC, 2220056)
        local Lilly = GetSpawn(NPC, 2220115)
	
	if Laura ~= nil then 
    FaceTarget(Laura,NPC)
     SetTarget(Laura,NPC)
   choice = math.random(1,3)   
        if choice == 1 then
        PlayFlavor(Laura, "","", "flustered", 0, 0)
        elseif choice == 2 then
        PlayFlavor(Laura, "","", "cheer", 0, 0)            
        elseif choice == 2 then
        PlayFlavor(Laura, "","", "snicker", 0, 0)            
        end
    end    
    if Lilly ~=nil then
     FaceTarget(Lilly,NPC)
     SetTarget(Lilly,NPC)
    choice = math.random(1,3)   
        if choice == 1 then
        PlayFlavor(Lilly, "","", "happy", 0, 0)
        elseif choice == 2 then
        PlayFlavor(Lilly, "","", "giggle", 0, 0)            
        elseif choice == 3 then
        PlayFlavor(Lilly, "","", "nod", 0, 0)            
        end
       end
        AddTimer(NPC, MakeRandomInt(25000,32000), "Swooning")	
end
