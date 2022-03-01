--[[
	Script Name		:	clearing_remmys_name.lua
	Script Purpose	:	Handles the quest, "Clearing Remmy's Name"
	Script Author	:	Dorbin
	Script Date		:	2/22/2022
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Forest Ruins
	Quest Giver		:	Remmy Tumbum
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepObtainItem(Quest, 1, "I need to investigate the shed where the guards store their food.", 1, 100, "Remmy has asked that I investigate the shed where the guards keep their food.", 0,7797)
    
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
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

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have investigated the shed.")
	GiveQuestItem(Quest, Player, "You found a patch of fur.", 7797)

    while HasItem(Player, 7797) do
    RemoveItem(Player,7797)
    end
	AddQuestStepChat(Quest, 2, "I need to bring the gnoll fur to Lieutenant Germain.", 1, "Remmy has asked that I investigate the shed where the guards keep their food.", 94, 1960005)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have given Germain the evidence clearing Remmy.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have investigated the shed.")

	UpdateQuestDescription(Quest, "I found evidence suggesting the gnolls had broken into the guard's food. This interested Lieutenant Germain a great deal.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
    end
end