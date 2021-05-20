--[[
    Script Name    : Quests/TheCommonlands/NarinHeirloom.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.20 08:05:23
    Script Purpose : 

        Zone       : TheCommonlands, Fallen Gate
        Quest Giver: V'Tal Narin
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStep(Quest, 1, "I am looking for V'tal's brother and the heirloom", 1, 100, "I am looking for V'tal's brother and the heirloom.  Her brother may have gone down to help the Thexians excavate the Hall of the Fallen.", 1046)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
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
	UpdateQuestStepDescription(Quest, 1, "I found her brother and the heirloom.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found her brother and the heirloom.")

	AddQuestStepChat(Quest, 2, "I need to return to V'tal", 1, "I need to return to V'tal and tell her what I have found.", 11, 330173)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have returned the lockbox to V'tal and told her about her brother.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have returned the lockbox to V'tal and told her about her brother.")

	UpdateQuestDescription(Quest, "V'tal Narin's brother was dead, but I found the box and returned it to her.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
