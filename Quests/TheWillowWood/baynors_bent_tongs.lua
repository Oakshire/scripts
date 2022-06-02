--[[
	Script Name		:	baynors_bent_tongs.lua
	Script Purpose	:	Handles the quest, "Baynor's Bent Tongs"
	Script Author	:	Dorbin
	Script Date		:	2/19/2022
	Script Notes	:	

	Zone			:	Willow Wood
	Quest Giver		:	Baynor
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to take the tongs to Mender Ironmallet.", 1, "I should take these bent tongs to Mender Ironmallet in Graystone Yard to fix.", 32, 2350012)
	AddQuestStepCompleteAction(Quest, 1, Step1Complete)
    UpdateQuestZone(Quest,"Graystone Yard")
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
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I gave the tongs to Mender Ironmallet.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I gave the tongs to Mender Ironmallet to fix.")
    UpdateQuestZone(Quest,"Willow Wood")
	AddQuestStepChat(Quest, 2, "I need to return these tongs to Baynor.", 1, "I should take these reparied tongs to Baynor in the Willow Wood", 32, 2370021)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I returned the tongs to Baynor.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I returned the reparied tongs to Baynor.")


	UpdateQuestDescription(Quest, "I took Baynor's tongs to Mender Ironmallet and he fixed them right up.  I returned to Baynor and gave him the tongs back.  He also gave me some coin for my trouble.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	end
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
