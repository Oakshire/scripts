--[[
	Script Name		:	Quests/OutpostOverlord/in_the_name_of_honor.lua
	Script Purpose	        :	Handles the quest, "In the Name of Honor"
	Script Author	        :	premierio015
	Script Date		:	18.05.2020
	Script Notes	        :	Auto generated with QuestParser.

	Zone			:	Outpost of the Overlord
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	In The Name of Prestige
--]]


function Init(Quest)
	AddQuestStepLocation(Quest, 1, "Search the Wilderwood, just north of the Seaside Glade.", 15, "I must find Laena,  the Tunarian spy that has captivated Charles Arker.  She could be in any of these locations; I'll have to search carefully.", 11, 175.27, 1.34, 100.21)
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
	UpdateQuestStepDescription(Quest, 1, "Searched the Wilderwood.")

	AddQuestStepLocation(Quest, 2, "Search the Rocky Dig to the east inside the Wilderwood.", 15, "I must find Laena,  the Tunarian spy that has captivated Charles Arker.  She could be in any of these locations; I'll have to search carefully.", 11, 120.20, 1.34, 99.57)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "Searched the Rocky Dig.")

	AddQuestStepLocation(Quest, 3, "Search Cliffdiver Canyon to the west of the Seaside Glade.", 15, "I must find Laena,  the Tunarian spy that has captivated Charles Arker.  She could be in any of these locations; I'll have to search carefully.", 11, 239.75, -5.06, 126.98)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "Searched Cliffdiver Canyon.")

	AddQuestStepLocation(Quest, 4, "Search Wilderbear Vale, at the northern end of Cliffdiver Canyon.", 15, "I must find Laena,  the Tunarian spy that has captivated Charles Arker.  She could be in any of these locations; I'll have to search carefully.", 11, 257.37, -4.32, -7.55)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "Searched Wilderbear Vale.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've located the ghost of Laena.")

	AddQuestStepKill(Quest, 5, "The ghost of Laena must be eliminated!", 1, 100, "There she is! I must get rid of Laena's ghost so that Charles is not tempted any longer.", 2487, 2780097)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I've eliminated Laena.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've gotten rid of Laena.  For good.")

	AddQuestStepChat(Quest, 6, "Charles will be grateful to learn that Laena is out of his life forever.", 1, "Now that the Tunarian is gone, I should let Charles know he can wed his Freeport lady in peace.", 11, 2780075)
	AddQuestStepCompleteAction(Quest, 6, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 6, "I spoke with Charles Arker.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I've spoken with Charles.")

	UpdateQuestDescription(Quest, "When I located the wood elf that captivated Charles Arker's imagination, she was already dead but in ghostly form.  To make sure that Laena doesn't come back to haunt him, I made sure she will never rise again.  Arker seemed surprised, perhaps even dismayed, but Laena's death will only make him stronger.")
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
