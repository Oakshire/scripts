--[[
	Script Name		:	Quests/OutpostOverlord/the_tunarian_plot.lua
	Script Purpose	        :	Handles the quest, "The Tunarian Plot"
	Script Author	        :	premierio015
	Script Date		:	19.05.2020
	Script Notes	        :	Auto generated with QuestParser.

	Zone			:	Outpost of the Overlord
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Search some Tunarian protectors for more of these parchment scraps.", 3, 100, "I need to find the rest of this Tunarian parchment so that I can solve its mystery.", 2474, 2780006)
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
	UpdateQuestStepDescription(Quest, 1, "I've searched the Tunarian protectors.")

	AddQuestStep(Quest, 2, "I must examine the parchment scraps.", 1, 100, "I need to find the rest of this Tunarian parchment so that I can solve its mystery.", 11)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've examined the parchment.")

	AddQuestStepKill(Quest, 3, "Search the Tunarian bearmasters for more of these parchment scraps.", 1, 100, "I need to find the rest of this Tunarian parchment so that I can solve its mystery.", 2475, 2780082)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've searched the Tunarian bearmasters.")

	AddQuestStep(Quest, 4, "I must examine the parchment scraps.", 1, 100, "I need to find the rest of this Tunarian parchment so that I can solve its mystery.", 11)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I've examined the parchment.")

	AddQuestStepChat(Quest, 5, "Charles Arker knows more about this than he's led me to believe.  I'll see what he has to say about things now.", 1, "I need to find the rest of this Tunarian parchment so that I can solve its mystery.", 11, 2780075)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I've spoken with Charles Arker.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've gathered most of the parchment pieces together.")

	AddQuestStepChat(Quest, 6, "Meet Charles Arker at the Nook, east of the center of the Wilderwood.", 1, "Charles Arker said he will explain everything to me, but away from the encampment where we might be overheard.", 11, 2780075)
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I spoke with Charles Arker.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've spoken with Charles Arker and learned his dark secret.")

	AddQuestStep(Quest, 7, "I'll get rid of the parchment by burning it in the firepit at Whizratchet's Bank.", 1, 100, "Charles Arker once again needs me to take care of something for him.", 2353)
	AddQuestStepCompleteAction(Quest, 7, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 7, "I've destroyed the evidence of Charles Arker's indiscrection.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I've disposed of the last bits of that note.")

	UpdateQuestDescription(Quest, "The ''Tunarian Plot'' turned out to be nothing more than Charles Arker ineptly arranging a meeting with that Tunarian wood elf, Laena.  He confessed to me that he'd only been trying to get back all the pieces of this note before word got back to his family.  I helped cover his tracks by destroying all the parchment pieces we gathered.")
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
		Step6Complete(Quest, QuestGiver, Player)
	elseif Step == 7 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
