--[[
    Script Name    : Quests/FallenGate/scorched_wooden_staff.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.11 06:07:47
    Script Purpose : 

        Zone       : FallenGate
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I should find the stones that were once a part of the scorched wooden staff.", 3, 100, "I need to find the missing rocks or gems that were once a part of the staff.  They couldn't have gotten far so I should search for anything that fits within Fallen Gate where I found the staff.", 1180, 1190029, 1190030)
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
	UpdateQuestStepDescription(Quest, 1, "I have found three polished pieces of amber that look as if they would fit within some of the indentations along the staff.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have found three polished pieces of amber that look as if they would fit within some of the indentations along the staff.")

	AddQuestStepKill(Quest, 2, "I should find a replacement for the leather straps that probably existed on the staff before.", 4, 100, "The four carved ridges along the length seem to indicate that perhaps the staff had some leather grips.  Perhaps if I could replace these with something similar it will give me a hint as to their purpose.", 740, 1190019)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have found some replacement straps for the scorched staff.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have found some replacement straps for the scorched staff.")

	AddQuestStepKill(Quest, 3, "I should find some replacement end caps for the scorched staff.", 2, 100, "It seems as if the end caps are missing.  Some replacements might be found down near Hate's Forge in Fallen Gate.", 554, 1190099)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I have found replacement end caps on the undead that reside within Hate's Forge in Fallen Gate.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I have found replacement end caps on the undead that reside within Hate's Forge in Fallen Gate.")
    if HasItem(Player, 2581) then
    RemoveItem(Player, 2581)
    end
	UpdateQuestDescription(Quest, "I have found all the pieces and reassembled the Scorched Wooden Staff.  It seems to have only a measure of the power it once possessed but yet is still strong despite the appearance.")
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

