--[[
	Script Name		:	Quests/MultipleZones/an_order_of_orc_tongue_.lua
	Script Purpose	:	Handles the quest, "An Order of Orc Tongue", Allows to speak Orcish Language
	Script Author	:	premierio015
	Script Date		:	29.05.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Multiple Zones
	Quest Giver		:	Orc Smuggler Requisition(10202)
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStep(Quest, 1, "Hunt orcs for smuggler requisitions to study.", 5, 100, "I must collect and study more smuggler requisitions from the orcs of Norrath to learn the orc language.", 75)
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
	UpdateQuestStepDescription(Quest, 1, "I have studied a smuggler requisition.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have learned Orcish, language of the orc race.")

	UpdateQuestDescription(Quest, "I have studied a great amount of orc smuggler requisitions written in both Norrathian and orc. I now understand the language, Orcish. <br> <br>")
	GiveQuestReward(Quest, Player)
	AddLanguage(Player, 17) -- GRANTS PLAYER ABILITY TO SPEAK ORCISH LANGUAGE
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
