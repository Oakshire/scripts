--[[
    Script Name    : Quests/WailingCaves/the_crimson_paw_cloak.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.14 09:07:52
    Script Purpose : 

        Zone       : WailingCaves
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must slay ten Ree jailers orcs in the Wailing Caves.", 10, 100, "After being overtaken by a mysterious force within the crimson paw cloak I now have the urge to slay orc Ree jailers.", 611, 2580016, 2580052)
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
	UpdateQuestStepDescription(Quest, 1, "I have slain ten Ree jailer orcs.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have slain ten Ree jailers and the feeling to slay more has passed.")
    if HasItem(Player, 13993) then  -- The Crimson Paw Cloak
    RemoveItem(Player, 13993)
    end
	UpdateQuestDescription(Quest, "After being driven to slay Ree jailers, I delved deep into the Wailing Caves to slay them. After doing so I found my feeling of hatred gone. The power of the cloak has subsided, but is it gone forever?")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


