--[[
	Script Name		:	TheSummoning.lua
	Script Purpose	:	Handles the quest, "The Summoning"
	Script Author	:	FeaRFx
	Script Date		:	26/01/2017
	Script Notes	:	

	Zone			:	Darklight Wood
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStep(Quest, 1, "I need to summon the tainted Sableflame avatar.", 1, 100, "Belarshalee Do'Torlyl wants me to summon a tainted version of the Sableflame avatar.", 11)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have summoned the tainted avatar.")

	AddQuestStepChat(Quest, 2, "I should return to Belarshalee Do'Torlyl now that I've finished her ritual.", 1, "Belarshalee Do'Torlyl wants me to summon a tainted version of the Sableflame avatar.", 11, 340173)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have spoken with Belarshalee Do'Torlyl.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have summoned the tainted Sableflame avatar.")

	UpdateQuestDescription(Quest, "I successfully summoned the Sableflame Avatar. Belarshalee Do'Torlyl was pleased to hear of the results.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end