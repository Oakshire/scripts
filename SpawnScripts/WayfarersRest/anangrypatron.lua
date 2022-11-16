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
    SpawnSet(NPC, "attackable", 1)
    SpawnSet(NPC, "show_level", 1)
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
    PlayFlavor(NPC,"","","doubletake",0,0) 
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
if IsAlive(Darkelf) then
    choice = MakeRandomInt(1,2)
    if choice == 1 then
	PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_aggro_gm_a203c9ec.mp3", "Prepare to face your doom, meddler.", "", 1496819882, 365167432, Spawn, 0)
    elseif choice ==2 then
	PlayFlavor(NPC, "voiceover/english/optional5/human_base_2/ft/human/human_base_2_2_aggro_gm_e61d307f.mp3", "Look alive! We have visitors!", "", 1273763229, 637796964, Spawn, 0)
    
    end
end
end

function victory(NPC,Spawn)
	PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_halfhealth_gm_1babf022.mp3", "Is that all you have?", "", 170267964, 1158805306, Spawn, 0)
end