--[[
    Script Name    : Quests/TheCryptofBetrayal/an_axe_for_all_ages.lua
    Script Author  : Premierio015
    Script Date    : 2021.11.01 06:11:34
    Script Purpose : 

        Zone       : TheCryptofBetrayal
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I should find the haft of the old and broken axe.", 1, 30, "I need to find a new haft that was once a part of the axe.  I should probably begin looking in the Crypt of Betrayal where I first found the pieces.", 2157, 2010031, 2010028, 2010010, 2010027, 2010029, 2010039, 2010006, 2010021, 2010022, 2010023, 2010024, 2010012, 2010014, 2010018, 2010019)
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
	UpdateQuestStepDescription(Quest, 1, "I have found the haft of the old and broken axe.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have found the old haft for the Axe.  Despite the apparent age the wood has held up remarkably well.")

	AddQuestStepKill(Quest, 2, "I should find the missing axe head piece.", 1, 30, "The large chip missing from the axe head seems to have remains of dried goo.  I might try to find the missing piece of the axe head among any slime creatures I find down in the Crypt of Betrayal.", 678, 2010011, 2010015, 2010016)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have found the missing axe head piece.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have found the missing axe head piece within the remains of a grotesque mass.")

	AddQuestStepKill(Quest, 3, "I should find a replacement counterweight for the chipped axe.", 1, 30, "It seems as if the handle counterweight is missing.  A replacement will need to be found.  Perhaps the Bloodsabers might be willing to give me one if I ask real nicely.", 666, 2010033, 2010037, 2010036, 2010000, 2010038, 2010034, 2010005, 2010004, 2010007, 2010008, 2010031, 2010028, 2010010, 2010027, 2010029, 2010039, 2010006, 2010021, 2010022, 2010023, 2010024, 2010012, 2010014, 2010018, 2010019)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I have found a replacement counterweight for the chipped axe.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I have found a replacement counterweight for the axe.")
    if HasItem(Player, 1349) then -- a chipped axe head(Item)
    RemoveItem(Player, 1349)
    end
	UpdateQuestDescription(Quest, "I have found all the pieces and reassembled Sharpscar.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
