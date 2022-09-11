--[[
    Script Name    : Quests/IsleofRefuge/deer_hunting.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.10 08:09:56
    Script Purpose : 

        Zone       : IsleofRefuge
        Quest Giver: Vladiminn
        Preceded by: Speaking with Vladiminn
        Followed by: Scouting the Goblin Camp
--]]
function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill healthy deer in the grove.", 5, 100, "I need to track down and kill five healthy deer for their meat to restore the outposts food supply.  The deer can be found in the island's central grove just northwest of the outpost.", 135, 3250071)
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
	UpdateQuestStepDescription(Quest, 1, "I have killed healthy deer in the grove.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've gathered enough venison to feed quite a few refugees.")

	AddQuestStepChat(Quest, 2, "Return to Vladiminn.", 1, "I need to return to Vladiminn in the outpost and give him the venison I've gathered.", 11, 3250016)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've given the meat from the deer to Vladiminn.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've given the meat I gathered to Vladiminn.")

	AddQuestStepChat(Quest, 3, "I need to pick up my boots from the bank.", 1, "I need to visit the bank in the village to pick up my boots.", 11, 3250036)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I went to the bank to pick up my boots.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I went to the bank in the village to pick up my boots.")

	UpdateQuestDescription(Quest, "I've gathered enough meat for quite a few new refugees with the help of the priests curing the strange disease the deer have come down with.  Vladiminn rewarded me with some supple boots to help while stalking my prey.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end