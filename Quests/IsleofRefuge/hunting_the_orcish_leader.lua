--[[
    Script Name    : Quests/IsleofRefuge/hunting_the_orcish_leader.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.24 04:09:53
    Script Purpose : 

        Zone       : IsleofRefuge
        Quest Giver: Vladimin
        Preceded by: Striking Back at the Goblins
        Followed by: None
--]]
require "SpawnScripts/Generic/DialogModule"


function Init(Quest)
	AddQuestStepZoneLoc(Quest, 1, "I need to find the orc's cave.", 1, "I must find and enter the cave of the orc leader on the northeastern part of the island.", 11, -13.77, 0.00, -3.00, 324)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
    FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)   
 	Dialog.AddDialog("The other leaders and I are sending out an alliance to destroy this beastly leader.  You will join this force and destroy the orc.  Be warned, this is a treacherous journey that you alone cannot complete.  Go now and find comrades who will help you on this mission to destroy the grisly beast.")
	Dialog.AddVoiceover("voiceover/english/vladiminn/tutorial_island02/vladiminn012.mp3", 2472668333, 3361828940)
    PlayFlavor(QuestGiver, "", "", "nod", 0, 0, Player)
    Dialog.AddOption("I will be on my way.  Be prepared to hear back from me soon.")	
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've found the orc's cave.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found and entered the orc's cave.")

	AddQuestStepKill(Quest, 2, "I must defeat the orc responsible for the goblin attacks.", 1, 100, "I need to defeat Grimgash the Black, the leader of the goblins who has sequestered himself in a cave on the island.", 11, 3240000)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've defeated Grimgash the Black.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've defeated Grimgash the Black, the orc behind the attacks.")

	AddQuestStepChat(Quest, 3, "I must return to speak with Vladiminn.", 1, "I need to return to Vladiminn and tell him of my victory.", 11, 3250016)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I've spoken with Vladiminn.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I've spoken with Vladiminn and let him know of my victory.")

	UpdateQuestDescription(Quest, "As unbelievable as it sounds, I gathered a group of others up and we managed to defeat Grimgash the Black, the leader of the goblins here on the island.  I'm amazed we did so well, really.  Vladiminn has given me a final parting gift, and bids me off to see the rest of the world now.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
