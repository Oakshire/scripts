--[[
	Script Name		:	Quests/MultipleZones/BarkLikeAGnoll.lua
	Script Purpose	        :	Handles the quest, "Bark Like a Gnoll"
	Script Author	        :	premierio015
	Script Date		:	04.06.2020
	Script Notes	        :	Auto generated with QuestParser.

	Zone			:	Language
	Quest Giver		:	Chirannite Threat Totem
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepObtainItem(Quest, 1, "Hunt gnolls of Norrath for threat totems to study.", 5, 100, "I must collect and study more Chirannite Threat Totems from the gnolls of Norrath to learn the Gnollish language.", 860, 4963)
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
	UpdateQuestStepDescription(Quest, 1, "I have a studied a Chirannite Threat Totem.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have learned Gnollish, language of the gnoll race.")

	UpdateQuestDescription(Quest, "I have studied a great amount of gnoll runes written in both Norrathian and Gnollish. I now understand the language of the gnolls. <br> <br>")
	GiveQuestReward(Quest, Player)
        AddLanguage(Player, 18)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

