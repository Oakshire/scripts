--[[
    Script Name    : Quests/SouthQeynos/rabid_shriller_wings.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.16 04:05:31
    Script Purpose : 

        Zone       : SouthQeynos
        Quest Giver: Khalil'Mun
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "Hunt rabid shrillers in the Down Below.", 8, 100, "I must go into the Down Below and collect eight pairs of rabid shriller wings.", 140, 8340035)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    UpdateQuestZone(Quest,"The Down Below")
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
	UpdateQuestStepDescription(Quest, 1, "I have obtained the rabid shriller wings.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have been to the catacombs and collected eight pairs of rabid shriller wings.")
    UpdateQuestZone(Quest,"South Qeynos")
	AddQuestStepChat(Quest, 2, "Return to Khalil'Mun with the shriller wings.", 1, "I must return to Khalil'Mun with these shriller wings.  His shop is located in South Qeynos.", 140, 2310048)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have returned to Khalil'Mun with the wings.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have delivered the eight pairs of rabid shriller wings to Khalil'Mun.")

	UpdateQuestDescription(Quest, "I have given Khalil'Mun of the Herb Jar in South Qeynos the eights pairs of rabid shriller wings that he requested. He was excited to finally have what he needs to continue with his experiments.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif  Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end