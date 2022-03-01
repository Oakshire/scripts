--[[
	Script Name		:	Quests/TheCommonlands/elephant_hide_boots_.lua
	Script Purpose	:	Handles the quest, "Elephant Hide Boots"
	Script Author	:	premierio015
	Script Date		:	01.06.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	Holey Hide Boots(Item)
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepObtainItem(Quest, 1, "I'm going to need some elephant hide to begin with.  I'll need a big patch if this is going to work.", 5, 100, "If these boots are going to be repaired, I'm going to have to do some work.", 129, 13570,  1521,  1499)
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
	UpdateQuestStepDescription(Quest, 1, "I've been able to find a large patch of elephant hide.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've been able to repair these boots back to their former condition.")

	AddQuestStepKill(Quest, 2, "Check Dervish Cutthroats for stitching cord", 5, 100, "I need to check to see if any of these Dervish Cutthroats have any stitching cord on them.", 2329, 330092, 330104)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've been able to find a lot of stitching cord on the Dervish Cutthroats.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I was able to attain some cord from Dervish Cutthroats here in the commonlands.")

	AddQuestStepLocation(Quest, 3, "I need to soak these boots in Pride Lake to shrink the hide", 10, "I'm going to need to shrink the new hide on these boots to get them to fit properly, I should head to the nearest lake and soak the hide.", 11, 590, -45, -360)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I've soaked the boots in Pride Lake.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I managed to soak the hide in Pride Lake to the perfect size.")

	UpdateQuestDescription(Quest, "Through much work, I've been able to repair these boots.  They're now a nice set of Elephant Hide Boots. <br> <br>")
	GiveQuestReward(Quest, Player)
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
