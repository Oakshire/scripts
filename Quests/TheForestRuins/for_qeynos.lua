--[[
	Script Name		:	for_qeynos.lua
	Script Purpose	:	Handles the quest, "For Qeynos"
	Script Author	:	Dorbin
	Script Date		:	2/27/2022
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Forest Ruins
	Quest Giver		:	Elvric
	Preceded by		:	Willow Wood Halfelf Racial Quest(optional)
	Followed by		:	News for Germain
--]]


function Init(Quest)
	AddQuestStepObtainItem(Quest, 1, "I should inspect campsites around the ruins until I find something to indicate who made them.", 1, 100, "Elvic has asked that I investigate some of the abandoned campsites that have been seen all around the Forest Ruins.", 11, 2352)
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
	UpdateQuestStepDescription(Quest, 1, "In one of the camps I found a note.")

	AddQuestStepChat(Quest, 2, "I need to take this note to Elvic Garrett.", 1, "Elvic has asked that I investigate some of the abandoned campsites that have been seen all around the Forest Ruins.", 185, 1960007)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have given the note to Elvic Garrett.")

	AddQuestStepChat(Quest, 3, "I need to tell Lieutenant Germain about the gnollish note.", 1, "Elvic has asked that I investigate some of the abandoned campsites that have been seen all around the Forest Ruins.", 185, 1960005)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I have spoken with Lieutenant Germain.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found a gnollish book in one of the camps. As Elvic asked, I have brought news of this to Lieutenant Germain.")

	UpdateQuestDescription(Quest, "I found a gnollish book at one of the abandoned campsites. Lieutenant Germain was very concerned at the possibility of a gnollish presence in the Forest Ruins.")
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
