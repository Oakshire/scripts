--[[
    Script Name    : Quests/MultipleZones/claiming_the_goblish_tongue.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.29 02:05:36
    Script Purpose : 
	Script Notes	:	CLASSIC Version of quest.  Gives Studied version of item that actually counts for update.

	Zone			:	Language
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepObtainItem(Quest, 1, "Hunt orcs for smuggler requisitions to study.", 5, 100, "I must collect and study more smuggler requisitions from the orcs of Norrath to learn the orc language.",75, 13529)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
		if HasItem(Player, 10202) then
			RemoveItem(Player, 10202,1)
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
	UpdateQuestStepDescription(Quest, 1, "I have studied a smuggler requisition.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have learned Orcish, language of the orc race.")

if not HasLanguage(Player,17) then
	AddLanguage(Player, 17)
	SendMessage(Player, "You have learned the basics of the Orcish language.", "White")
end

	UpdateQuestDescription(Quest, "I have studied a great amount of orc smuggler requisitions written in both Norrathian and orc. I now understand the language, Orcish.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


