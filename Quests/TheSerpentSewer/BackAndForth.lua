--[[
	Script Name		:  Quests/SerpentSewers/BackAndForth.lua
	Script Purpose	        :	Handles the quest, "Back and Forth"
	Script Author	        :	premierio015
	Script Date		:	17.06.2020
	Script Notes	        :	Auto generated with QuestParser.

	Zone			:	Access Quests
	Quest Giver		:	Cicero Puer
	Preceded by		:	Murkwater Uniform
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Kill Crazy Peepers.", 1, 100, "Cicero would like me to dispatch of some gnome known only as ''Crazy Peepers.''  If I take care of this Peepers character Cicero will tell me where I can find a secret room with plenty of loot.", 611, 1550074)
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
	UpdateQuestStepDescription(Quest, 1, "I've taken care of Peepers.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've taken care of that Peepers character, I should return to Cicero.")

	AddQuestStepChat(Quest, 2, "Return to Cicero.", 1, "I've dispatched of that Crazy Peepers character for Cicero, I should go back to him and get the location of this ''secret'' room.", 11, 1550022, 1550059)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've spoken with Cicero.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've returned to Cicero and informed him of that crazy gnome's demise.")

	AddQuestStepChat(Quest, 3, "Deliver the letter to Merchant Tula Mawh.", 1, "Cicero says that I have to take this letter to a merchant down here in the sewers by the name of Tula, and she will give me the directions I need.", 1223, 1550014)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I delivered the letter to Tula.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I delivered the letter for that pesky little rodent, and it turned out to be some sort of love letter.")

	AddQuestStepChat(Quest, 4, "Return to Cicero, again.", 1, "That dirty little rat is either trying to pull a fast one over on me, or he thinks he can use me as a personal letter carrier.", 11, 1550022, 1550059)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I've spoken with Cicero, again.")
	UpdateQuestTaskGroupDescription(Quest, 4, "It turns out he just needed a letter delivered.  Cicero gave me the directions to the Serpent's Lair.")

	UpdateQuestDescription(Quest, "Well after killing a crazy gnome and playing love letter messenger, Cicero finally gave me directions to the Serpent's Lair.  I only hope the place was worth the trouble.")
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
		QuestComplete(Quest, QuestGiver, Player)
	end
end
