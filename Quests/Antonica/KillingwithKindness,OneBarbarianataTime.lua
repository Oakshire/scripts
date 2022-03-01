--[[
	Script Name		:	KillingwithKindness,OneBarbarianataTime.lua
	Script Purpose	:	Handles the quest, "Killing with Kindness, One Barbarian at a Time"
	Script Author	:	geordie0511
	Script Date		:	14.03.2019
	Script Notes	:	

	Zone			:	Antonica
	Quest Giver		:	
	Preceded by		:	Blub, Blub - Something Smells Fishy
	Followed by		:	Care Package for Blarton
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to take this stew to Aroof.", 1, "Matsy gave me some of her chowder to give to Aroof.", 295, 121391)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have given Aroof the stew as Matsy requested.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I gave some of Matsy's good soup to Aroof.")

	AddQuestStepChat(Quest, 2, "I need to talk to Matsy.", 1, "I should let Matsy know that Aroof enjoyed the stew.", 295, 120280)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "The stew has been delivered.")
	UpdateQuestTaskGroupDescription(Quest, 2, "Matsy was pleased that Aroof enjoyed his stew.")

	UpdateQuestDescription(Quest, "I gave a drunken barbarian named Aroof some stew on behalf of Matsy.")
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

