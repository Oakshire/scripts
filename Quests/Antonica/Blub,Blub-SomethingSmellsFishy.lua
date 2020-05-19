--[[
	Script Name		:	Blub,Blub-SomethingSmellsFishy.lua
	Script Purpose	:	Handles the quest, "Blub, Blub - Something Smells Fishy"
	Script Author	:	geordie0511
	Script Date		:	14.03.2019
	Script Notes	:	

	Zone			:	Antonica
	Quest Giver		:	
	Preceded by		:	Achoo! Antonican Pepper
	Followed by		:	Killing With Kindness, One Barbarian at a Time
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to rustle up some Coldwind fish for Matsy's Chowder.", 10, 100, "Matsy needs the special Coldwind fish for her soup. They can be found in the ocean or in the rivers.", 2547, 121237, 120079, 121249, 120094, 121250, 120096, 121252, 120093)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I managed to get enough Coldwind fish for Matsy's Chowder.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have caught all the Coldwind fish I can carry.")

	AddQuestStepChat(Quest, 2, "I should return to Matsy.", 1, "I need to return these fish to Matsy.", 2547, 120280)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "Matsy now has enough Coldwind fish to make extra chowder.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have brought Matsy the Coldwind fish.")

	UpdateQuestDescription(Quest, "I have returned the Coldwind fish to Matsy.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

