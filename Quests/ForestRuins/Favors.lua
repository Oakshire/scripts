--[[
	Script Name		:	Favors.lua
	Script Purpose	:	Handles the quest, "Favors"
	Script Author	:	Shatou
	Script Date		:	1/10/2020
	Script Notes	:	

	Zone			:	Forest Ruins
	Quest Giver		:	Lieutenant Germain
	Preceded by		:	News for Germain
	Followed by		:	Returning to the Disturbance
--]]

local FAVORS_QUEST_ID = 521
local POKO_ZING_ID = 1960003
local LIEUTENAT_GERMAIN_ID = 1960005
local A_FALLEN_BRANCH_ID = 1960178

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Poko Zing and have him analyze the leaf sample I gathered.", 1, "Lieutenant Germain has asked that I speak with Poko Zing to get the leaf analyzed.", 2098, POKO_ZING_ID)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Poko Zing.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have spoken with Poko Zing.")

	AddQuestStep(Quest, 2, "I need some samples of the rubble from the ruins.", 4, 100, "Poko has agreed to help, but has asked that I do a favor for him.", 11729)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	
	AddQuestStepHarvest(Quest, 3, "I need to collect a bark sample from one of the trees south of the river and outside the ruins.", 1, 100, "Poko has agreed to help, but has asked that I do a favor for him.", 834, A_FALLEN_BRANCH_ID)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
	
	AddQuestStepHarvest(Quest, 4, "I need to collect a bark sample from one of the trees north of the river and outside the ruins.", 1, 100, "Poko has agreed to help, but has asked that I do a favor for him.", 834, A_FALLEN_BRANCH_ID)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
	
	AddQuestStepHarvest(Quest, 5, "I need to collect a bark sample from one of the trees south of the river and inside the ruins.", 1, 100, "Poko has agreed to help, but has asked that I do a favor for him.", 834, A_FALLEN_BRANCH_ID)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
	
	AddQuestStepHarvest(Quest, 6, "I need to collect a bark sample from one of the trees north of the river and inside the ruins.", 1, 100, "Poko has agreed to help, but has asked that I do a favor for him.", 834, A_FALLEN_BRANCH_ID)
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
	
	
	
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have collected some rubble.")
    CheckProgress(Quest, QuestGiver, Player)
	--AddQuestStepHarvest(Quest, 3, "I need to collect a bark sample from one of the trees south of the river and outside the ruins.", 1, 100, "Poko has agreed to help, but has asked that I do a favor for him.", 834, A_FALLEN_BRANCH_ID)
	--AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
	
	--AddQuestStepHarvest(Quest, 4, "I need to collect a bark sample from one of the trees north of the river and outside the ruins.", 1, 100, "Poko has agreed to help, but has asked that I do a favor for him.", 834, A_FALLEN_BRANCH_ID)
	--AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
	
	--AddQuestStepHarvest(Quest, 5, "I need to collect a bark sample from one of the trees south of the river and inside the ruins.", 1, 100, "Poko has agreed to help, but has asked that I do a favor for him.", 834, A_FALLEN_BRANCH_ID)
	--AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
	
	--AddQuestStepHarvest(Quest, 6, "I need to collect a bark sample from one of the trees north of the river and inside the ruins.", 1, 100, "Poko has agreed to help, but has asked that I do a favor for him.", 834, A_FALLEN_BRANCH_ID)
	--AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
end

function CheckProgress(Quest, QuestGiver, Player)
	if QuestStepIsComplete(Player, FAVORS_QUEST_ID, 3) and QuestStepIsComplete(Player, FAVORS_QUEST_ID, 4) and QuestStepIsComplete(Player, FAVORS_QUEST_ID, 5) and QuestStepIsComplete(Player, FAVORS_QUEST_ID, 6) then
		UpdateQuestTaskGroupDescription(Quest, 2, "I have collected what Poko has asked for.")

		AddQuestStepChat(Quest, 7, "I need to return to Poko Zing.", 1, "I need to return to Poko Zing now that I have collected all that he has asked for.", 11, POKO_ZING_ID)
		AddQuestStepCompleteAction(Quest, 7, "Step7Complete")
	end
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have collected a bark sample from one of the trees south of the river and outside the ruins.")

	CheckProgress(Quest, QuestGiver, Player)
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have collected a bark sample from one of the trees north of the river and outside the ruins.")

	CheckProgress(Quest, QuestGiver, Player)
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have collected a bark sample from one of the trees south of the river and inside the ruins.")

	CheckProgress(Quest, QuestGiver, Player)
end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I have collected a bark sample from one of the trees north of the river and inside the ruins.")
	
	CheckProgress(Quest, QuestGiver, Player)
end

function Step7Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "I have spoken with Poko Zing.")

	AddQuestStepChat(Quest, 8, "I need to speak with Lieutenant Germain again.", 1, "I need to return to Poko Zing now that I have collected all that he has asked for.", 11, LIEUTENAT_GERMAIN_ID)
	AddQuestStepCompleteAction(Quest, 8, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 8, "I have spoken with Lieutenant Germain.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I have spoken with Poko Zing.")

	UpdateQuestDescription(Quest, "I collected the rubble and bark samples as Poko asked. His findings regarding the leaf suggest that it has been magically altered to hide something.")
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

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end