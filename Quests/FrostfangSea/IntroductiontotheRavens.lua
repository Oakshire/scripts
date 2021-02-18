--[[
	Script Name	:	Quests/FrostfangSea/IntroductiontotheRavens.lua
	Script Purpose	:	Handles the quest, "Introduction to the Ravens"
	Script Author	:	EmemJr
	Script Date	:	2/16/2021
	Script Notes	:	

	Zone		:	Frostfang Sea
	Quest Giver	:	Envoy Tami Swifthammer
	Preceded by	:	None
	Followed by	:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 2)
	AddQuestStepChat(Quest, 1, "Deliver Tami's letter to the Ravens of the North.", 1, "The Ravens of the North are based in the crafting and housing area known as Ravens' Roost.", 11, 4701958)
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
	UpdateQuestStepDescription(Quest, 1, "I delivered Tami's letter to the leader of the Ravens of the North.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I delivered Tami's letter to the leader of the Ravens of the North.")

	AddQuestStepChat(Quest, 2, "I should return to Tami.", 1, "Tami is currently based in Erronson's Furs and Leathers shop.", 11, 4700293)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I delivered Tami's letter to the leader of the Ravens of the North, and returned his thanks to her.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I delivered Tami's letter to the leader of the Ravens of the North, and returned his thanks to her.")

	UpdateQuestDescription(Quest, "I delivered Tami's introduction letter to the leader of the Ravens of the North, and returned his thanks to her.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
