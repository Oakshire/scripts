--[[
    Script Name    : SpawnScripts/WayfarersRest/afrightenedbarmaid.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.14 05:11:39
    Script Purpose : 
                   : 
--]]
function spawn(NPC)
AddTimer(NPC,MakeRandomInt(2000,5000),"EmoteLoop")
end

function EmoteLoop(NPC)
local zone = GetZone(NPC)
local Darkelf = GetSpawnByLocationID(zone, 133780688)   
if  not IsAlive(Darkelf) then
    SpawnSet(NPC,"mood_state",0)
    SpawnSet(NPC,"name","a relieved barmaid")
    choice = MakeRandomInt(1,5)
    if choice ==1 then
    PlayFlavor(NPC,"","","shame",0,0)
    elseif choice ==2 then
    PlayFlavor(NPC,"","","sigh",0,0)
    elseif choice ==3 then
    PlayFlavor(NPC,"","","agree",0,0)        
    elseif choice ==4 then
    PlayFlavor(NPC,"","","thanks",0,0)   
    elseif choice ==5 then
    PlayFlavor(NPC,"","","glare",0,0) 
    end
end
    AddTimer(NPC,7000,"EmoteLoop")
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
local zone = GetZone(NPC)
local Darkelf = GetSpawnByLocationID(zone, 133780688)   
if  IsAlive(Darkelf) then
Dialog1(NPC, Spawn)
else
Dialog2(NPC, Spawn)
end
end

function Dialog1(NPC,Spawn)
    FaceTarget(NPC,Spawn)   
    choice = MakeRandomInt(1,5)
    if choice ==1 then
    PlayFlavor(NPC,"","Please! Don't hurt me!","squeal",0,0)
    elseif choice ==2 then
    PlayFlavor(NPC,"","I don't know what happened! Everyone just started acting all crazy!","wince",0,0)
    elseif choice ==3 then
    PlayFlavor(NPC,"","I hear strange cackling coming from the near supplies... and it's not from one of this lot!","listen",0,0)        
    elseif choice ==4 then
    PlayFlavor(NPC,"","Not in the face! Please!","cringe",0,0)   
    elseif choice ==5 then
    PlayFlavor(NPC,"","Save me from this madness!","beg",0,0) 
    end
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC,"","Thank the gods you came along! I thought I was destined for the grave.","thanks",0,0) 
end