--[[
    Script Name    : Quests/IsleofRefuge/aquatic_research.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.25 06:09:34
    Script Purpose : 

        Zone       : IsleofRefuge
        Quest Giver: Aquatic Research Notebook
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to hunt a shoal glider.", 1, 100, "I need to hunt and collect the four different types of animals mentioned in the notebook.", 168, 3250101)
	AddQuestStepKill(Quest, 2, "I need to hunt a needlefang.", 1, 100, "I need to hunt and collect the four different types of animals mentioned in the notebook.", 86, 3250158)
	AddQuestStepKill(Quest, 3, "I need to hunt a reef turtle.", 1, 100, "I need to hunt and collect the four different types of animals mentioned in the notebook.", 158, 3250100)
	AddQuestStepKill(Quest, 4, "I need to hunt a sawtooth shark.", 1, 100, "I need to hunt and collect the four different types of animals mentioned in the notebook.", 172, 3250157, 2780032)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Accepted(Quest, QuestGiver, Player)
if HasItem(Player,1001013) then
    RemoveItem(Player, 1001013, 1)
end
	SendMessage(Player, "Your aquatic research notebook has been placed in your quest satchel.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have the body of a shoal glider.")
    QuestStepCheck(Quest, QuestGiver, Player)

end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have the body of a needlefang.")
    QuestStepCheck(Quest, QuestGiver, Player)

end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have the body of a reef turtle.")
    QuestStepCheck(Quest, QuestGiver, Player)

end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have the body of a sandstalker.")
    QuestStepCheck(Quest, QuestGiver, Player)	
end

function QuestStepCheck(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player,5757,1) and QuestStepIsComplete(Player,5757,2) and QuestStepIsComplete(Player,5757,3) and QuestStepIsComplete(Player,5757,4)then
	UpdateQuestTaskGroupDescription(Quest, 1, "I found the four types of animals listed in the notebook.")

	AddQuestStepChat(Quest, 5, "I need to take these specimens to Master Malvonicus.", 1, "I need to take the collected specimens to Master Malvonicus.", 11, 3250031)
	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
end
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 5, "I took the animal bodies to Master Malvonicus.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I delivered the four animal specimens to Master Malvonicus.")

	UpdateQuestDescription(Quest, "I talked to Master Malvonicus at the top of his tower at outpost. Apparently his apprentice was an irresistible treat for the dreaded Bladefin. He gave me the reward that he had originally planned for his apprentice.")
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
