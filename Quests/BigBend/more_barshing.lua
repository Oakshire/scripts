--[[
	Script Name		:	more_barshing.lua
	Script Purpose	:	Handles the quest, "More Barshing!"
	Script Author	:	torsten
	Script Date		:	12.07.2022
	Script Notes	:	

	Zone			:	Big Bend
	Quest Giver		:	Kroota Gukbutcher
	Preceded by		:	The Fume and Fire Ceremony
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Enforcer Kurdek.", 1, "I need to find Enforcer Kurdek in The Sprawl and see what work he has for me.", 11, 1260017)
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
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Enforcer Kurdek.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have found Enforcer Kurdek.")

	UpdateQuestDescription(Quest, "I have spoken to Enforcer Kurdek.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

