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
    SpawnSet(NPC, "attackable", 1)
    SpawnSet(NPC, "show_level", 1)
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
    SpawnSet(NPC, "attackable", 0)
    SpawnSet(NPC, "show_level", 0)
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

function aggro(NPC,Spawn)
local zone = GetZone(NPC)
local Darkelf = GetSpawnByLocationID(zone, 133780688)  
if IsAlive(Darkelf) and not HasLanguage(Spawn,8) then
	PlayFlavor(NPC, "voiceover/english/halfling_crazed/ft/halfling/halfling_crazed_1_garbled_gm_823f1021.mp3", "Lilleee  mabee   tarrah roo  sakdooo", "", 374813993, 4058118752, Spawn, 8)
    else
	PlayFlavor(NPC, "voiceover/english/halfling_crazed/ft/halfling/halfling_crazed_1_aggro_gm_37efc560.mp3", "This place will be your tomb!", "", 4006552847, 41198957, Spawn, 8)
end
end


