--[[
    Script Name    : SpawnScripts/Castleview/StewardQuyntar.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.02 07:11:17
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"
local CalloutTimer = false

function spawn(NPC)
ProvidesQuest(NPC,5765)
SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")
end

function InRange(NPC, Spawn) --Quest Callout
if GetFactionAmount(Spawn,11)<0 then
PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
FaceTarget(NPC, Spawn)
elseif GetRace(Spawn)== 4 or GetRace(Spawn)== 8 then
    if not HasQuest(Spawn,5765) and not HasCompletedQuest(Spawn, 5765)then   
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
    if GetFactionAmount(Spawn,11)<0 then
        PlayFlavor(NPC,"","","shakefist",0,0,Spawn)
    else        
if GetRace(Spawn)== 4 or GetRace(Spawn)== 8 then
    if not HasQuest(Spawn,5765) and not HasCompletedQuest(Spawn, 5765)then
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well met, friend.  I assume you are a newly arrived refugee, for I've not seen your face. I welcome you to your new home, Qeynos.")
	Dialog.AddVoiceover("voiceover/english/steward_quyntar/qey_village04/steward_quyntar001.mp3", 2250914827, 3581344012)
    PlayFlavor(NPC,"","","salute",0,0,Spawn)
	Dialog.AddOption("And I am glad to be here.", "Dialog1")
	Dialog.AddOption("I'll have to continue this conversation a bit later.")
	Dialog.Start()
    else
    Talk(NPC,Spawn)
    end
else    
    Talk(NPC,Spawn)
    end
end
end

function Talk(NPC,Spawn)
        FaceTarget(NPC, Spawn)
        local choice = MakeRandomInt(1,2)
	    if choice == 1 then
        PlayFlavor(NPC,"voiceover/english/steward_quyntar/qey_village04/qst_steward_quyntar_callout1_e7d4a59e.mp3","I trust you find the day to your liking.  Safe travels to you.","hello",704563926,296687769,Spawn)
        elseif choice == 2 then
        PlayFlavor(NPC,"voiceover/english/steward_quyntar/qey_village04/qst_steward_quyntar_hail1_a1370939.mp3","I trust you are enjoying this splendid day.  Safe travels to you.","nod",1077432596,453293758,Spawn)
        end
end

function respawn(NPC)
	spawn(NPC)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I can only imagine the trials and travails you endured on your journey. Another with less conviction would not have survived. Cast away those horrible memories, for you are among friends. Let me direct you to your new home.")
    PlayFlavor(NPC,"","","nod",0,0,Spawn)
	Dialog.AddVoiceover("voiceover/english/steward_quyntar/qey_village04/steward_quyntar002.mp3", 1019635355, 1120858185)
	Dialog.AddOption("I have just arrived, friend.  I do not have a house yet.", "Dialog2")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You are mistaken. The Queen of Qeynos, Antonia Bayle, provides all refugees with shelter from the elements.  You have a house here in Castleview.  In turn, she asks that you offer the same kindness to others.")
	Dialog.AddVoiceover("voiceover/english/steward_quyntar/qey_village04/steward_quyntar003.mp3", 413619197, 1841471264)
    PlayFlavor(NPC,"","","no",0,0,Spawn)
	Dialog.AddOption("Then I must thank her.  You said this was Castleview.  Am I not in Qeynos?", "QuestStart")
	Dialog.Start()
end

function QuestStart(NPC,Spawn)
	FaceTarget(NPC, Spawn)
    OfferQuest(NPC,Spawn,5765)
end