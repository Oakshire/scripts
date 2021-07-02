--[[
	Script Name		:	Quests/TheSerpentSewer/crazy_talking_skull_.lua
	Script Purpose	:	Handles the quest, "Crazy Talking Skull"
	Script Author	:	premierio015
	Script Date		:	01.07.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Serpent Sewer
	Quest Giver		:	human_skeleton_bones
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStep(Quest, 1, "Recover skeletal remains.", 1, 100, "I need to find the headless skeletal remains for the skull down in The Serpent Sewer.", 90)
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
	UpdateQuestStepDescription(Quest, 1, "I've found the skeletal remains.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found the skull's remains.  I should return to the talking skull.")

	AddQuestStepChat(Quest, 2, "Return to talking skull.", 1, "Now that I've got the remains, I should return to the talking skull in The Serpent Sewer.", 11, 1550068)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've given the skull his remains.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I returned the remains to the talking skull.")

	AddQuestStepKill(Quest, 3, "Kill this crazy skeleton.", 1, 100, "Gord has flipped his lid.  It looks like I'm going to have to put this crazy skeleton down.", 611, 1550076)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I've killed the mad skeleton.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I've killed the mad skeleton.")

	UpdateQuestDescription(Quest, "That's the last time I help a talking skull.  After I returned the remains to the skull, it formed into a skeleton and attacked me!  In retrospect, I can't say I'm all too surprised... after all it was a skull I was dealing with.  <br>")
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
