--[[
	Script Name		:	new_fishing_pole_for_brice.lua
	Script Purpose	:	Handles the quest, "New Fishing Pole for Brice"
	Script Author	:	Dorbin
	Script Date		:	3/9/2022
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Graystone Yard
	Quest Giver		:	Brice Strongmend
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I must speak with Tacklemaster Moyna.", 1, "I need to speak with Tacklemaster Moyna about buying a new fishing pole for Brice Strongmend.  She's the first merchant before the docks.", 169, 2350020)
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
	UpdateQuestStepDescription(Quest, 1, "I bought a new fishing pole from Tacklemaster Moyna.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I spoke with Tacklemaster Moyna and bought a new fishing pole for Brice Strongmend.")

	AddQuestStepChat(Quest, 2, "I must bring this new pole to Brice Strongmend.", 1, "Brice Strongmend is expecting this new fishing pole in Graystone Yard.", 169, 2350005)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I delievered Brice Strongmend's new fishing pole.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I spoke with Tacklemaster Moyna and bought a new fishing pole for Brice Strongmend.")

	UpdateQuestDescription(Quest, "I purchased a new fishing pole for Brice Strongmend with the money he gave me.  He was so impressed with it that he let me keep what money was left over.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
