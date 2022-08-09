--[[
	Script Name		:	two_wrongs_do_not_make_a_right.lua
	Script Purpose	:	Handles the quest, "Two Wrongs Do Not Make a Right"
	Script Author	:	Dorbin
	Script Date		:	2/10/2022
	Script Notes	:	NEEDS Irisor the Insane created and locations for each step made.

	Zone			:	Crypt of Betrayal
	Quest Giver		:	a sullied illegible note
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepLocation(Quest, 1, "I should try to find the original grave of the undead rogue.", 1, "I should try to find the blades the note spoke of.  The best place to start should be here in the Crypt of Betrayal.  If I could find the original grave of the undead rogue that might be where one of the pieces still lie.", 0, 0)
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
	UpdateQuestStepDescription(Quest, 1, "I have found the original grave of the undead rogue.")

	AddQuestStepKill(Quest, 2, "I should destroy Irisor the Insane.", 1, 100, "I should try to find the blades the note spoke of.  The best place to start should be here in the Crypt of Betrayal.  If I could find the original grave of the undead rogue that might be where one of the pieces still lie.", 0, 0)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have destroyed Irisor the Insane.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have found the first blade wrapped within an oiled cloth hidden within the old crypt grave.")

	AddQuestStepLocation(Quest, 3, "I should look for the hidden blade in the Windstalker Village in Antonica.", 1, "After looking carefully at the rantings and scribblings of an obvious madman it seems that he may have left the second blade within the Windstalker Village in Antonica.", 0, 0)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have found the other missing blade.")

	AddQuestStepKill(Quest, 4, "I should destroy Irisor the Insane.", 1, 100, "After looking carefully at the rantings and scribblings of an obvious madman it seems that he may have left the second blade within the Windstalker Village in Antonica.", 0, 0)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have destroyed Irisor the Insane.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have found the second hidden blade within the Windstalker Village.")

	AddQuestStepLocation(Quest, 5, "I should find the hidden handles somewhere near the giants in the Thundering Steppes.", 1, "The note seems to indicate that the undead rogue left the handles for the blades in the Thundering Steppes somewhere near the giants.  It seems that he would have put them somewhere obvious and out in the open so the giants could unknowingly protect them for him.", 0, 0)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have found the hidden handles for the twin blades.")

	AddQuestStepKill(Quest, 6, "I should destroy Irisor the Insane.", 1, 100, "The note seems to indicate that the undead rogue left the handles for the blades in the Thundering Steppes somewhere near the giants.  It seems that he would have put them somewhere obvious and out in the open so the giants could unknowingly protect them for him.", 0, 0)
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I have destroyed Irisor the Insane.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I have found the handles to the twin blades.")

	AddQuestStepLocation(Quest, 7, "I should find the remaining pieces within the Ruins of Varsoon.", 1, "It appears as if the crossguards and markings of the blades are within the Ruins of Varsoon.  I should continue my search there.", 0, 0)
	AddQuestStepCompleteAction(Quest, 7, "Step7Complete")
end

function Step7Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "I have found the remaining pieces.")

	AddQuestStepKill(Quest, 8, "I should destroy Irisor the Insane.", 1, 100, "It appears as if the crossguards and markings of the blades are within the Ruins of Varsoon.  I should continue my search there.", 0, 0)
	AddQuestStepCompleteAction(Quest, 8, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 8, "I have destroyed Irisor the Insane.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I have found the last pieces I needed to reassemble the blades; Shame and Scorn.")

	UpdateQuestDescription(Quest, "I have done all I needed and have remade the twin blades of Scorn and Shame.")
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
		Step6Complete(Quest, QuestGiver, Player)
	elseif Step == 7 then
		Step7Complete(Quest, QuestGiver, Player)
	elseif Step == 8 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end