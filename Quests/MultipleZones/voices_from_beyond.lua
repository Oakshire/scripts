--[[
    Script Name    : Quests/MultipleZones/voices_from_beyond.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.01 01:06:01
    Script Purpose : 

        Zone       : MultipleZones
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepObtainItem(Quest, 1, "Hunt shadowed men for transference directives to study.", 10, 100, "I must collect and study more transference directives from the shadowed men to learn their language.", 374, 13531)
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
	UpdateQuestStepDescription(Quest, 1, "I have studied a transference directive.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have learned the Words of Shade, language of the shadowed men.")
	AddLanguage(Player, 22)
	SendMessage(Player, "You have learned the basics of Words of Shade.", "White")
	UpdateQuestDescription(Quest, "I have studied a great number of transference directives scribed with phrases in both Norrathian and the shadowed man language. I now understand the language, Words of Shade.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

