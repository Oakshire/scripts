--[[
	Script Name		:	an_ode_to_oakmyst.lua
	Script Purpose	:	Handles the quest, "An Ode to Oakmyst"
	Script Author	:	ememjr
	Script Date		:	5/9/2017
	Script Notes	:

	Zone			:	Oakmyst Forest
	Quest Giver		:
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepLocation(Quest, 1, "Go to Sloshed Tree", 10, "Visit the Oakmyst location hinted of in the line \"A lonesome trunk drifting amidst the clear blue.\"", 11, 924, 2, -276)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "Visited Sloshed Tree")
	UpdateQuestTaskGroupDescription(Quest, 1, "I visited the Sloshed Tree.")

	AddQuestStepLocation(Quest, 2, "Go to Oakmyst Falls", 10, "Visit the Oakmyst location hinted of in the line \"The life giver billows and feeds.\"", 11, 994, 0, -204)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "Visited Oakmyst Falls")
	UpdateQuestTaskGroupDescription(Quest, 2, "I visited Oakmyst Falls.")

	AddQuestStepLocation(Quest, 3, "Go to Shaded Tail Glade", 10, "Visit the Oakmyst location hinted of in the line \"Dark beauty with huddled rodent masses hangs over the trailed pass.\"", 11, 866, 11, -226)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "Visited Shaded Tail Glade")
	UpdateQuestTaskGroupDescription(Quest, 3, "I visited the Shaded Tail Glade")

	AddQuestStepLocation(Quest, 4, "Go to Fay Overlook", 10, "Visit the Oakmyst location hinted of in the line \"A perch above the trees to gaze down upon the shimmering fay.\"", 11, 853, 13, -314)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "Visited Fay Overlook")
	UpdateQuestTaskGroupDescription(Quest, 4, "I visited the Fay Overlook.")

	AddQuestStepLocation(Quest, 5, "Go to Teardrop Cave", 10, "Visit the Oakmyst location hinted of in the line \"A place of secluded beauty, flowering an isolated teardrop.\"", 11, 935, 12, -172 )
	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 5, "Visited Teardrop Cave")
	UpdateQuestTaskGroupDescription(Quest, 5, "I visited Teardrop Cave.")

	UpdateQuestDescription(Quest, "I visited all the points of interests hinted at within the poem called \"An Ode to Oakmyst\".")
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
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end
