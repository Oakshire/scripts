--[[
	Script Name		: SpawnScripts/Nettleville/Knight-CaptainElgrondeth.lua
	Script Purpose	: Knight-Captain Elgrondeth
	Script Author	: Dorbin
	Script Date		: 2022.06.19
	Script Notes	:
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")
ProvidesQuest(NPC,305)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then
    PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn, 0)
elseif not HasCompletedQuest(Spawn,305) and not HasQuest(Spawn,305) then
Dialog4(NPC, Spawn)
elseif HasQuest(Spawn,305) and GetQuestStep(Spawn,305)==2 then
Dialog5(NPC,Spawn)    
elseif HasQuest(Spawn,305) and GetQuestStep(Spawn,305)==4 then
Dialog7(NPC,Spawn)    
elseif HasQuest(Spawn,305) and GetQuestStep(Spawn,305)==6 then
Dialog9(NPC,Spawn)
else
PlayFlavor(NPC, "voiceover/english/knight-captain_elgrondeth/qey_village01/100_quest_captain_elgrondeth_questcomplete_55592dd4.mp3", "I appreciate your help.  If I can return the favor someday, I shall.", "thanks", 1398230613, 3767711690, Spawn, 0)
end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("First, I need you to investigate the sudden increase of vermin in Antonica. The beasts are eating away at our food stores and must be destroyed. I would send a guard, but we have more reports than my guards can handle. Are you ready to help?")
	Dialog.AddVoiceover("voiceover/english/knight-captain_elgrondeth/qey_village01/captainelgrondeth002.mp3", 4148519234, 3732616918)
	Dialog.AddOption("I am ready!")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("One of the guards didn't show up for his shift, and I have reports that I need investigated. It's not easy work, but you look up for a challenge. What do you say? You want to help me out with my investigation?")
	Dialog.AddVoiceover("voiceover/english/knight-captain_elgrondeth/qey_village01/captainelgrondeth001.mp3", 1567852224, 3144262033)
	Dialog.AddOption("I would be glad to help.", "Dialog1")
	Dialog.AddOption("Sorry, I can't help right now.")
	Dialog.Start()
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("First, I need you to investigate the sudden increase of vermin in Antonica. The beasts are eating away at our food stores and must be destroyed. I would send a guard, but we have more reports than my guards can handle. Are you ready to help?")
	Dialog.AddVoiceover("voiceover/english/knight-captain_elgrondeth/qey_village01/captainelgrondeth002.mp3", 4148519234, 3732616918)
	Dialog.AddOption("I am ready!","StartQuest")
	Dialog.Start()
end	
	
function StartQuest(NPC,Spawn)
    OfferQuest(NPC,Spawn,305)
    FaceTarget(NPC,Spawn)
end


function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "thanks", 0, 0, Spawn, 0)
	Dialog.AddDialog("Thank the gods you came along! Just when I need an extra set of hands!")
	Dialog.AddVoiceover("voiceover/english/captain_elgrondeth/qey_village01/captainelgrondeth000.mp3", 3582894338, 2709560661)
    if GetLevel(Spawn)>=7 then	
	Dialog.AddOption("What do you mean?", "Dialog2")
	end
    if GetLevel(Spawn)<7 then	
	Dialog.AddOption("Err, perhaps when I've seen a bit more action I'll be ready to lend a hand.")
	end
	Dialog.AddOption("I am a little preoccupied just now.")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "smile", 0, 0, Spawn, 0)
	Dialog.AddDialog("Well done I must say!  You handled that last task nearly as quickly as one of my own guards.  Next report is a bit tricky.  It's a bit tricky.  Are you ready?")
	Dialog.AddVoiceover("voiceover/english/captain_elgrondeth/qey_village01/captainelgrondeth004.mp3", 32799599, 1218371432)
	Dialog.AddOption("I'm ready!  What's next?", "Dialog6")
	Dialog.AddOption("I am a little preoccupied just now.")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,305, 2)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("More and more people are exploring the local yards.  We must protect them from the vicious beasts infesting the area.  Brown bear populations have become a particular problem.  You must cull the beast's numbers!  Again, once you complete this task return to me and I'll see if I need more help.")
	Dialog.AddVoiceover("voiceover/english/captain_elgrondeth/qey_village01/captainelgrondeth005.mp3", 2352434236, 2881365274)
	Dialog.AddOption("I'll report back once I've taken care of them")
	Dialog.AddOption("Bears?  Well, alright then.")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn, 0)
	Dialog.AddDialog("Truly remarkable!  You show incrediable fortitude for someone who has no guard training.  I have one final report I need you to handle.  Do you have time to complete this final task?")
	Dialog.AddVoiceover("voiceover/english/captain_elgrondeth/qey_village01/captainelgrondeth006.mp3", 2945126475, 1397255123)
	Dialog.AddOption("Certainly.  What is the threat?","Dialog8")
	Dialog.AddOption("Another one?  I hope it is a real problem.","Dialog8")
	Dialog.AddOption("I am a little preoccupied just now.")
	Dialog.Start()
end

function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,305, 4)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("These reports are very serious.  I'm sure you've seen the thicket lizards in your travels and kept your distance.  They have slain many adventurers.  You must stop the carnage.  Put an end to the menace, and I'll see you are rewarded for your help! ")
	Dialog.AddVoiceover("voiceover/english/captain_elgrondeth/qey_village01/captainelgrondeth007.mp3", 2396655340, 2104454992)
	Dialog.AddOption("I'll report back once they've been dealt with.")
	Dialog.AddOption("Lizards it is then!")
	Dialog.Start()
end

function Dialog9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "thanks", 0, 0, Spawn, 0)
	Dialog.AddDialog("Thank you very much!  I appreciate your help during our time of need.  Please, accept this small token as a sign of my appreciation.  Good luck to you!")
	Dialog.AddVoiceover("voiceover/english/captain_elgrondeth/qey_village01/captainelgrondeth008.mp3", 2945126475, 1397255123)
	Dialog.AddOption("Thanks. I'm glad I could help.","FinishQuest")
	Dialog.AddOption("Well, at least that was the last one.  Take care.","FinishQuest")
	Dialog.Start()
end

function FinishQuest(NPC,Spawn)
    PlayFlavor(NPC, "", "", "salute", 0, 0, Spawn, 0)
    SetStepComplete(Spawn,305, 6)
    FaceTarget(NPC,Spawn)
end