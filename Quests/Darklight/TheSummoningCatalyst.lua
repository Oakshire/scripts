--[[
	Script Name		:	TheSummoningCatalyst.lua
	Script Purpose	:	Handles the quest, "The Summoning Catalyst"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	26/01/2017
	Script Notes	:	

	Zone			:	Darklight Wood
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need the Staff of the Flamecallers.", 1, 100, "I need the Staff of the Flamecallers.", 621, 340128)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have retrieved the Staff of the Flamecallers.")

	AddQuestStepChat(Quest, 2, "I should speak with Belarshalee Do'Torlyl.", 1, "I need the Staff of the Flamecallers.", 11, 340173)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have spoken with Belarshalee Do'Torlyl.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have obtained the Staff of the Flamecallers.")

	UpdateQuestDescription(Quest, "I have retrieved the Staff of the Flamecallers.")
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