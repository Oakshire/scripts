--[[
    Script Name    : Quests/Blackburrow/unfinished_breastplate.lua
    Script Author  : Premierio015
    Script Date    : 2022.07.24 03:07:39
    Script Purpose : 

        Zone       : Blackburrow
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I'm going to need to kill Sabertooth miners in Blackburrow and collect the buckles to repair this armor.", 4, 100, "With a little effort, I believe I can transform this unfinished breastplate into something better.", 761, 170010)
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
	UpdateQuestStepDescription(Quest, 1, "I've gathered a number of buckles.")

	AddQuestStepZoneLoc(Quest, 2, "I need to search the barrels in the brewery for another set of buckles.", 10, "With a little effort, I believe I can transform this unfinished breastplate into something better.", 760, 26, -39, 63, 17)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've found another set of buckles.")

	AddQuestStepKill(Quest, 3, "I need to kill the gnoll commander Nantglas to see if he has any rivets", 1, 100, "With a little effort, I believe I can transform this unfinished breastplate into something better.", 645, 170050)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've collected some rivets from the gnoll commander")

	AddQuestStepZoneLoc(Quest, 4, "I need to salvage some more rivets from the Collapsed Everfrost Tunnel", 10, "With a little effort, I believe I can transform this unfinished breastplate into something better.", 645,  -92, 0, -92, 17)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I've collected some rivets from the Tunnel")

	AddQuestStepKill(Quest, 5, "I want to see how the armor holds up against some gnolls.", 15, 100, "With a little effort, I believe I can transform this unfinished breastplate into something better.", 11, 170017, 170040, 170014, 170023, 170003, 170035, 170083, 170026, 170044, 170019, 170041, 170029, 170022, 170057, 170051, 170018, 170010, 170042, 170002, 170032, 170031, 170043, 170004, 170033, 170039, 170030, 170086, 170056, 170046, 170038, 170027, 170084, 170050, 170028, 170085, 170011)
	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 5, "I've tested the mail.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've been able to change the unfinished breastplate into some Gnawed Mail.")
    if HasItem(Player, 3825) then -- an unfinished breastplate
    RemoveItem(Player, 3825)
    end
	UpdateQuestDescription(Quest, "Applying a little bit of effort, I've been able to change the unfinished breastplate into some Gnawed Mail. <br> <br>")
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


