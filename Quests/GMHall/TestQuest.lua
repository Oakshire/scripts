--[[
	Script Name:	LeafySurprise
	Script Purpose:	Test Quest
	Script Author:	Roachie
	Script Date:	2021.01.21

	Quest ID:		999908
	Zone:			houseofroachie
	Preceded By:	
	Followed By:	
--]]

function Init(Quest)
	AddQuestStepObtainItem(Quest, 1, "Get the leaves", 5, 2, "Freddums needs your help!", 0, 3352)
	AddQuestStepCompleteAction(Quest, 1, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I got the leaves!")
	UpdateQuestTaskGroupDescription(Quest, 1, "You have helped roachie")
	UpdateQuestDescription(Quest, "description")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
end