--[[
    Script Name    : Quests/Blackburrow/a_tarnished_silver_key.lua
    Script Author  : Premierio015
    Script Date    : 2022.07.30 09:07:20
    Script Purpose : 

        Zone       : Blackburrow
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
    SetQuestRepeatable(Quest)
	AddQuestStep(Quest, 1, "Find the chest in Blackburrow that the key fits.", 1, 100, "I need to find the chest where the gnoll hid his treasure.", 648)
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
	UpdateQuestStepDescription(Quest, 1, "I found the chest that the key fits.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found the chest where the gnoll hid his treasure.")
    	GiveQuestReward(Quest, Player)    
	UpdateQuestDescription(Quest, "Inside the chest, I found the remains of the gnoll's personal property.")
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
end
   end


