--[[
	Script Name		:	Quests/EdgewaterDrains/dangerous_waters_.lua
	Script Purpose	:	Handles the quest, "Dangerous Waters"
	Script Author	:	premierio015
	Script Date		:	05.07.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Edgewater Drains
	Quest Giver		:	widget_pig_body
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to slay twenty massive needleteeth in Edgewater Drains.", 20, 100, "The deepest recesses of the Edgewater Drains are dangerous enough without massive needletooths harassing people as they swim through.  I have taken it upon myself to destroy them.", 86, 1560022)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
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

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have slain the massive needleteeth.")
	UpdateQuestTaskGroupDescription(Quest, 1, "Passage through the Edgewater Drains should be safer now.")

	UpdateQuestDescription(Quest, "I have slain some of the massive needleteeth.  The waters are still dangerous, but at least people won't have to deal with so many of those things anymore.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

