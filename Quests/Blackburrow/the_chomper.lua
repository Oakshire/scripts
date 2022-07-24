--[[
    Script Name    : Quests/Blackburrow/the_chomper.lua
    Script Author  : Premierio015
    Script Date    : 2022.07.23 10:07:58
    Script Purpose : 

        Zone       : Blackburrow
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepZoneLoc(Quest, 1, "I need to go to the Brewery in Blackburrow and find some leather straps they use bind the barley and hops.", 10, "With a little effort, I believe I can transform this broken morningstar into something better.", 11, 21, -40, 61, 17)
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
	UpdateQuestStepDescription(Quest, 1, "I've found enough leather straps.")

	AddQuestStepKill(Quest, 2, "I need to kill gnolls until I can find enough chain links for the morningstar.", 12, 100, "With a little effort, I believe I can transform this broken morningstar into something better.", 1012, 170017, 170040, 170014, 170023, 170003, 170035, 170083, 170026, 170044, 170019, 170041, 170029, 170022, 170057, 170051, 170018, 170010, 170042, 170002, 170032, 170031, 170043, 170004, 170033, 170039, 170030, 170086, 170056, 170046, 170038, 170027, 170084, 170050, 170028, 170085, 170011)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've collected a number of chain links for the morningstar.")

	AddQuestStepKill(Quest, 3, "I need to obtain sturdy mining pick to break open all of the links.  The Sabertooth miners are the likeliest source.", 1, 100, "With a little effort, I believe I can transform this broken morningstar into something better.", 11, 170010, 170029)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've found a sturdy mining pick.")

	AddQuestStepKill(Quest, 4, "I need to kill the Sabertooth guards until I find enough spikes for the ball of the flail.", 16, 100, "With a little effort, I believe I can transform this broken morningstar into something better.", 1019, 170022)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I've found a number of spikes for the flail head.")

	AddQuestStepKill(Quest, 5, "I need to kill Crugybar the Rock so that I can break the spike tips off the mace", 1, 100, "With a little effort, I believe I can transform this broken morningstar into something better.", 611, 170038)
	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 5, "I've killed Crugybar the Rock")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've been able to change the broken morningstar into the Chomper.")
	if Hasitem(Player, 1285) then
    RemoveItem(Player, 1285)
    end
	UpdateQuestDescription(Quest, "Applying a little bit of effort, I've been able to change the broken morningstar into the Chomper. <br> <br>")
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
