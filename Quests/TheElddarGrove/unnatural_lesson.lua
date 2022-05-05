--[[
	Script Name		:	unnatural_lesson.lua
	Script Purpose	:	Handles the quest, "Unnatural Lesson"
	Script Author	:	Dorbin
	Script Date		:	5/4/2022
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	The City of Qeynos
	Quest Giver		:	Lookout Venylle
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill six decaying skeletons.", 6, 100, "I need to find the mausoleum that rests on a small island just off Antonica near the gates of North Qeynos, and put to rest decaying skeleton's and risen protector's.", 611, 120450)
	AddQuestStepKill(Quest, 2, "I must kill risen protectors.", 6, 100, "I need to find the mausoleum that rests on a small island just off Antonica near the gates of North Qeynos, and put to rest decaying skeleton's and risen protector's.", 611, 120449)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
    UpdateQuestZone(Quest,"Antonica")
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
	UpdateQuestStepDescription(Quest, 1, "I have killed six decaying skeletons.")
    CheckProgress(Quest, QuestGiver, Player)
end
function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have killed six risen protectors.")
    CheckProgress(Quest, QuestGiver, Player)
end

function  CheckProgress(Quest, QuestGiver, Player)
        if QuestStepIsComplete(Player, 5516, 1) and QuestStepIsComplete(Player, 5517, 2) then
        UpdateQuestZone(Quest,"The Elddar Grove")
    	UpdateQuestTaskGroupDescription(Quest, 1, "I've settled decaying skeleton's and risen protector's as Lookout Venylle had requested.")
    	AddQuestStepChat(Quest, 3, "I must speak to Lookout Venylle in The Elddar Grove.", 1, "I must go to the Elddar Grove to inform Lookout Venylle about my success against the undead.", 0, 2070049)
    	AddQuestStepCompleteAction(Quest, 3, "QuestComplete") 
    end
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I reported my deed to Lookout Venylle.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I reported to Lookout Venylle about destroying the unanatural dangers in Antonica.")
	UpdateQuestDescription(Quest, "I've put to rest the decaying skeletons and risen protectors that Lookout Venylle had requested. Venylle told me that this was but one of many lessons to come, I have a feeling she's right.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
	    Step2Complete(Quest, QuestGiver, Player)
	elseif Step ==3 then   
		QuestComplete(Quest, QuestGiver, Player)
    end
end
