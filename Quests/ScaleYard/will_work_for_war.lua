--[[
	Script Name		:	will_work_for_war.lua
	Script Purpose	:	Handles the quest, "Will Work for War"
	Script Author	:	torsten
	Script Date		:	25.07.2022
	Script Notes	:	

	Zone			:	Scale Yard
	Quest Giver		:	Colin Stoutfist
	Preceded by		:	None
	Followed by		:	Will Fight for Fun
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Coldbrow in the Scale Yard.", 1, "I need to find and speak with this so-called Warchief.", 11, 1390036)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Coldbrow.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have spoken to Dunn Coldbrow and was told to tell Colin to calm down.")

    AddQuestStepChat(Quest, 2, "I should speak to Mirin Zilishia.", 1, "I should speak to Mirin Zilishia in Sclae Yard.", 11, 1390006)
    AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have spoken with Mirin Zilishia.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken to Mirin Zilishia in Scale Yard.")

    AddQuestStepChat(Quest, 3, "I should return to Colin.", 1, "I should return to Colin Stoutfist here in Scale Yard.", 11, 1390052)
    AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "Colin Stoutfist is quite upset with the state of things in Scale Yard. It seems he has nothing to do, and began to make an unpleasant comment about his Warchief. He had the wisdom to stop mid-sentence.")
	GiveQuestReward(Quest, Player)
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

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
	    Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
	    Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
	    QuestComplete(Quest, QuestGiver, Player)
	end
end

