--[[
    Script Name    : SpawnScripts/WayfarersRest/abelligerentpatron.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.14 05:11:45
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
    choice = MakeRandomInt(1,5)
    if choice ==1 then
    PlayFlavor(NPC,"","","threaten",0,0)
    elseif choice ==2 then
    PlayFlavor(NPC,"","","taunt",0,0)
    elseif choice ==3 then
    PlayFlavor(NPC,"","","neener",0,0)        
    elseif choice ==4 then
    PlayFlavor(NPC,"","","swear",0,0)   
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
    PlayFlavor(NPC,"","","beg",0,0) 
    end
end
end
end

function respawn(NPC)
	spawn(NPC)
end

--		PlayFlavor(NPC, "voiceover/english/halfling_corrupted/ft/halfling/halfling_corrupted_1_garbled_gf_54e55451.mp3", "Lilleee  mabee   tarrah roo  sakdooo", "", 3766403918, 1171422621, Spawn, 8)


