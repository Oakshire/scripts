--[[
    Script Name    : Quests/TimorousDeep/BecomingACrafter.lua
    Script Author  : Ememjr
    Script Date    : 2021.01.28 12:01:44
    Script Purpose : 

        Zone       : TimorousDeep
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	SetQuestFeatherColor(Quest, 2)
	AddQuestStepChat(Quest, 1, "I need to speak with Rozokal Niba'mok.", 1, "", 11, 2631485)
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
	
	UpdateQuestDescription(Quest, "I have spoken with Rozokal Niba'mok.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

