--[[
    Script Name    : Quests/IsleofRefuge/gathering_sealant_components.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.11 12:09:06
    Script Purpose : 

        Zone       : IsleofRefuge
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]
function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill five mire bogs.", 5, 100, "I need to kill and collect the remains of five mire bogs found in the island's central grove northwest of the outpost.", 343, 3250073)
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
	UpdateQuestStepDescription(Quest, 1, "I collected the remains of five mire bogs.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I collected the remains of five mire bogs.")

	AddQuestStepChat(Quest, 2, "I need to return to Mizan.", 1, "I must return the mire bog remains I've collected to Mizan in the outpost.", 11, 3250057)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I gave the remains to Mizan.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I gave the remains to Mizan.")

	UpdateQuestDescription(Quest, "I was able to collect the remains of mire bogs for Mizan.  He is going to use them to create a sealant that will be spread on the wooden barricades to protect them against the impending goblin fire attacks.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
