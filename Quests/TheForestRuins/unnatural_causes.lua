--[[
	Script Name		:	unnatural_causes.lua
	Script Purpose	:	Handles the quest, "Unnatural Causes"
	Script Author	:	Dorbin
	Script Date		:	2/27/2022
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Forest Ruins
	Quest Giver		:	Ilaen Lilac
	Preceded by		:	A Tribute for Ulinir
	Followed by		:	News for Germain
--]]


function Init(Quest)
	AddQuestStepObtainItem(Quest, 1, "I need to inspect the bodies of slain deer until I find a clue telling me what killed them.", 1, 100, "Ilaen Lilac has asked me to inspect the dead deer around here to figure out what has been killing them.", 11, 1466)
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
	UpdateQuestStepDescription(Quest, 1, "I have found a crude arrow in the body of a fallen deer.")
	GiveQuestItem(Quest, Player, "You found a crude arrow impailed in the deer.", 1466)
	   
	while HasItem(Player, 1466) do
    RemoveItem(Player,1466)
    end
	AddQuestStepChat(Quest, 2, "I need to take this arrow to Ilaen Lilac.", 1, "Ilaen Lilac has asked me to inspect the dead deer around here to figure out what has been killing them.", 363, 1960059)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have shown Ilaen Lilac the crude arrow.")

	AddQuestStepChat(Quest, 3, "I need to speak with Lieutenant Germain and tell him what I found.", 1, "Ilaen Lilac has asked me to inspect the dead deer around here to figure out what has been killing them.", 363, 1960005)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I have spoken with Lieutenant Germain.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I discovered gnoll teeth in one of the dead animals. I have given this information to Lieutenant Germain.")

	UpdateQuestDescription(Quest, "I found gnoll teeth in the bodies of one of the dead animals. I gave this information to Lieutenant Germain at Ilaen's request.")
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
