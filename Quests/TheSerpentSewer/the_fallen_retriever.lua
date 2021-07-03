--[[
    Script Name     :   Quests/TheSerpentSewer/the_fallen_retriever.lua
	Script Purpose	:	Handles the quest, "The Fallen Retriever"
	Script Author	:	premierio015
	Script Date		:	02.07.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Serpent Sewer
	Quest Giver		:	A Tattered Note(Item)
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "Speak to Azroth.", 1, "I should go to seek out a person in Freeport that has the name Azroth.  ", 185, 1660040, 5590524)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I spoke to Azroth.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found and spoke to Azroth.")

	AddQuestStepChat(Quest, 2, "I have to go find Qalantir.", 1, "After speaking to Alexandria Tal'Azroth, she directed me towards Qalantir", 11, 1440027, 5590255)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have found Qalantir.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken to Qalantir.")

	AddQuestStepKill(Quest, 3, "I must kill some diseased ratongas.", 5, 100, "I need to fill the vials for Qalantir.", 179, 1540002, 1540021, 1540022, 1540024, 1540028, 1540072, 1540073)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have killed some diseased ratongas.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I have filled the vials for Qalantir.")

	AddQuestStepChat(Quest, 4, "Speak to Qalantir.", 1, "I need to deliver the vials to Qalantir.", 179, 1440027, 5590255)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I spoke to Qalantir.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I delivered the vials to Qalantir.")
    if HasItem(Player, 2976) then
    RemoveItem(Player, 2976)
    end
	UpdateQuestDescription(Quest, "I have found Alexandria Tal`Azroth and learned that her brother was the original keeper of this tattered note. I visited Qalantir to discover that Horatio was dead and then collected blood vials for the Academy of Arcane Science. I was rewarded with coin for my services.")
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
		QuestComplete(Quest, QuestGiver, Player)
	end
end


