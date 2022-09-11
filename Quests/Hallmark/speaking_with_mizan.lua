--[[
    Script Name    : Quests/Hallmark/speaking_with_mizan.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.10 12:09:37
    Script Purpose : 

        Zone       : Hallmark
        Quest Giver: Garven Tralk
        Preceded by: Gruttooth Invasion
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Mizan.", 1, "I must speak with Mizan at the top of the mage tower.", 11, 3250057)
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
	UpdateQuestStepDescription(Quest, 1, "I've spoken with Mizan.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've spoken with Mizan at the top of the Mage tower.")

	UpdateQuestDescription(Quest, "I have spoken with Mizan Vaeoulin as Garven Tralk bid me.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
