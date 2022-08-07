--[[
    Script Name    : Quests/Blackburrow/a_filthy_bronze_key.lua
    Script Author  : Premierio015
    Script Date    : 2022.07.29 09:07:57
    Script Purpose : Attempting to add random reward item to quest completion. - Dorbin 07.31.2022

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
	UpdateQuestStepDescription(Quest, 1, "I found the chest that the key fits.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found the chest where the gnoll hid his treasure.")
--  GiveQuestItem(Quest, Player, "Inside the chest, I found the remains of the gnoll's personal property.",162069)

	UpdateQuestDescription(Quest, "Inside the chest, I found the remains of the gnoll's personal property.")
    GiveQuestReward(Quest,Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

--[[    choice = MakeRandomInt(1,3) 
    if choice == 1 then
    AddQuestRewardItem(Quest, 162069)
    elseif choice == 2 then
    AddQuestRewardItem(Quest,  162070)
    elseif choice == 3 then
    AddQuestRewardItem(Quest,  162073)
    end]]--