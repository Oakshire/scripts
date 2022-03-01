--[[
	Script Name		:	Quests/TheCommonlands/the_giggling_orc.lua
	Script Purpose	:	Handles the quest, "The Giggling Orc"
	Script Author	:	premierio015
	Script Date		:	25.05.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	widget_widget_giggling_orc_x1
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must slay all orcs I see until that giggling orc is found.", 15, 40, "The picture of the smiling orc seems to mock you.  You feel the urge to find him and put him down.", 2488, 330326, 330034, 330128, 330324, 330248, 330266, 330123, 330250, 330288, 330265, 330336, 330325, 2580048, 330229, 330335, 330333, 330289, 330125, 331138, 330405, 330290, 330268, 330228, 330228, 330158, 330292, 330293, 330294, 330295, 330204, 3060002, 3090000, 3090008, 330279, 330202, 330288, 330249, 330218, 330323, 330337, 330211, 2580000, 330264, 330129, 330204, 3060002, 3090000, 3090008, 330327, 330068, 330746, 2580014)
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
	UpdateQuestStepDescription(Quest, 1, "You have found the giggling orc. He no longer has a reason to smile.")
	UpdateQuestTaskGroupDescription(Quest, 1, "The giggling has ended!")

	UpdateQuestDescription(Quest, "The giggling orc has been found and put to rest!")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


