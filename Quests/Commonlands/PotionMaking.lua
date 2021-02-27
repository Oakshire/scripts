--[[
	Script Name		:	Quests/Commonlands/PotionMaking.lua
	Script Purpose	:	Handles the quest, "Potion Making"
	Script Author	:	premierio015
	Script Date		:	26.02.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	Arconicus
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill ten wisps and collect their dust", 10, 100, "The bridge leading north from the crossroads will take me to the wisps, but it seems they're only out late at night.", 327, 330163, 330162, 330161, 330194)
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
	UpdateQuestStepDescription(Quest, 1, "I have killed the wisps and collected their dust.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've gathered enough wisp dust to bring back to the alchemist.")

	AddQuestStepChat(Quest, 2, "I need to return to Arconicus", 1, "I should bring the dust to the alchemist.", 11, 330180)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've spoken with the alchemist.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've given the alchemist the vial of wisp dust.")

	AddQuestStepKill(Quest, 3, "I must kill ten dangerous zombies and collect their glands", 10, 100, "The alchemist has asked me to gather some kind of gland inside the skull of a sentient person. He suggested that zombies may still possess the gland.", 109, 330154, 330156, 330758, 330191, 330347, 330271, 330754, 330409, 330155)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have killed the zombies and collected their glands.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I have collected what he calls 'glands' from inside their skulls.")

	AddQuestStepChat(Quest, 4, "I need to return to Arconicus at the Crossroads", 1, "I need to bring these components back to the alchemist for my payment.", 11, 330180)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I've spoken with the alchemist.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I've been paid for bringing the alchemist the components he wanted.")

	UpdateQuestDescription(Quest, "I've collected the ingredients Arconicus needed for his potion.  Apparently he is making a growth potion of some sort, but was too busy to elaborate any further.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3Complete(Quest, QuestGiver, Player)
	elseif Step == 4 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
