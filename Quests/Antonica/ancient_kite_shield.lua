--[[
    Script Name    : Quests/Antonica/ancient_kite_shield.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.16 03:05:30
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
    AddQuestStepZoneLoc(Quest, 1, "I need to go to Crater Pond and find the perfect spot to wash the dirt from the shield.", 12, "If I'm going to clean this shield and return to working condition, I'll need to put some effort into it.", 11, 85, -24, 502, 12)
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
	UpdateQuestStepDescription(Quest, 1, "I've rinsed a lot of dirt from the shield.")
    AddQuestStep(Quest,2,"I should inspect the shield again.",1, 100,"If I'm going to clean this shield and return to working condition, I'll need to put some effort into it.", 2268)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end    

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've inspected the shield after washing it.")

	AddQuestStepKill(Quest, 3, "I need to kill lowland badgers in Antonica for their bristled fur.", 3, 75, "If I'm going to clean this shield and return to working condition, I'll need to put some effort into it.", 1095, 120213,120157	)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've gathered a lot fur from the lowland badgers.")
    AddQuestStep(Quest,4,"I should use the badger fur on the shield.",1, 100,"If I'm going to clean this shield and return to working condition, I'll need to put some effort into it.", 2268)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I've nearly cleaned most of the shield.")

	AddQuestStepKill(Quest, 5, "I need to gather the acidic poison from the earthcrawlers in Antonica.", 5, 100, "If I'm going to clean this shield and return to working condition, I'll need to put some effort into it.", 2510, 120121)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I've gathered enough of the poison to clean the shield off.")
    AddQuestStep(Quest,6,"I should use crawler acid to remove the last of the caked dirt on the shield.",1, 100,"If I'm going to clean this shield and return to working condition, I'll need to put some effort into it.", 2268)
	AddQuestStepCompleteAction(Quest, 6, "QuestComplete")
end


function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 6, "I've cleaned all off the dirt from the Ancient Kite Shield.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've cleaned all off the dirt from the Ancient Kite Shield.")

	UpdateQuestDescription(Quest, "I've cleaned the dirt off of the shield and now have a usable Ancient Kite Shield.")
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
