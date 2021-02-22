--[[
    Script Name    : Quests/FrostfangSea/RestockingtheCookieJar.lua
    Script Author  : Ememjr
    Script Date    : 2021.02.21 09:02:59
    Script Purpose : 

        Zone       : FrostfangSea
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	SetQuestFeatherColor(Quest, 2)
	AddQuestStepHarvest(Quest, 1, "I should gather local food harvests from nearby shrubs.", 25, 100, "I need to gather food harvests from local shrubs: murdunk orange, carrot, antonican coffee beans, and black tea should be useful.", 10, 3899,4310,9927,11244)
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
	UpdateQuestStepDescription(Quest, 1, "I gathered some local harvests to refill Tami's cooking stores.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I gathered more local harvests to refill Tami's cooking stores.")

	AddQuestStepHarvest(Quest, 2, "I should return to Tami.", 1, 100, "Tami is currently based in Erronson's Furs and Leathers shop.", 11, 4700293)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I refilled Tami's cooking supplies.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I refilled Tami's cooking supplies.")

	UpdateQuestDescription(Quest, "I assisted Tami Swifthammer from the Ironforge Exchange by gathering local food harvests to refill her cooking supplies.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
