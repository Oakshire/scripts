--[[
	Script Name		:	shrillers_for_tillheel.lua
	Script Purpose	:	Handles the quest, "Shrillers for Tillheel"
	Script Author	:	Dorbin
	Script Date		:	3/6/2022
	Script Notes	:	

	Zone			:	Graystone Yard
	Quest Giver		:	Assistant Tillheel
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill some juvenile shrillers.", 5, 100, "I must slay five juvenile shrillers to obtain their wings for Tillheel.", 140, 1990004,1990022,1990001)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	UpdateQuestZone(Quest,"The Down Below")
end

function Step1Complete(Quest,QuestGiver,Player)
	UpdateQuestStepDescription(Quest, 1, "I've killed some juvenile shrillers.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected five sets of shriller wings.")
	UpdateQuestZone(Quest,"Graystone Yard")
	
	AddQuestStepChat(Quest, 2, "I need to return to Assistant Tillheel.", 1, "I must deliver these shriller wings to Tillheel in Graystone.", 140, 2350056)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
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

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestTaskGroupDescription(Quest, 2, "I have delivered the sets of shriller wings.")
	UpdateQuestDescription(Quest, "I collected and delivered five sets of shriller wings to Tillheel. He was very grateful.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

