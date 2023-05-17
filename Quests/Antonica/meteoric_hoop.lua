--[[
    Script Name    : Quests/Antonica/meteoric_hoop.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.16 03:05:09
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to gather a lot of ink from the octopi in Antonica.", 20, 100, "If I'm going to shape this meteor chunk, I'm going to have to put forth some extra effort.", 1207, 120032,120085	,120193,120194)
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
	UpdateQuestStepDescription(Quest, 1, "I've been able to gather enough ink to use on the meteor chunk.")
    AddQuestStep(Quest,2,"I should apply this ink to the meteor chunk now.",1, 100,"If I'm going to shape this meteor chunk, I'm going to have to put forth some extra effort.", 146)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end    

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've applied the ink and made the chunk a lot darker.")

		AddQuestStepHarvest(Quest, 3, "I need to harvest some Sandwashed Rock to make a hoop.", 1, 100, "I need to harvest a lot of Sandwashed Rock to make a hoop.", 1186, 121172)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've been able to gather the rock I'll need.")
    AddQuestStep(Quest,4,"Compare the harvested rock to the meteor chunk.",1, 100,"If I'm going to shape this meteor chunk, I'm going to have to put forth some extra effort.", 146)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end
--
function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I've compared the meteor chunk to the harvested stones.")
    AddQuestStepKill(Quest, 5, "I need to kill Cavemaw tunnelers.", 1, 100, "Now I need to find a small rock hammer from the Cavemaw tunnelers.", 2262, 120290)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
UpdateQuestStepDescription(Quest, 5, "I've found a small rock hammer.")
    AddQuestStep(Quest,6,"I should use the small rock hammer on the meteor chunk to craft it into something useful.",1, 100,"Now I need to find a small rock hammer from the Cavemaw tunnelers.", 146)
	AddQuestStepCompleteAction(Quest, 6, "QuestComplete")
end


function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	    UpdateQuestStepDescription(Quest, 6, "I've been able to take the meteor chunk I found and turn it into a nice Meteoric Hoop.")
		UpdateQuestDescription(Quest, "I've been able to take the meteor chunk I found and turn it into a nice Meteoric Hoop.")

	UpdateQuestDescription(Quest, "I've been able to take the meteor chunk I found and turn it into a nice Meteoric Hoop.")
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
		Step5Complete(Quest, QuestGiver, Player)
	elseif Step == 6 then
		QuestComplete(Quest, QuestGiver, Player)
end
end
