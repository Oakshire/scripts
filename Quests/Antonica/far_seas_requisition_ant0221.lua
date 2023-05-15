--[[
    Script Name    : Quests/Antonica/far_seas_requisition_ant0221.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.15 03:05:44
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: ant0221
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I must kill some young kodiaks", 6, 100, "I must hunt down the creatures in Antonica to fill the requisition.", 127, 120294,341009)
	AddQuestStepKill(Quest, 2, "I must kill some thicket lizards", 6, 100, "I must hunt down the creatures in Antonica to fill the requisition.", 172, 	120030)
	AddQuestStepKill(Quest, 3, "I must kill some sonic shriekers", 2, 100, "I must hunt down the creatures in Antonica to fill the requisition.", 140, 120297)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")

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
	UpdateQuestStepDescription(Quest, 1, "I have killed some young kodiaks.")

 QuestCheck(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have killed some thicket lizards.")

 QuestCheck(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have killed some sonic shriekers")
    QuestCheck(Quest, QuestGiver, Player)
end

function  QuestCheck(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player,5818,1) and QuestStepIsComplete(Player,5818,2) and QuestStepIsComplete(Player,5818,3) then

	UpdateQuestTaskGroupDescription(Quest, 1, "I have hunted down all the resources to fill the requisition.")

	AddQuestStepChat(Quest, 4, "I must speak with Taskmaster Lynette", 1, "I must find Taskmaster Lynette at Coldwind Point in Antonica and deliver this fulfilled contract.", 75, 121256)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I visited Taskmaster Lynette.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have delivered the requisition goods to the Taskmaster.")

	UpdateQuestDescription(Quest, "I filled the Far Seas Requisition and delivered the goods to the Taskmaster out in Antonica. I have been paid in full for this work.")
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
		QuestComplete(Quest, QuestGiver, Player)
	end
end
