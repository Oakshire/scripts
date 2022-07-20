--[[
	Script Name		:	the_truth_is_out_there.lua
	Script Purpose	:	Handles the quest, "The Truth is out There"
	Script Author	:	torsten
	Script Date		:	19.07.2022
	Script Notes	:	

	Zone			:	Longshadow Alley
	Quest Giver		:	Captain L`Nek
	Preceded by		:	None
	Followed by		:	Silenced Speech
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "Talk to Imnat D'Vren, a secret informant to the Militia.", 1, "Talk to Imnat D'Vren, a secret informant to the Militia. He is in a building to the Southwest of the Destroyed Knowledge Portal.", 11, 1380031)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I talked to Imnat D'Vren.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I talked to Imnat D'Vren and should return to Captain L`Nek.")
    
    AddQuestStepChat(Quest, 2, "I should return to Captain L`Nek.", 1, "I should return to Captain L`Nek in Longshadow Alley.", 11, 1380010)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have returned to Captain L`Nek and let him know what Imnat told me.")
	GiveQuestReward(Quest, Player)
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

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
	    Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
	    QuestComplete(Quest, QuestGiver, Player)
	end
end



