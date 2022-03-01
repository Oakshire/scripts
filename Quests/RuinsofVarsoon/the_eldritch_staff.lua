--[[
	Script Name		:	the_eldritch_staff.lua
	Script Purpose	:	Handles the quest, "The Eldritch Staff"
	Script Author	:	Dorbin
	Script Date		:	2/10/2022
	Script Notes	:

	Zone			:	Ruins of Varsoon
	Quest Giver		:	a slate grey staff
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I should try to kill some of the bats in Varsoon to see if anything happens.", 100, 100, "I'm not sure what to do with this staff that I've found.  There seem to be runes embedded within the wood, but I'm not too sure if there is any significance to them.  Maybe I should destroy some of these bats to see if anything happens.", 611, 2560009,2560014, 2560004)
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
	UpdateQuestStepDescription(Quest, 1, "I've killed a number of bats in Varsoon.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've destroyed a number of these frightening bats within the Halls of Varsoon.  Each time I killed one of them, I felt a small twitch come from the slate grey staff.")

	AddQuestStepKill(Quest, 2, "I should try to kill some of the undead in Varsoon to see if anything happens.", 100, 100, "Since killing the bats in the Halls of Varsoon seemed to have had an effect on the staff, perhaps destroying some of the skeletal undead might do even more.", 611, 2560011, 2560016, 2560019, 2560020, 2560022, 2560026, 2560027, 2560032, 2560033, 2560034, 2560035, 2560036, 2560037, 2560038, 2560039, 2560040, 2560044, 2560045, 2560048,2560047, 2560050, 2560051, 2560052, 2560055, 2560058, 2560060, 2560061, 2560062, 2560063, 2560069, 2560070, 2560073, 2560074, 2560076, 2560077, 2560079, 2560080, 2560085, 2560086, 2560095, 2560096, 2560097, 2560098, 2560099, 2560100, 2560102, 2560103, 2560104, 2560105, 2560118, 2560126, 2560123)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've killed a number of undead in Varsoon.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've destroyed a number of the undead in the Halls of Varsoon.  Sure enough, every time I destroyed one of them, I felt a small twitch come from the staff.")

	AddQuestStepKill(Quest, 3, "I should try to kill some of the golems in Varsoon to see if anything happens.", 100, 100, "I think I may want to take this up another notch and start destroying these animated golems that wander the Halls of Varsoon.  Perhaps it may do even more for this eldritch staff.", 611, 2560028, 2560059, 2560042)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I've killed a number of golems in Varsoon.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I've destroyed a number of the golems that wandered the Halls of Varsoon.  Every one that was destroyed caused the staff to give a small twitch.")

	UpdateQuestDescription(Quest, "I've managed to bring this staff to 'life'.  Having destroyed a number of bound souls, the staff seemed to absorb all of these life forces.  The staff now seems to be more powerful at this point.")
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
