--[[
    Script Name    : Quests/Hallmark/path_of_the_brawler.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.07 04:12:46
    Script Purpose : 

        Zone       : Hallmark
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStep(Quest, 1, "I must defeat a third circle initiate.", 1, 100, "The dojo where I need to prove myself may be found at the eastern end of South Qeynos in the middle row of buildings.", 11)
	AddQuestStep(Quest, 2, "I must defeat a second circle initiate.", 1, 100, "The dojo where I need to prove myself may be found at the eastern end of South Qeynos in the middle row of buildings.", 11)
	AddQuestStep(Quest, 3, "I must defeat a first circle adept.", 1, 100, "The dojo where I need to prove myself may be found at the eastern end of South Qeynos in the middle row of buildings.", 11)
	AddQuestStep(Quest, 4, "I must defeat a white headband initiate.", 1, 100, "The dojo where I need to prove myself may be found at the eastern end of South Qeynos in the middle row of buildings.", 11)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
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
	UpdateQuestStepDescription(Quest, 1, "I have defeated a third circle initiate.")
 QuestCheck(Quest, QuestGiver, Player)

end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have defeated a second circle initiate.")
 QuestCheck(Quest, QuestGiver, Player)

end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have defeated a first circle adept.")
 QuestCheck(Quest, QuestGiver, Player)

end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have defeated a white headband initiate.")
 QuestCheck(Quest, QuestGiver, Player)
end

function  QuestCheck(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player,5790,1) and QuestStepIsComplete(Player,5790,2) and QuestStepIsComplete(Player,5790,3)and QuestStepIsComplete(Player,5790,4) then
	UpdateQuestTaskGroupDescription(Quest, 1, "I have entered the dojo and defeated each of my four opponents in combat.")

	AddQuestStep(Quest, 5, "I must meditate at the altar.", 1, 100, "I must clear my thoughts and concentrate on the events that have passed.", 11)
	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
end
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 5, "I must meditate at the altar.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have passed the trial and become a brawler.")

	UpdateQuestDescription(Quest, "One by one, I've faced the opponents brought before me.  One by one, they have fallen before me.  I have proved myself worthy of becoming a brawler.")
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
		Step4Complete(Quest, QuestGiver, Player)
	elseif Step == 5 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end