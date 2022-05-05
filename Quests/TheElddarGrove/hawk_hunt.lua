--[[
    Script Name    : Quests/TheElddarGrove/hawk_hunt.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.05 03:05:15
    Script Purpose : 

        Zone       : TheElddarGrove
        Quest Giver: Gregor Earthstride
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to gather some hawks for Gregor Earthstride.", 5, 100, "I need to kill five hawks in the Forest ruins for Gregor Earthstride in the Elddar Grove.", 80, 1960013)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    UpdateQuestZone(Quest,"The Forest Ruins")
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
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have retrieved the hawks Gregor Earthstride needs.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've managed to hunt down five hawks for Gregor Earthstride.")
    UpdateQuestZone(Quest,"The Elddar Grove")
	AddQuestStepChat(Quest, 2, "I need to deliver these hawks to Gregor Earthstride.", 1, "I need to kill five hawks in the Forest ruins for Gregor Earthstride in the Elddar Grove.", 80, 2070010)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I delivered the hawks Gregor Earthstride he requested.")
	UpdateQuestTaskGroupDescription(Quest, 2, "Gregor Earthstride seemed pleased with the hawks I gave him.")


	UpdateQuestDescription(Quest, "Gregor Earthstride was grateful for the hawks I downed for him.  I found it hard to bite my tongue when he mentioned that he could not find the birds he needed... after all, he is a ranger!")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
    Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
    QuestComplete(Quest, QuestGiver, Player)
	end
end

