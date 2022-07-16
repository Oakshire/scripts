--[[
	Script Name	: SpawnScripts/ForestRuins/IlaenLilac.lua
	Script Purpose	: Ilaen Lilac 
	Script Author	: Dorbin
	Script Date	: 07.14.2022
	Script Notes	: Auto-Generated Conversation from PacketParser Data
	Note: Restructured completely using new dialog format and built race quest.
--]]
require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
ProvidesQuest(NPC, 5494)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/ilaen_lilac/qey_adv02_ruins_revamp/qst_woodelf_ilaen_lilac_done_8182d6c7.mp3", "I am sure this land shall recover, eventually.", "", 1994088059, 2615640220, Spawn, 0)
elseif not GetRace(Spawn, 15) then -- Checking if Woodelf
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/ilaen_lilac/qey_adv02_ruins_revamp/qst_woodelf_ilaen_lilac_notonquest_ae7644e9.mp3", "There is no failing greater than a child unable to protect a parent.", "", 138794585, 337134419, Spawn, 0)
elseif HasCompletedQuest(Spawn, 5494) or GetQuestStep(Spawn,5494)==3  then-- PostQuest   
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/ilaen_lilac/qey_adv02_ruins_revamp/qst_woodelf_ilaen_lilac_done_8182d6c7.mp3", "I am sure this land shall recover, eventually.", "", 1994088059, 2615640220, Spawn, 0)
elseif not HasQuest(Spawn,5494) and not HasCompletedQuest(Spawn,5494) then --PreQuest
Dialog9(NPC, Spawn)
elseif GetQuestStep(Spawn,5494)==1 or GetQuestStep(Spawn,5494)==2 then
 Dialog1(NPC, Spawn)    
end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Have you found a clue yet?")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/ilaen_lilac/qey_adv02_ruins/quests/ilaen/ilaen005.mp3", 2448866303, 129613781)
    if GetQuestStep(Spawn,5494)==2 then    
	Dialog.AddOption("Yes, I found this arrow.", "Dialog2")
	end
	Dialog.AddOption("I'm afraid not.  I'm still looking.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You found this arrow here? You are certain?")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/ilaen_lilac/qey_adv02_ruins/quests/ilaen/ilaen006.mp3", 1191782376, 3783466405)
	Dialog.AddOption("Yes, from a dead deer.", "Dialog6")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    OfferQuest(NPC,Spawn,5494)
end

function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.AddDialog("May you do so without coming to harm.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/ilaen_lilac/qey_adv02_ruins/quests/ilaen/ilaen004a.mp3", 1329725839, 577542302)
	Dialog.AddOption("Thank you.")
	Dialog.Start()
	end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I do not know, but I believe they are being hunted for sport. They have wounds consistent with arrow fire, but I have yet to recover any clues. Would you be willing to help me search for a clue?")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/ilaen_lilac/qey_adv02_ruins/quests/ilaen/ilaen003.mp3", 1432167079, 3483891269)
	Dialog.AddOption("Yes, I am willing.", "Dialog3")
	Dialog.AddOption("Sorry, no.")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("If you have not felt it yet you will soon. The movement, the sudden interest in this place by multiple parties, and the strange deaths of this land's inhabitants.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/ilaen_lilac/qey_adv02_ruins/quests/ilaen/ilaen001.mp3", 4282317093, 61887410)
	Dialog.AddOption("What are you talking about?", "Dialog7")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("This arrow is of gnollish make. It may have gotten here by innocent means, or a gnoll may have brought it here. If the gnolls are moving in then the Qeynos Guard will be very interested. I want you to take this arrow to Lieutenant Germain. Tell him where you found it, he will be most interested to hear this.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/ilaen_lilac/qey_adv02_ruins/quests/ilaen/ilaen007.mp3", 4076027837, 3268404262)
 	SetStepComplete(Spawn, 5494, 2)
	Dialog.AddOption("Alright, I shall.")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I do not believe this land's problems are enough to interest the Qeynos Guard, not yet lestways. But any child of Tunare who spends time here soon realizes there is something sinister in these lands. The deer of these parts are being slain at an alarming rate. Most of their deaths are obviously the cause of wolves or other predators, natural causes, but some of their bodies are left dead and intact.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/ilaen_lilac/qey_adv02_ruins/quests/ilaen/ilaen002.mp3", 2492224424, 564822145)
	Dialog.AddOption("Killed by what?", "Dialog4")
	Dialog.Start()
end



function Dialog9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("If we do not work to save this land there are no others who will.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/ilaen_lilac/qey_adv02_ruins/quests/ilaen/ilaen000.mp3", 3647715461, 395001732)
	Dialog.AddOption("Save this land from what?", "Dialog5")
	Dialog.Start()
end

