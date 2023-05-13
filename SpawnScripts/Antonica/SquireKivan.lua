--[[
    Script Name    : SpawnScripts/antonica/SquireKivan.lua
    Script Author  : Premierio015, Dorbin
    Script Date    : 2021.08.08 07:08:53
    Script Purpose : Restructured using dialog module. - Dorbin 05/12/2023
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local GettingTheAxe = 5334 -- Getting the Axe quest

function spawn(NPC)
ProvidesQuest(NPC,  GettingTheAxe)
end

function hailed(NPC, Spawn)
if not HasQuest(Spawn,GettingTheAxe) then
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Are you hungry? I'm making soup.")
	Dialog.AddVoiceover("voiceover/english/squire_kivan/antonica/squirekivan000.mp3", 2734271826, 247332290)
	Dialog.AddOption("Who are you?", "Option1")
	Dialog.AddOption("No thank you. I need to be going now.")
	Dialog.AddOption("I need to leave, the smell of that soup is making me sick.","Sulk")
	Dialog.Start()
	
elseif HasQuest(Spawn,GettingTheAxe) then
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Did you find the Sabertooth's mine?")
	Dialog.AddVoiceover("voiceover/english/squire_kivan/antonica/squirekivan006.mp3", 3390324714, 548456268)
	if GetQuestStep(Spawn, GettingTheAxe) == 2 then
	Dialog.AddOption("Yes, here are the ten mining picks you asked for.", "Option5")
    end
	Dialog.AddOption("No, not yet.")
	Dialog.Start()
	
elseif HasCompletedQuest(Spawn, GettingTheAxe) then
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You should speak to Sir Jeager now. I've chores to do.")
	Dialog.AddVoiceover("voiceover/english/squire_kivan/antonica/squirekivan008.mp3", 2477620923, 2758696689)
	Dialog.AddOption("Ok, I will speak to him soon.")
	Dialog.Start()
    end
end

function Sulk(NPC, Spawn)
    PlayFlavor(NPC, "", "", "sulk", 0, 0, Spawn)
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I'm Kivan, Sir Jeager's squire and faithful servant. We're here to fight the insidious Sabertooth clan.")
	Dialog.AddVoiceover("voiceover/english/squire_kivan/antonica/squirekivan001.mp3", 4248655017, 1242656095)
    PlayFlavor(NPC, "", "", "attention", 0, 0, Spawn)
	Dialog.AddOption("What is the Sabertooth clan?", "Option3")
	Dialog.AddOption("Who is Sir Jeager?", "Option2")
	Dialog.AddOption("Ok, I need to be on my way now.")
	Dialog.Start()
end


function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Sir Jeager is the most honorable of all the Royal Antonican Guards. He alone was assigned to fight off the Sabertooth clan.  He's a leader among leaders and a brave soldier.")
	Dialog.AddVoiceover("voiceover/english/squire_kivan/antonica/squirekivan002.mp3", 3336136995, 3800742023)
    PlayFlavor(NPC, "", "", "smile", 0, 0, Spawn)
	Dialog.AddOption("If he's such a great leader, why was he assigned to do this alone?", "Option4")
	Dialog.AddOption("What is the Sabertooth clan?", "Option3")
	Dialog.AddOption("Ok, I need to be going now.")
	Dialog.Start()
end


function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("They're a clan of vicious gnolls. They infest the hills around here, and at night they prey on the children of Qeynos. We must stop them!")
    PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
	Dialog.AddVoiceover("voiceover/english/squire_kivan/antonica/squirekivan004.mp3", 235168551, 73943333)
	Dialog.AddOption("Why was Sir Jeager assigned the task of fighting these gnolls?", "Option4")
	Dialog.AddOption("I must leave now.")
	Dialog.Start()
end




function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("It seems that politics and honesty do not mix. One of the Queen's advisors did not like something Sir Jeager said. So, here we are.")
	Dialog.AddVoiceover("voiceover/english/squire_kivan/antonica/squirekivan003.mp3", 3360347325, 2913141517)
    PlayFlavor(NPC, "", "", "sigh", 0, 0, Spawn)
    if CanReceiveQuest(Spawn,GettingTheAxe) then
	Dialog.AddOption("Is there anything I can do to help?", "offer")
    end
	Dialog.AddOption("That's too bad.")
	Dialog.Start()
end

function Option5(NPC, Spawn)
    SetStepComplete(Spawn, GettingTheAxe, 2)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Wonderful! I appreciate your help. I hope we can stop the gnolls before they become a greater threat to our people. I need to get back to my chores now. You must speak to Sir Jeager.")
	Dialog.AddVoiceover("voiceover/english/squire_kivan/antonica/squirekivan007.mp3", 1357752664, 1145030889)
    PlayFlavor(NPC, "", "", "heelclick", 0, 0, Spawn)
	Dialog.AddOption("Ok, I will speak to him soon.")
	Dialog.Start()
end





function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, GettingTheAxe)
end

function respawn(NPC)
	spawn(NPC)
end