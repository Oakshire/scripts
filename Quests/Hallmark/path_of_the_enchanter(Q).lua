--[[
    Script Name    : Quests/Hallmark/path_of_the_enchanter(Q).lua
    Script Author  : Dorbin
    Script Date    : 2022.11.06 08:11:22
    Script Purpose : 

        Zone       : Hallmark
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStep(Quest, 1, "I should look to the middle of the southern row of buildings in South Qeynos for the Wayfarer's Rest.", 1, 100, "I must enter the Wayfarer's Rest in South Qeynos and take care of the disturbance.", 11)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
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

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have taken care of the disturbance in the Wayfarer's Rest.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have taken care of the disturbance for Niksel and proven myself as an enchanter.")

	UpdateQuestDescription(Quest, "After thinking about it rationally, I realized that there was no way for those tavern patrons to have been so upset.  So naturally, I went to find the root of their animosity.  Having done so, I find myself in a new role as an enchanter.  I suppose I'll have much to learn.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
