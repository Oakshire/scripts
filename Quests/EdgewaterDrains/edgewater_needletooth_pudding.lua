--[[
	Script Name		:	Quests/EdgewaterDrains/edgewater_needletooth_pudding.lua
	Script Purpose	:	Handles the quest, "Edgewater Needletooth Pudding"
	Script Author	:	premierio015
	Script Date		:	05.07.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Edgewater Drains
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "Recipe calls for four young serpent skins. Young sewage vipers should be just what I need.", 4, 100, "All of the ingredients I need for the \"Needletooth Pudding\" are here in the Edgewater Drains.", 98, 1560026)
		AddQuestStepKill(Quest, 2, "Recipe calls for ten crab legs.", 10, 100, "All of the ingredients I need for the \"Needletooth Pudding\" are here in the Edgewater Drains.", 76, 1560018, 1560009)
	AddQuestStepKill(Quest, 3, "Recipe calls for a dozen Needletooth teeth.", 12, 100, "All of the ingredients I need for the \"Needletooth Pudding\" are here in the Edgewater Drains.", 112, 1560022 )
	AddQuestStepKill(Quest, 4, "Recipe calls for five turtle shells.", 5, 100, "All of the ingredients I need for the \"Needletooth Pudding\" are here in the Edgewater Drains.", 201, 1560034)
	AddQuestStepKill(Quest, 5, "Recipe calls for five frantic globules, but any goo will do.", 5, 100, "All of the ingredients I need for the \"Needletooth Pudding\" are here in the Edgewater Drains.", 355, 1560001, 1560091, 1560011, 1560011 )

	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
		AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")

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
	UpdateQuestStepDescription(Quest, 1, "I've got another young serpent skin.")
   CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've got another crab leg.")
   CheckProgress(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've got another Needletooth tooth.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I've got another turtle shell.")
   CheckProgress(Quest, QuestGiver, Player)
end


function Step5Complete(Quest, QuestGiver, Player)
    	UpdateQuestStepDescription(Quest, 5, "I've got another goo.")
    	CheckProgress(Quest, QuestGiver, Player)
end    	

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestTaskGroupDescription(Quest, 1, "I've gathered all of the ingredients for the \"Needletooth Pudding\" but the fact that all of the ingredients came from a sewer... I don't know.")
    if HasItem(Player, 10028) then
    RemoveItem(Player, 10028)
    end
	UpdateQuestDescription(Quest, "I've gathered all of the ingredients needed for the this \"Needletooth Pudding\" but actually eating it, now that's another story.")
	GiveQuestReward(Quest, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
 if QuestStepIsComplete(Player, 5300, 1) and QuestStepIsComplete(Player, 5300, 2) and QuestStepIsComplete(Player, 5300, 3) and QuestStepIsComplete(Player, 5300, 4) and  QuestStepIsComplete(Player, 5300, 5) then
  QuestComplete(Quest, QuestGiver, Player)
end
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
	end
end


