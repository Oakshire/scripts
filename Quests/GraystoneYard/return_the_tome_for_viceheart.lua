--[[
	Script Name		:	return_the_tome_for_viceheart.lua
	Script Purpose	:	Handles the quest, "Return the Tome for Viceheart"
	Script Author	:	Dorbin
	Script Date		:	3/7/2022
	Script Notes	:	

	Zone			:	Graystone Yard
	Quest Giver		:	Barry Viceheart
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to drop off the tome to scribe Bleemeb in Castleview.", 1, "I need to return the tome to the scribe shop in Castleview Hamlet.", 195, 2360055)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	UpdateQuestZone(Quest,"Castleview Hamlet")
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
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I spoke to Scribe Bleemeb in Castleview.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I returned the tome to Bleemeb in Castleview Hamlet.")
	
	UpdateQuestZone(Quest,"Graystone Yard")
	AddQuestStepChat(Quest, 2, "I need to relay the message back to Viceheart in Graystone Yard.", 1, "I need to return to Viceheart at the bank in Graystone Yard.", 0, 2350024)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I returned to Barry Viceheart.")
	UpdateQuestDescription(Quest, "I returned the tome and relayed a message to Viceheart. The scribe shop in Castleview Hamlet does not want to do business with him any longer.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


