--[[
    Script Name    : Quests/SouthQeynos/stop_the_mischievous_tricksters.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.16 03:05:03
    Script Purpose : 

        Zone       : SouthQeynos
        Quest Giver:  Knight-Lieutenant Ilga 2310017
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must slay some bog faeries in the Peat Bog.", 10, 100, "I haven't quite driven the malicious faeries of the Peat Bog back yet.", 611, 1980052,1980010,1980007,1980008,1980002)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    UpdateQuestZone(Quest,"The Peat Bog")
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
	UpdateQuestStepDescription(Quest, 1, "I have slain some bog faeries.")
	UpdateQuestTaskGroupDescription(Quest, 1, "Trudging through the Peat Bog was the worst part of my faerie hunting. I certainly hope the villagers appreciate my troubles.")
    UpdateQuestZone(Quest,"South Qeynos")
	AddQuestStepChat(Quest, 2, "I must report my success to Knight-Lieutenant Ilgar.", 1, "Knight-Lieutenant Ilgar should noticed a difference in fairy disruptions.  He patrols in South Qeynos.", 611, 2310017)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have reported back to Ilgar.")
	UpdateQuestTaskGroupDescription(Quest, 1, "Knight-Lieutenant Ilgar was pleased to note there has been a reduction in fairy reports and paid me for my service.")

	UpdateQuestDescription(Quest, "Well, I've managed to drive the faeries back, and keep them from playing pranks on the villagers of Nettleville and Starcrest Commune. I am happy I could be of assistance to these poor folk, even if it came at the cost of the lives of a few of the bog's more mischievous residents.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete (Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
