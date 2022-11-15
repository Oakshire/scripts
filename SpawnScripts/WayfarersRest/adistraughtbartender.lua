--[[
    Script Name    : SpawnScripts/WayfarersRest/adistraughtbartender.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.14 05:11:10
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/DialogModule"

function hailed(NPC, Spawn)
local zone = GetZone(NPC)
local Darkelf = GetSpawnByLocationID(zone, 133780688)   
if  IsAlive(Darkelf) then
Dialog1(NPC, Spawn)
else
Dialog2(NPC, Spawn)
end
end



function Dialog1(NPC, Spawn)
FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I don't know what happened! Suddenly all my regulars started tearing up the place!")
--  Dialog.AddVoiceover("voiceover/english/banker_drizzcopper/qey_village06/banker_drizzcopper001.mp3", 2748969711, 2912964073)
	PlayFlavor(NPC, "", "", "confused", 0, 0, Spawn)
	Dialog.AddOption("I'm here to see what there is to be done.","BeDone")
	Dialog.AddOption("Perhaps a round of drinks will calm their nerves?","Round")
	Dialog.AddOption("This is my kind of party!","Boot")
	Dialog.AddOption("Well, good luck with all this.")
	Dialog.Start()
end


function BeDone(NPC,Spawn)
FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Something has got them all riled up. It happened so suddenly, perhaps its the ale or some sort of magic!")
	PlayFlavor(NPC, "", "", "thanks", 0, 0, Spawn)
	Dialog.AddOption("I'll see what I can do.")
	Dialog.Start()
end

function Round(NPC,Spawn)
FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I already tried that! They just threw the mugs at eachother. Please, you must do something!")
	PlayFlavor(NPC, "", "", "heckno", 0, 0, Spawn)
	Dialog.AddOption("Alright.")
	Dialog.Start()
end

function Boot(NPC,Spawn)
FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Get out! NOW! I have no time for you!")
	PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
	Dialog.AddOption("Noo!  I want to join the fun!")
	Dialog.Start()
	AddTimer(NPC,3500,"Kick",1,Spawn)
end

function Kick(NPC,Spawn)
        SQ = GetZone("SouthQeynos")
       Zone(SQ,Spawn,590.25, -17.22, 245.18, 10)
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC,"","Thank you for all your help! Now I just have to clean up this mess...","thanks",0,0) 
end



function spawn(NPC)
AddTimer(NPC,MakeRandomInt(2000,5000),"EmoteLoop")
end

function EmoteLoop(NPC)
local zone = GetZone(NPC)
local Darkelf = GetSpawnByLocationID(zone, 133780688)   
if  not IsAlive(Darkelf) then
    SpawnSet(NPC,"mood_state",0)
    SpawnSet(NPC,"name","a relieved bartender")
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