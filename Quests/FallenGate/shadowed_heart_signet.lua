--[[
    Script Name    : Quests/FallenGate/shadowed_heart_signet.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.11 10:07:18
    Script Purpose : 

        Zone       : FallenGate
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill some zombies in Fallen Gate until the thought leaves my head.", 20, 50, "With a little effort, I believe I can transform this snapped ring into something better.", 611, 1190085, 1190086, 1190088, 1190089, 1190014, 1190015, 1190027, 1190028, 1190031, 1190114, 1190016, 1190032, 1190046, 1190047, 1190056, 1190087, 1190012, 1190040, 1190042, 1190054, 1190055, 1190111, 1190033, 1190066, 1190009, 1190010, 1190013)
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
	UpdateQuestStepDescription(Quest, 1, "I've killed a number of zombies.")

	AddQuestStepKill(Quest, 2, "I should kill some constructs of malice until I find a mold to use on the ring.", 1, 50, "With a little effort, I believe I can transform this snapped ring into something better.", 926, 1190083, 1190077, 1190081, 1190096)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've found a mold on the constructs.")

	AddQuestStepZoneLoc(Quest, 3, "I need to find the Bull's Pit and hope some of the strength from the place imbues itself into the ring.", 10, "With a little effort, I believe I can transform this snapped ring into something better.", 11, 0, -25, -200, 199)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "The ring has completely reformed by itself.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've been able to change the snapped ring into the Shadowed Heart Signet.")
    if HasItem(Player,  2813) then
    RemoveItem(Player, 2813)
    end
	UpdateQuestDescription(Quest, "Applying a little bit of effort, I've been able to change the snapped ring into Shadowed Heart Signet. <br> <br>")
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
