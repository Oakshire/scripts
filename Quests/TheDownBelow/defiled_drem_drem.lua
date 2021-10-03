--[[
    Script Name    : Quests/TheDownBelow/defiled_drem_drem.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.02 10:10:26
    Script Purpose : 

        Zone       : TheDownBelow
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to find all of Drem Drem's bones in the Down Below.", 6, 100, "Drem Drem's bones have been strewn throughout the Down Below, I should collect them and lay him to rest.", 91, 1990027)
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
	UpdateQuestStepDescription(Quest, 1, "I found all of Drem Drem's bones and have laid them to rest.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have found all of poor Drem Drem's bones and put them to rest in the same place.")

	UpdateQuestDescription(Quest, "I have found as many of what appear to be Drem Drem's bones as I could.  I hope he rests peacefully.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


