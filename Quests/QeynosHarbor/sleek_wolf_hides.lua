--[[
    Script Name    : Quests/QeynosHarbor/sleek_wolf_hides.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.24 03:05:05
    Script Purpose : 

        Zone       : QeynosHarbor
        Quest Giver: Erwin Rohand
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepKillByRace(Quest, 1, "I need to find some wolf hides.", 5, 60, "I must go out into Antonica and gather some wolf hides.", 126,238)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    UpdateQuestZone(Quest,"Antonica")
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
	UpdateQuestStepDescription(Quest, 1, "I have found five sleek wolf hides.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have gone out and gathered sleek wolf hides.")
    UpdateQuestZone(Quest,"Qeynos Harbor")

	AddQuestStepChat(Quest, 2, "I must speak with Erwin in Qeynos Harbor.", 1, "I should take the sleek wolf hides back to Erwin in Qeynos Harbor so he can sell them soon.", 160, 2210153)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have spoken with Erwin.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have been back to Erwin and gave him the sleek wolf hides he requested of me.")

	UpdateQuestDescription(Quest, "I went back to Erwin and gave him the sleek wolf hides that he requested. He was very happy to have stuff that would further his goal and I was happy to lend him a hand.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
		end
end


