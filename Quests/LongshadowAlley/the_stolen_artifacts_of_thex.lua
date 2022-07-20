--[[
	Script Name		:	the_stolen_artifacts_of_thex.lua
	Script Purpose	:	Handles the quest, "The Stolen Artifacts of Thex"
	Script Author	:	torsten
	Script Date		:	20.07.2022
	Script Notes	:	

	Zone			:	Longshadow Alley
	Quest Giver		:	Kylanith D`Lar
	Preceded by		:	None
	Followed by		:	None
--]]

local TheStolenArtifactsofThex = 5683

function Init(Quest)
	AddQuestStep(Quest, 1, "Inspect the Thex monument", 1, 100, "I must go to Big Bend and find all five of the Thex artifacts relocated there.", 11)
    AddQuestStep(Quest, 2, "Inspect the Thex monument", 1, 100, "I must go to Big Bend and find all five of the Thex artifacts relocated there.", 11)
	AddQuestStep(Quest, 3, "Inspect the Thex monument", 1, 100, "I must go to Big Bend and find all five of the Thex artifacts relocated there.", 11)
	AddQuestStep(Quest, 4, "Inspect the Thex monument", 1, 100, "I must go to Big Bend and find all five of the Thex artifacts relocated there.", 11)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "Inspected the Thex monument.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "Inspected the Thex monument.")
	CheckProgress(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "Inspected the Thex monument.")
	CheckProgress(Quest, QuestGiver, Player)
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "Inspected the Thex monument.")
	CheckProgress(Quest, QuestGiver, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player, TheStolenArtifactsofThex, 1) and QuestStepIsComplete(Player, TheStolenArtifactsofThex, 2) and QuestStepIsComplete(Player, TheStolenArtifactsofThex, 3) and QuestStepIsComplete(Player, TheStolenArtifactsofThex, 4) then
 	    UpdateQuestTaskGroupDescription(Quest, 1, "I went to Big Bend and could only find four Thex artifacts.")
 	    
	    AddQuestStepChat(Quest, 5, "Speak to Kylanith D'Lar", 1, "I must report back to Kylanith D'Lar in Longshadow Alley.", 11, 1380032)
	    AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
	end
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "Spoke to Kylanith D'Lar.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I reported back to Kylanith D'Lar in Longshadow Alley.")

	AddQuestStep(Quest, 6, "Inspect the Thex monument", 1, 100, "I must go to the Freeport Graveyard to find the fifth Thex artifact.  I can reach the Graveyard by using any of the bells in and around the City of Freeport.", 11)
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "Inspected the Thex monument.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I went to the Freeport graveyard to find the fifth Thex artifact.")

	AddQuestStepChat(Quest, 7, "Speak to Kylanith D'Lar", 1, "I must report back to Kylanith D'Lar in Longshadow Alley.", 11, 1380032)
	AddQuestStepCompleteAction(Quest, 7, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 7, "Spoke to Kylanith D'Lar.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I reported back to Kylanith D'Lar in Longshadow Alley.")

	UpdateQuestDescription(Quest, "I discovered all five relocated Thex artifacts in Freeport. Kylanith D'Lar in Longshadow Alley was pleased with my report.")
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
		Step3Complete(Quest, QuestGiver, Player)
	elseif Step == 4 then
		Step4Complete(Quest, QuestGiver, Player)
	elseif Step == 5 then
		Step5Complete(Quest, QuestGiver, Player)
	elseif Step == 6 then
		Step6Complete(Quest, QuestGiver, Player)
	elseif Step == 7 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
