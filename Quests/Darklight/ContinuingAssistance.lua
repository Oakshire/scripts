--[[
	Script Name		:	Quests/Darklight/ContinuingAssistance.lua
	Script Purpose	:	Handles the quest, "Continuing Assistance"
	Script Author	:	Cynnar
	Script Date		:	8/30/2015
	Script Notes	:	

	Zone			:	Darklight Wood
	Quest Giver		:	Laexyra Y'Barriath
	Preceded by		:	Condemned
	Followed by		:	Alakzaer the Missing, Potential Threats
--]]

local ContinuingAssistance = 154

function Init(Quest)
	AddQuestStepChat(Quest, 1, "Deliver a letter to Malyl N'Vazin", 1, "Laexyra Y'Barriath wants me to deliver correspondences to both Malyl N'Vazin and Vornlin B'Vytyl at Wanderlust Fair. I can get there by following the road west from T'Vatar Outpost.", 11, 341004)
	AddQuestStepChat(Quest, 2, "Deliver a letter to Vornlin B'Vytyl", 1, "Laexyra Y'Barriath wants me to deliver correspondences to both Malyl N'Vazin and Vornlin B'Vytyl at Wanderlust Fair. I can get there by following the road west from T'Vatar Outpost.", 11, 340145)
	AddQuestStepCompleteAction(Quest, 1, "Malyl")
	AddQuestStepCompleteAction(Quest, 2, "Vornlin")
end

function CheckProgress(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player, ContinuingAssistance, 1) and QuestStepIsComplete(Player, ContinuingAssistance, 2) then
		UpdateQuestTaskGroupDescription(Quest, 1, "I delivered the correspondences to both Malyl N'Vazin and Vornlin B'Vytyl at Wanderlust Fair.")
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function QuestComplete(Quest, QuestGiver, Player)
	SetCompleteFlag(Quest)
	GiveQuestReward(Quest, Player)
end

function Malyl(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I have spoken with Malyl.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Vornlin(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 2, "I have spoken with Vornlin.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if QuestStepIsComplete(Player, ContinuingAssistance, 1) then
	    Malyl(Quest, QuestGiver, Player)
	end
	if QuestStepIsComplete(Player, ContinuingAssistance, 2) then
	    Vornlin(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end