--[[
    Script Name    : Quests/WailingCaves/soul_wailer.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.14 09:07:42
    Script Purpose : 

        Zone       : WailingCaves
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill the undead in the Wailing Caves until I find an adequate gem to use in the pommel of this old dagger.", 1, 10, "With a little effort, I believe I can transform this old dagger into something better.", 1166, 2580000, 2580002, 2580008, 2580044, 2580043)
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
	UpdateQuestStepDescription(Quest, 1, "I've found something that looks like a soul gem.")

	AddQuestStep(Quest, 2, "I need to find a smithing hammer near a forge to hammer out a sharper edge on the dagger.", 1, 100, "With a little effort, I believe I can transform this old dagger into something better.", 11)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've found and used the smithing hammer.")

	AddQuestStepKill(Quest, 3, "I should find and kill a Ree spiritkeeper to see if there is any connection between them and the old dagger.", 1, 100, "With a little effort, I believe I can transform this old dagger into something better.", 611, 2580054)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I've killed a Ree spiritcaller.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've been able to change the old dagger into the Soul Wailer dagger.")
    if HasItem(Player, 3766) then
    RemoveItem(Player, 3766)
    end
	UpdateQuestDescription(Quest, "Applying a little bit of effort, I've been able to change the old dagger into the Soul Wailer. <br> <br>")
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

