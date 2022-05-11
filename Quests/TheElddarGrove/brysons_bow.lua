--[[
    Script Name    : Quests/TheElddarGrove/brysons_bow.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.09 05:05:49
    Script Purpose : 

        Zone       : TheElddarGrove
        Quest Giver: Bryson
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to pick up Bryson's bow.", 1, "I need to go down to the harbor to pick up Bryson's bow from Carpenter Paddock.", 630, 2210153)
	AddQuestStepCompleteAction(Quest, 1, "Step1Compelte")
    UpdateQuestZone(Quest,"Qeynos Harbor")
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

function Step1Compelte(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've got Bryson's bow.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've picked up the bow Bryson had on ordered.")
    UpdateQuestZone(Quest,"The Elddar Grove")
	AddQuestStepChat(Quest, 2, "I need to deliver Bryson's bow.", 1, "I need to return to In-Range and deliver Bryson the bow from Carpenter Paddock.", 630, 2070013)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I've delivered Bryson's bow.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've delivered the bow Bryson had on ordered.")

	UpdateQuestDescription(Quest, "Bryson was pleased to have his new bow and was kind enough to pay me for my time and effort.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Compelte(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
