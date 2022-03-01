--[[
    Script Name    : Quests/Darklight/RichFishFlesh.lua
    Script Author  : fearfx
    Script Date    : 2017.01.25 07:01:26
    Script Purpose : 

        Zone       : Darklight
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to bring Smolderfin's flesh to Calnozz.", 1, "I should bring the rich flesh of Smolderfin to Calnozz J'Melvirr.", 134, 340066)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have given Calnozz the flesh.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have brought the flesh of Smolderfin to Calnozz.")

	UpdateQuestDescription(Quest, "I have brought the flesh of Smolderfin to Calnozz.")
        RemoveItem(Player, 11524)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end
