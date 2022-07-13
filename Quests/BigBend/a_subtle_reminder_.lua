--[[
	Script Name		:	a_subtle_reminder.lua
	Script Purpose	:	Handles the quest, "A Subtle Reminder"
	Script Author	:	torsten
	Script Date		:	12.07.2022
	Script Notes	:	

	Zone			:	Big Bend
	Quest Giver		:	Braz Gutpounder
	Preceded by		:	None
	Followed by		:	Trollish Delights
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "Speak to Thick-headed Ruzb about his culinary habits. He should be east of the Freeport gate, in the building with Brona the slaver.", 1, "Speak to Thick-headed Ruzb and convince him that gnomes must remain un-eaten.", 11, 1340024)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "Ruzb needs some incentive to change to a new meat product.")
	UpdateQuestTaskGroupDescription(Quest, 1, "Ruzb has seen the light. Or at least, he understands that it could go badly for him if he continues to eat gnomes.")
	
	AddQuestStepObtainItem(Quest, 2, "I need to buy some dwarf chunks.", 1, 100, "I need to buy some dwarf chunks for Ruzb.", 135, 6633)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 2, "I bought some dwarf chunks.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I bought some dwarf chunks for Ruzb.")
	
	AddQuestStepChat(Quest, 3, "I need to return to Ruzb.", 1, "I need to return to Ruzb to give him the meat.", 0, 1340024)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 3, "I bought some dwarf chunks.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I bought some dwarf chunks for Ruzb.")
	RemoveItem(Player, 6633) --Dwarf Chunks
	
	AddQuestStepChat(Quest, 4, "I need to return to Braz Gutpounder.", 1, "I need to return to Braz Gutpounder and tell him about Ruzb.", 0, 1340039)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "With Ruzb convinced to stop eating gnomes from the neighboring areas, Braz thanked me. Maybe I should come back later and ask him some more about the trolls.")
	GiveQuestReward(Quest, Player)
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

function Reload(Quest, QuestGiver, Player, Step)
    if Step == 1 then
	    Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
	    Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
	    Step3Complete(Quest, QuestGiver, Player)
	elseif Step == 4 then
	    QuestComplete(Quest, QuestGiver, Player)
	end
end


