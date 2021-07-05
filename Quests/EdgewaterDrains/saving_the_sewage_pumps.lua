--[[
	Script Name		:	saving_the_sewage_pumps.lua
	Script Purpose	:	Handles the quest, "Saving the Sewage Pumps"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	04.07.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Edgewater Drains
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to slay six drudge mucus!", 6, 100, "I need to slay six drudge mucus!", 135, 1560002, 1560058)
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
	UpdateQuestStepDescription(Quest, 1, "I killed six drudge mucus.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I killed six drudge mucus.")
    if HasItem(Player,  3489) then
    RemoveItem(Player, 3489)
    end
	UpdateQuestDescription(Quest, "Six drudge mucus were slain. They no longer present a threat to the sewer pumps!")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

