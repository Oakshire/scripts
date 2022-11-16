--[[
    Script Name    : SpawnScripts/WayfarersRest/anargumentativepatron.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.14 05:11:40
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
    SpawnSet(NPC,"name","an argumentative patron")
    choice = MakeRandomInt(1,5)
    if choice ==1 then
    PlayFlavor(NPC,"","","threaten",0,0)
    elseif choice ==2 then
    PlayFlavor(NPC,"","","taunt",0,0)
    elseif choice ==3 then
    PlayFlavor(NPC,"","","grumble",0,0)        
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
if IsAlive(Darkelf) and not HasLanguage(Spawn,3) then
	PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/barbarian/barbarian_eco_good_1_garbled_gm_1cfda4cd.mp3", "I wonder, do I owe you any coin?  I sure hope not!", "", 2853459229, 77062894, Spawn,3)
    else
		PlayFlavor(NPC, "voiceover/english/dwarf_base_1/ft/dwarf/dwarf_base_1_1_aggro_gm_23b35126.mp3", "Where do ya think you're goin'?", "", 706272128, 909565004, Spawn, 3)
end
end

function victory(NPC,Spawn)
    PlayFlavor(NPC, "voiceover/english/dwarf_base_1/ft/dwarf/dwarf_base_1_1_victory_gm_4a1ceaef.mp3", "Hah! I'm not done yet! Get back up!", "", 458619926, 239663782, Spawn)
end