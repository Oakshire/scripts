--[[
    Script Name    : Quests/TheDownBelow/an_ancient_scepter.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.13 06:10:49
    Script Purpose : 

        Zone       : TheDownBelow
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to put the scepter in a statue.", 1, "I must return the scepter to the statue it came from.", 620, 1990095)
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
	UpdateQuestStepDescription(Quest, 1, "I've put the scepter in the statue.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've returned the scepter to the statue it came from.")
    if HasItem(Player, 2969) then -- a tarnished scepter Item
    RemoveItem(Player, 2969)
    end
	UpdateQuestDescription(Quest, "As I replaced the scepter in its original position, a small ring fell from the finger of the statue. Had I not been returning the scepter to its original resting place, I would have never noticed it.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
