--[[
    Script Name    : Quests/Antonica/a_crude_gnoll_map.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.14 04:07:07
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: a crude gnoll map
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "Speak to Walcott", 1, "I must find a person named Walcott in Antonica. The map suggests near the North Gates of Qeynos.", 11, 120078)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
if HasItem(Player,1468) then
    RemoveItem(Player,1468,1)
    SendMessage(Player,"You roll up the map and stuff it in your quest satchle.")
end
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "Spoke to farmer Walcott")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found farmer Walcott standing at his fields in Antonica.")

	AddQuestStepKill(Quest, 2, "Slay some witherstraw scarecrows", 1, 70, "I need a pristine witherstraw scarecrow cap.", 115, 120077)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "Slew some witherstraw scarecrows.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I found a pristine witherstraw scarecrow cap.")

	AddQuestStepKill(Quest, 3, "Slay Darkpaw mystics", 1, 60, "I need to hunt down Darkpaw mystics in hopes of finding a spool of Darkpaw sinew thread.", 781, 120015)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "Found the spool.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I found a spool of Darkpaw sinew thread on one of the Darkpaw mystics in Antonica.")

	AddQuestStep(Quest, 4, "Inspect a bale of hay for enchanted quiverstraw", 1, 100, "I need to find a hay bale of quiverstraw in Antonica. Who would be using enchanted straw?", 315)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have some quiverstraw.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I found a bundle of gnoll quiverstraw in Antonica.")

	AddQuestStepKill(Quest, 5, "Slay some sparrow hawks", 1, 66, "I need to slay some sparrow hawks in Antonica in hopes of finding a rare rainbow feather.", 150, 120064)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "Slew some sparrow hawks.")
	UpdateQuestTaskGroupDescription(Quest, 5, "I found a rare rainbow feather on a sparrow hawk in Antonica.")

	AddQuestStepChat(Quest, 6, "Speak to farmer Walcott", 1, "I need to return to farmer Walcott in Antonica to deliver his components.", 11, 120078)
	AddQuestStepCompleteAction(Quest, 6, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 6, "Spoke to farmer Walcott.")
	UpdateQuestTaskGroupDescription(Quest, 6, "I delivered the components to farmer Walcott.")

	UpdateQuestDescription(Quest, "I helped farmer Walcott gather the components necessary to construct a magical scarecrow that might help defend his crops from gnoll intrusions.")
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
