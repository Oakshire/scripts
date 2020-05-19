--[[
	Script Name		:	Quests/Darklight/ReporttoZezas.lua
	Script Purpose	:	Handles the quest, "Report to Zezas"
	Script Author	:	Cynnar
	Script Date		:	8/30/2015
	Script Notes	:	

	Zone			:	Darklight Wood
	Quest Giver		:	Laexyra Y'Barriath
	Preceded by		:	Condemned
	Followed by		:	Finding the Dark Bargainers
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Zezas X'Zauzin. He should be just inside Neriak.", 1, "I need to speak with Zezas X'Zauzin.", 11, 0)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
		UpdateQuestDescription(Quest, "I have spoken with Zezas X'Zauzin.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end