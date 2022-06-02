--[[
    Script Name    : Quests/MultipleZones/fearful_words.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.01 03:06:46
    Script Purpose : 

        Zone       : MultipleZones
        Quest Giver: Thulian Puzzle Box
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepObtainItem(Quest, 1, "Hunt thulian creatures for puzzle boxes to study.", 10, 100, "I must collect and study more Thulian puzzle boxes from Amygdalans and Lizardmen to learn the Thulian language.", 1211, 13530)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
		if HasItem(Player, 14444) then
			RemoveItem(Player, 14444,1)
		end
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have a studied a Thulian puzzle box.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have learned the Thulian language of Modinthule, the Plane of Fear.")
	AddLanguage(Player, 21)
	SendMessage(Player, "You have learned the basics of the Thullian language.", "White")
	UpdateQuestDescription(Quest, "I have studied a great amount of Thulian puzzle boxes etched with phrases in both Norrathian and Thulian. I now understand the Thulian language of Modinthule, the Plane of Fear. <br> <br>")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

