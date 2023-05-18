--[[
    Script Name    : Quests/Antonica/deadly_undead.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.17 11:05:15
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "Slay the Caltorsis Clerics", 20, 100, "This journal must have been lost several years ago.", 611,120131)
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
	UpdateQuestStepDescription(Quest, 1, "I have slain enough Caltorsis Clerics")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have been able to rid antonica of several Caltorsis Clerics")

	UpdateQuestDescription(Quest, "The undead Caltorsis in this area seem to be unaffected by my efforts. However, I have learned a great deal about the undead of Antonica. In the future, perhaps this experience will be of some use to me. ")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
