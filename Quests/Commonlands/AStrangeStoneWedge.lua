--[[
	Script Name		:	Quests/Commonlands/AStrangeStoneWedge.lua
	Script Purpose	:	Handles the quest, "A Strange Stone Wedge"
	Script Author	:	premierio015
	Script Date		:	27.02.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	a dull wedge(1621)
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I should try to find a suitable whetstone on the stone giants in the Commonlands", 5, 100, "I should try and find a suitable whetstone from the living rock of a stone giant in the Commonlands.", 1140, 330108)
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
	UpdateQuestStepDescription(Quest, 1, "I have found the whetstone I need.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have found a living rock whetstone.")

	AddQuestStepKill(Quest, 2, "I should try to find a suitable handle for the hatchet.  The undead pirates may have a wooden peg leg I can use.", 6, 100, "I need a special handle for this hatchet, not just any wood is going to do.  The wooden peg leg from some undead pirates just might work.", 840, 330155)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have found a suitable handle for Chickenbane.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have found the handle I need.")

	AddQuestStepKill(Quest, 3, "I should find some replacement grips for Chickenbane.  The leathery hide of an elephant should work nicely.", 5, 100, "I need some strong leather with a good grip for the finishing touches on Chickenbane.  Perhaps the leathery hide of an elephant would work.", 765, 330343, 330141, 330639, 330274, 330277)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I have found the leather I need and should replace the grips of Chickenbane.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I have the leather I need.")

	UpdateQuestDescription(Quest, "I finished remaking Chickenbane.")
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

