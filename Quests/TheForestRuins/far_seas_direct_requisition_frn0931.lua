--[[
    Script Name    : Quests/TheForestRuins/far_seas_direct_requisition_frn0931.lua
    Script Author  : Dorbin
    Script Date    : 2022.02.24 02:02:19
    Script Purpose : 

        Zone       : TheForestRuins
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must collect four Antonican hawk feathers.", 4, 100, " To fill the requisition, I must hunt down the creatures in the Forest Ruins, reachable by mariner bell in the City of Qeynos.", 150, 1960034)
	AddQuestStepKill(Quest, 2, "I must collect six stoneshell snapper tails.", 6, 100, " To fill the requisition, I must hunt down the creatures in the Forest Ruins, reachable by mariner bell in the City of Qeynos.", 172, 1960034)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
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
	UpdateQuestStepDescription(Quest, 1, "I have collected four Antonican hawk feathers")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have collected six stoneshell snapper tails")
    CheckProgress(Quest, QuestGiver, Player)
end

function  CheckProgress(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player, 5489, 1) and QuestStepIsComplete(Player, 5489, 2) then
    UpdateQuestZone(Quest,"Starcrest Commune")
   	UpdateQuestTaskGroupDescription(Quest, 1, "I have hunted down all the resources to fill the requisition.")
	AddQuestStepChat(Quest, 3, "I must speak to Grekin in Starcrest.", 1, "I must go to Starcrest Commune to seek out the client of this order.", 0, 2340037)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete") 
end   
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I spoke to Grekin.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I have delivered the goods to Merchant Grekin.")

	UpdateQuestDescription(Quest, "I filled the Far Seas Requisition and delivered the goods to the client in Starcrest Commune. I have been paid in full for this work, but the order was late.")
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
