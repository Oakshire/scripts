--[[
    Script Name    : SpawnScripts/FermentedGrape/aperplexedbartender.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.04 05:12:55
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
AddTimer(NPC,MakeRandomInt(2000,5000),"EmoteLoop")
end

function EmoteLoop(NPC)
local zone = GetZone(NPC)
local Pirate1 = GetSpawnByLocationID(zone, 133781037) --FIRSTMATE  
local Pirate2 = GetSpawnByLocationID(zone, 133781036) --CUTTER  
local Pirate3 = GetSpawnByLocationID(zone, 133781038)   
local Pirate4 = GetSpawnByLocationID(zone, 133781039)   
local Pirate5 = GetSpawnByLocationID(zone, 133781035)   
local Pirate6 = GetSpawnByLocationID(zone, 133781034)   
local Captain = GetSpawnByLocationID(zone, 133781033)   
if   IsAlive(Pirate1) and not IsAlive(Pirate2) and not IsAlive(Pirate3) and not IsAlive(Pirate4) and not IsAlive(Pirate5) and not IsAlive(Pirate6) and not IsAlive(Captain) then
    SpawnSet(NPC,"mood_state",0)
    SpawnSet(NPC,"name","a relieved bartender")
    choice = MakeRandomInt(1,5)
    if choice ==1 then
    PlayFlavor(NPC,"","","tapfoot",0,0)
    elseif choice ==2 then
    PlayFlavor(NPC,"","","sigh",0,0)
    elseif choice ==3 then
    PlayFlavor(NPC,"","","grumble",0,0)        
    elseif choice ==4 then
    PlayFlavor(NPC,"","","confused",0,0)   
    elseif choice ==5 then
    PlayFlavor(NPC,"","","glare",0,0) 
    end

end
    AddTimer(NPC,7000,"EmoteLoop")
end


function respawn(NPC)
	spawn(NPC)
end