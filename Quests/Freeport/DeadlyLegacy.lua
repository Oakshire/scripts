--[[
        Script Name    : Quests/Freeport/DeadlyLegacy.lua
   	Script Purpose :	Handles the quest, "Deadly Legacy"
	Script Author  :	premierio015
	Script Date		:	18.08.2020
	Script Notes   :	Auto generated with QuestParser.

	Zone			:	The City of Freeport
	Quest Giver		:	Sneel Vaylin
	Preceded by		:	None
	Followed by		:	Battle of Wits (574)
--]]


function Init(Quest)
	AddQuestStep(Quest, 1, "Collect the writing slates", 5, 100, "I should look for the writing slates the ratonga have handed down through our history.  There should be some in Temple Street, if I look there.", 371)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
        conversation = CreateConversation()
        AddConversationOption(conversation, "I know.  I'll return once I have the slates.  Farewell until then.")
        StartConversation(conversation, QuestGiver, Player, "Yes.  Remember, we have tried to warn the other races of the threat from the roekillik in the past.  There's nothing stopping them from wiping us all out if we do nothing.  As ignorant as the other races are, we cannot survive if they do not, and the only thing between the roekillik and all of Norrath is us.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "")

	AddQuestStepChat(Quest, 2, "Return the slates to Sneel in Freeport", 1, "I should look for the writing slates the ratonga have handed down through our history.  There should be some in Temple Street, if I look there.", 11, 5590218)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "")
	UpdateQuestTaskGroupDescription(Quest, 1, "I was able to find the slates, and it seems that they've been damaged intentionally.  It looks like the Roekillik might be closer than we thought.")

	AddQuestStepChat(Quest, 3, "Speak with Salla", 1, "I should speak with the frightened ratonga in Freeport.  I should be able to find them in the shadowy places of the city.", 11, 5590445)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I was able to speak to the fightened ratonga, and have found out some disturbing information.")
 
	AddQuestStepChat(Quest, 4, "Speak with Cles", 1, "I should speak with the frightened ratonga in Freeport.  I should be able to find them in the shadowy places of the city.", 11, 5590268)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "")

	AddQuestStepChat(Quest, 5, "Speak with Feepsin", 1, "I should speak with the frightened ratonga in Freeport.  I should be able to find them in the shadowy places of the city.", 11, 5590095)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "")
	UpdateQuestTaskGroupDescription(Quest, 2, "I was able to speak to the fightened ratonga, and have found out some disturbing information.")

	AddQuestStepChat(Quest, 6, "I should return to Sneel, and tell him what his associates had to say.", 1, "It seems that Sneel's friends believe the roekillik are here in Freeport.  I should report what they said to me to Sneel, over near the Academy of Arcane Science library.", 11, 5590218)
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "")

	AddQuestStep(Quest, 7, "I must root out the false roekillik in the streets of Freeport.", 3, 100, "It seems that Sneel's friends believe the roekillik are here in Freeport.  I should report what they said to me to Sneel, over near the Academy of Arcane Science library.", 2482)
	AddQuestStepCompleteAction(Quest, 7, "Step7Complete")
end

function Step7Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "")

	AddQuestStepChat(Quest, 8, "Return to Sneel in Freeport, and report the roekillik followers", 1, "It seems that Sneel's friends believe the roekillik are here in Freeport.  I should report what they said to me to Sneel, over near the Academy of Arcane Science library.", 11, 5590218)
	AddQuestStepCompleteAction(Quest, 8, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 8, "")
	UpdateQuestTaskGroupDescription(Quest, 3, "I found some false roekillik, and defeated them.  Sneel believes there may be some merit to what his friends had to say.  This might not bode well for any of us.")

	UpdateQuestDescription(Quest, "I eliminated some of the false roekillik who showed up in Freeport, trying to frighten others with their charade.  However, their arrival in the city is a stark reminder to us - the roekillik are still out there, and they would like nothing more than to find a way into the cities of Norrath.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3Complete(Quest, QuestGiver, Player)
	elseif Step == 4 then
		Step4Complete(Quest, QuestGiver, Player)
	elseif Step == 5 then
		Step5Complete(Quest, QuestGiver, Player)
	elseif Step == 6 then
		Step6Complete(Quest, QuestGiver, Player)
	elseif Step == 7 then
		Step7Complete(Quest, QuestGiver, Player)
	elseif Step == 8 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

