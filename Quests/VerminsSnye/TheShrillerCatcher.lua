--[[
	Script Name		:	Quests/VerminSnye/TheShrillerCatcher.lua
	Script Purpose	        :	Handles the quest, "The Shriller Catcher"
	Script Author	        :	premierio015
	Script Date		:	18.05.2020
	Script Notes	        :	Auto generated with QuestParser.
	Zone			:	Vermin's Snye
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to slay twenty rabid shrillers in Vermin's Snye.", 20, 100, "The rabid shrillers in Vermin's Snye need to be exterminated as soon as possible.", 140, 2000025)
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
	UpdateQuestStepDescription(Quest, 1, "I have slain the rabid shrillers.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have slain the rabid shrillers for the good of Qeynos")

	UpdateQuestDescription(Quest, "I have slain many of the rabid shrillers in Vermin's Snye, making the City of Qeynos a little safer.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


