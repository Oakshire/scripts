--[[
    Script Name    : Quests/Antonica/jolina_fairfeathers_gravestone.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.12 04:05:04
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: Tombstone in Antoncia
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill twelve highwaymen in Antonica.", 15, 100, "Poor Jolina was killed by highwaymen for a mere loaf of bread and a bag full of seeds. I should seek out these highwaymen and exact justice upon them in her name!", 611, 120161,120162,120171,121858)
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
	UpdateQuestStepDescription(Quest, 1, "I have exacted justice upon the highwaymen in the name of Jolina Fairfeather.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have brought the highwaymen to justice.")

	UpdateQuestDescription(Quest, "I have sought out the highwaymen in Antonica and made them pay for what they did to poor Jolina Fairfeather.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
