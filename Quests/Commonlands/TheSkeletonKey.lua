--[[
	Script Name		:	Quests/Commonlands/TheSkeletonKey.lua
	Script Purpose	:	Handles the quest, "The Skeleton Key"
	Script Author	:	premierio015
	Script Date		:	11.05.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	Ventar T'Kal
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStep(Quest, 1, "I need the blood-stained pointer finger of an undead Ree orc", 1, 100, "I need to collect the bloody finger bones of the Shin'Ree orcs from outside the Wailing Caves in the Commonlands.", 161)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I will return.")
	StartConversation(conversation, QuestGiver, Player, "Indeed you will, then you will see what spoils we reap in such jobs as these.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have the blood-stained pointer finger.")

	AddQuestStep(Quest, 2, "I need the blood-stained middle finger of an undead Ree orc", 1, 100, "I need to collect the bloody finger bones of the Shin'Ree orcs from outside the Wailing Caves in the Commonlands.", 161)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have the blood-stained middle finger.")

	AddQuestStep(Quest, 3, "I need the blood-stained ring finger of an undead Ree orc", 1, 100, "I need to collect the bloody finger bones of the Shin'Ree orcs from outside the Wailing Caves in the Commonlands.", 161)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have the blood-stained ring finger.")

	AddQuestStep(Quest, 4, "I need the blood-stained little finger of an undead Ree orc", 1, 100, "I need to collect the bloody finger bones of the Shin'Ree orcs from outside the Wailing Caves in the Commonlands.", 161)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have the blood-stained little finger.")

	AddQuestStep(Quest, 5, "I need the blood-stained thumb of an undead Ree orc", 1, 100, "I need to collect the bloody finger bones of the Shin'Ree orcs from outside the Wailing Caves in the Commonlands.", 161)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have the blood-stained thumb.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected enough bloody finger bones to make a hand and unlock the Shin'Ree treasure box.")

	AddQuestStepChat(Quest, 6, "I need to return to Ventar", 1, "Now that I have done as he asked, I should return to Ventar.", 11, 330214)
	AddQuestStepCompleteAction(Quest, 6, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 6, "I have spoken with Ventar.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken with Ventar.")

	UpdateQuestDescription(Quest, "The Shin'Ree &quot;treasure&quot; was an earring and something called &quot;The Code of the Shin'Ree.&quot; Ventar was quite disappointed, but still believes he can sell it to get some money. He gave the earring to me.")
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
		Step4Complete(Quest, QuestGiver, Player)
	elseif Step == 5 then
		Step5Complete(Quest, QuestGiver, Player)
	elseif Step == 6 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
