--[[
    Script Name    : SpawnScripts/Nettleville/StewardLoralei.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.20 05:07:43
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"
local CalloutTimer = false

function spawn(NPC)
ProvidesQuest(NPC,5763)
SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")
end

function InRange(NPC, Spawn) --Quest Callout
if GetFactionAmount(Spawn,11)<0 then
PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
FaceTarget(NPC, Spawn)
elseif GetRace(Spawn)== 9 or GetRace(Spawn)== 11 then
    if not HasQuest(Spawn,5763) and not HasCompletedQuest(Spawn, 5763) and HasQuest(Spawn, 5762) and not HasCompletedQuest(Spawn, 5762)then   
    Talk(NPC,Spawn)
    elseif CalloutTimer == false then
    CalloutTimer = true
    AddTimer(NPC,90000,"ResetCallout",1,Spawn)
    Talk(NPC,Spawn)
    end
elseif CalloutTimer == false then
    CalloutTimer = true
    AddTimer(NPC,90000,"ResetCallout",1,Spawn)
    Talk(NPC,Spawn)
    end
end



function ResetCallout(NPC,Spawn)
    CalloutTimer = false
end



function hailed(NPC, Spawn)
if GetRace(Spawn)== 9 or GetRace(Spawn)== 11 then
    if not HasQuest(Spawn,5763) and not HasCompletedQuest(Spawn, 5763) and not HasQuest(Spawn, 5762) and not HasCompletedQuest(Spawn, 5762) then   
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Welcome to Qeynos.  Your journey here was harsh, but it's behind you now.  Relax ... you are among friends.")
	Dialog.AddVoiceover("voiceover/english/steward_loralei/qey_village01/steward_loralei001.mp3", 1283138706, 2903739350)
    PlayFlavor(NPC,"","","hello",0,0,Spawn)
	Dialog.AddOption("Thank you for the welcome.","Dialog1")
	Dialog.AddOption("I'll have to continue this conversation a bit later.")
	Dialog.Start()    
    else
    Talk(NPC,Spawn)
    end
else
    Talk(NPC,Spawn)
end
end


function Talk(NPC,Spawn)
        FaceTarget(NPC, Spawn)
        local choice = MakeRandomInt(1,2)
	    if choice == 1 then
        PlayFlavor(NPC,"voiceover/english/steward_loralei/qey_village01/qst_steward_loralei_callout1_34b39557.mp3","Good day to you, friend.  I wish you good luck today!","hello",2416972639,966576334,Spawn)
        elseif choice == 2 then
        PlayFlavor(NPC,"voiceover/english/steward_loralei/qey_village01/qst_steward_loralei_hail1_7d12d980.mp3","Good day to you, friend.  Good luck on your journey.","nod",749070938,2751400419,Spawn)
        end
end


function respawn(NPC)
	spawn(NPC)
end




function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("It's the least I can do.  I, too, was a refugee not long ago, until Qeynos offered me a new home.  In turn, I now welcome all those rescued from cruel misfortune.  I also show new refugees to their houses.")
    PlayFlavor(NPC,"","","agree",0,0,Spawn)
	Dialog.AddVoiceover("voiceover/english/steward_loralei/qey_village01/steward_loralei002.mp3", 472694717, 329939381)
	Dialog.AddOption("House?  I'm sorry, but I can't afford a new house.", "Dialog2")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Afford?  No, no ... The Queen gave you a house.  She would kiss a gnoll before making refugees sleep on the streets!  She has set aside a small house for you here in Nettleville.  All she asks in return is that you do your part in helping Qeynos prosper.")
	Dialog.AddVoiceover("voiceover/english/steward_loralei/qey_village01/steward_loralei003.mp3", 2360050608, 3531314477)
    PlayFlavor(NPC,"","","no",0,0,Spawn)
	Dialog.AddOption("Thank you!  What is Nettleville?", "QuestStart")
	Dialog.Start()
end

function QuestStart(NPC,Spawn)
	FaceTarget(NPC, Spawn)
    OfferQuest(NPC,Spawn,5763)
end