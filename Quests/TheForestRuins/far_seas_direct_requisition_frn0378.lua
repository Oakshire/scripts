--[[
    Script Name    : Quests/TheForestRuins/far_seas_direct_requisition_frn0378.lua
    Script Author  : Dorbin
    Script Date    : 2022.02.24 12:02:31
    Script Purpose : 

        Zone       : TheForestRuins
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill some sun beetles.", 10, 100, " To fill the requisition, I must hunt down the creatures in the Forest Ruins, reachable by mariner bell in the City of Qeynos.", 164, 1960034, 8270020)
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
	UpdateQuestStepDescription(Quest, 1, "	I have killed some sun beetles.")
    CheckProgress(Quest, QuestGiver, Player)
end

function  CheckProgress(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player, 5488, 1)  then
    UpdateQuestZone(Quest,"Starcrest Commune")
   	UpdateQuestTaskGroupDescription(Quest, 1, "I have hunted down all the resources to fill the requisition.")
	AddQuestStepChat(Quest, 2, "I must speak to Grekin in Starcrest.", 1, "I must go to Starcrest Commune to seek out the client of this order.", 164, 2340037)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete") 
end   
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I spoke to Grekin.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have delivered the goods to Merchant Grekin.")

	UpdateQuestDescription(Quest, "I filled the Far Seas Requisition and delivered the goods to the client in Starcrest Commune. I have been paid in full for this work, but the order was late.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
    end
end
