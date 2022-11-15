--[[
    Script Name    : SpawnScripts/WayfarersRest/anangrypatron.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.14 05:11:47
    Script Purpose : 
                   : 
--]]
function spawn(NPC)
AddTimer(NPC,MakeRandomInt(2000,5000),"EmoteLoop")
end

function EmoteLoop(NPC)
local zone = GetZone(NPC)
local Darkelf = GetSpawnByLocationID(zone, 133780688)   
if not IsInCombat(NPC) and IsAlive(NPC)then
if IsAlive(Darkelf) then
    SpawnSet(NPC,"mood_state",11852)
    SpawnSet(NPC,"name","an angry patron")
    choice = MakeRandomInt(1,5)
    if choice ==1 then
    PlayFlavor(NPC,"","","scream",0,0)
    elseif choice ==2 then
    PlayFlavor(NPC,"","","kick",0,0)
    elseif choice ==3 then
    PlayFlavor(NPC,"","","grumble",0,0)        
    elseif choice ==4 then
    PlayFlavor(NPC,"","","tantrum_short",0,0)   
    elseif choice ==5 then
    PlayFlavor(NPC,"","","frustrated",0,0) 
    end
    AddTimer(NPC,4000,"EmoteLoop")
elseif not IsAlive(Darkelf) then
    AddTimer(NPC,7000,"EmoteLoop")
    SpawnSet(NPC,"mood_state",0)
    SpawnSet(NPC,"name","a recovered patron")
    choice = MakeRandomInt(1,6)
    if choice ==1 then
    PlayFlavor(NPC,"","","confused",0,0)
    elseif choice ==2 then
    PlayFlavor(NPC,"","","doh",0,0)
    elseif choice ==3 then
    PlayFlavor(NPC,"","","sigh",0,0)        
    elseif choice ==4 then
    PlayFlavor(NPC,"","","wince",0,0)  
    elseif choice ==5 then
    PlayFlavor(NPC,"","","whome",0,0) 
    elseif choice ==6 then
    PlayFlavor(NPC,"","","doubletake",0,0) 
    end
end
end
end

function respawn(NPC)
	spawn(NPC)
end