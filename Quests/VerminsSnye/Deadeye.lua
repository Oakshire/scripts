--[[
	Script Name		:	Quests/VerminsSnye/Deadeye.lua
	Script Purpose	        :	Handles the quest, "Deadeye"
	Script Author	        :	premierio015
	Script Date		:	12.05.2020
	Script Notes	        :	Auto generated with QuestParser.

	Zone			:	Vermin's Snye
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I should try to gather enough guts from the vermin in the catacombs to make a drawstring.", 10, 25, "I'm going to need a bowstring to attach to this bow shaft.  I'm fairly certain that I can draw enough gut from the vermin running around the catacombs to make a nice drawstring.", 382, 2000014, 2000009)
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
	UpdateQuestStepDescription(Quest, 1, "I've gathered enough guts to make a drawstring.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've managed to draw enough gut from vermin in the tombs to make a drawstring.")

	AddQuestStepKill(Quest, 2, "I should try to gather enough blood from giant burrowers now.", 5, 25, "I need to soak this drawstring in something strong enough to tan it quickly.  Perhaps I can soak it in the blood of one of the giant burrowers that make their home in the tombs.", 8, 2000004, 2000026)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have found enough blood from the burrowers in the catacombs.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've soaked the drawstring in enough blood of the giant burrowers to make it nice and supple.")

	AddQuestStepKill(Quest, 3, "I need to kill these bloodsabers to see if they have any bowstring rosin on them.", 5, 25, "I finally need some rosin to coat the bowstring.  Perhaps one of these Bloodsabers might have some on them.", 181, 2000016, 2000019, 2000017)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I have found sufficient rosin.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I've found enough rosin to coat my bowstring.  Sadly, a number of the Bloodsabers had to die in order to rebuild this bow.")

	UpdateQuestDescription(Quest, "I've manage to restore this bow to its former glory.  Creating a fine bowstring to match its magical nature, I've named the bow Deadeye. <br> <br>")
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

