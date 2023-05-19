--[[
    Script Name    : Quests/Antonica/the_starwisp_sword.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.15 07:05:31
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]
--

function Init(Quest)
	AddQuestStep(Quest, 1, "I need to find some freshly milled flour somewhere here in Antonica.", 1, 100, "If I'm going to restore this sword back to its original condition, I'm going to need to give a little extra effort.", 11)
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
	UpdateQuestStepDescription(Quest, 1, "I've grabbed a handful of milled flour from the Millers' house.")
	AddQuestStep(Quest, 2, "I should mix the flour into a paste and apply it to the sword.", 1, 100, "If I'm going to restore this sword back to its original condition, I'm going to need to give a little extra effort.", 2155)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

--Now I should use the etching tool on the newly cleaned sword.
function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've managed to scrub away nearly all the rust on the blade.")
	AddQuestStepKill(Quest, 3, "I now need to find an etching tool from the coldwind crewman that lurk about Antonica.", 1, 50, "If I'm going to restore this sword back to its original condition, I'm going to need to give a little extra effort.", 25, 120672)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've been able to find an etching tool.")
	AddQuestStep(Quest, 4, "I need to use the etching tool on the blade to repair the star pattern.", 1, 100, "If I'm going to restore this sword back to its original condition, I'm going to need to give a little extra effort.",2155)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I've etched the stars back into the blade.")
	AddQuestStepKill(Quest, 5, "For some reason, all I can think about is killing klicniks in Antonica.", 15, 100, "If I'm going to restore this sword back to its original condition, I'm going to need to give a little extra effort.", 611, 120372,120211,120253,120367,	120371,	120453,120452)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I've killed enough kliknics and can feel the power in the blade!")
	AddQuestStep(Quest, 6, "I need to examine the blade one last time to see if it is satisfied.", 1, 100, "If I'm going to restore this sword back to its original condition, I'm going to need to give a little extra effort.", 2155)
	AddQuestStepCompleteAction(Quest, 6, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 6, "I've killed quite a number of klicniks in Antonica.  I have a feeling my desire to do so came from the sword.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've been able to restore Starwisp to its original condition.")

	UpdateQuestDescription(Quest, "I've been able to not only clean the sword but restore it back to its original condition.  For some reason I believe the name of the sword is Starwisp.")
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
