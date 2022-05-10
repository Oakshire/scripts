--[[
    Script Name    : Quests/TheElddarGrove/letter_for_tabby.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.09 03:05:47
    Script Purpose : 

        Zone       : TheElddarGrove
        Quest Giver: Initiate Tara
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I must take this letter to Tabby Copperpot in South Qeynos.", 1, "I must deliver this letter to Tabby Copperpot working at an eatery in South Qeynos.", 1223, 2310007)
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
	UpdateQuestStepDescription(Quest, 1, "I've taken the letter Tabby Copperpot. ")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have delivered the letter to Tabby Copperpot in South Qeynos.")

	UpdateQuestDescription(Quest, "I have delivered a letter for Initiate Tara to Tabby, and Tabby was very excited to finally hear from Tara.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
