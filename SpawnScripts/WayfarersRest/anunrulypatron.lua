--[[
    Script Name    : SpawnScripts/WayfarersRest/anunrulypatron.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.14 05:11:11
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
    SpawnSet(NPC,"name","an unrly patron")
    choice = MakeRandomInt(1,5)
    if choice ==1 then
    PlayFlavor(NPC,"","","kick",0,0)
    elseif choice ==2 then
    PlayFlavor(NPC,"","","attack",0,0)
    elseif choice ==3 then
    PlayFlavor(NPC,"","","howl",0,0)        
    elseif choice ==4 then
    PlayFlavor(NPC,"","","shakefist",0,0)   
    elseif choice ==5 then
    PlayFlavor(NPC,"","","cackle",0,0) 
    end
    AddTimer(NPC,4000,"EmoteLoop")
elseif not IsAlive(Darkelf) then
    AddTimer(NPC,7000,"EmoteLoop")
    SpawnSet(NPC,"name","a recovered patron")
    SpawnSet(NPC,"mood_state",0)
    choice = MakeRandomInt(1,5)
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
    end
end
end
end

function respawn(NPC)
	spawn(NPC)
end