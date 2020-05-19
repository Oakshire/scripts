--[[
	Script Name		:	Quests/Darklight/AGuardInsignia.lua
	Script Purpose	:	Handles the quest, "A Guard Insignia?"
	Script Author	:	Cynnar
	Script Date		:	9/1/2015
	Script Notes	:	

	Zone			:	Darklight Wood
	Quest Giver		:	Examine a Neriak recruit badge
	Preceded by		:	Picking Up Slack
	Followed by		:	The Missing Recruit
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "Bring the insignia to Ginwyss D'Arkenett", 1, "I should give the insignia I found to Ginwyss D'Arkenett.", 20, 340064)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	RemoveItem(Player, 2333)
	UpdateQuestDescription(Quest, "I have given Ginwyss the insignia. She believes it is from her missing recruit.")
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