--[[
	Script Name		:	checking_on_charles.lua
	Script Purpose	        :	Handles the quest, "Checking on Charles"
	Script Author	        :	premierio015
	Script Date		:	19.05.2020
	Script Notes	        :	Auto generated with QuestParser.

	Zone			:	Outpost of the Overlord
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "Speak with Nogg Dreadscar.", 1, "Speak with some of the other Freeportians to see what they've heard about Charles Arker.", 11, 2780048 )
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
	UpdateQuestStepDescription(Quest, 1, "Spoke to Nogg Dreadscar.")

	AddQuestStepChat(Quest, 2, "Speak with Trainer Jayla Surfrider.", 1, "Speak with some of the other Freeportians to see what they've heard about Charles Arker.", 11, 2780044)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I spoke to Jayla Surfrider. She didn't know him.")

	AddQuestStepChat(Quest, 3, "Speak with Trainer Darg Frostwind.", 1, "Speak with some of the other Freeportians to see what they've heard about Charles Arker.", 11, 2780045)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I spoke to Darg Frostwind. He didn't know Charles, and never trained him.")

	AddQuestStepChat(Quest, 4, "Speak with Captain Pinious, just inside the tower.", 1, "Speak with some of the other Freeportians to see what they've heard about Charles Arker.", 11, 2780043)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I spoke to Captain Pinious, who can't recall Charles.")

	AddQuestStepChat(Quest, 5, "Speak with Chef Gorga.", 1, "Speak with some of the other Freeportians to see what they've heard about Charles Arker.", 11, 2780057)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I spoke to Chef Gorga. She doesn't know him, though she might like to cook him.")

	AddQuestStepChat(Quest, 6, "Speak with Trainer Vella N'Dur.", 1, "Speak with some of the other Freeportians to see what they've heard about Charles Arker.", 11, 2780055)
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I spoke to Vella N'Dur, who also doesn't know Charles.")

	AddQuestStepChat(Quest, 7, "Speak with Trainer Corx Knickknack.", 1, "Speak with some of the other Freeportians to see what they've heard about Charles Arker.", 11, 2780036)
	AddQuestStepCompleteAction(Quest, 7, "Step7Complete")
end

function Step7Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "I spoke to Corx Knickknack, who didn't know Charles.")

	AddQuestStepChat(Quest, 8, "Speak with Assassin Vamir.", 1, "Speak with some of the other Freeportians to see what they've heard about Charles Arker.", 11, 2780073)
	AddQuestStepCompleteAction(Quest, 8, "Step8Complete")
end

function Step8Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 8, "I spoke to Assassin Vamir, who says Charles is rather boring.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've spoken with the locals.")

	AddQuestStepChat(Quest, 9, "Speak with Zherran Tzizzink.  She'll probably be lurking near that firepit in the Outpost.", 1, "The local Freeportians had nothing bad to say about Charles.  Nothing good, either.  Time to tell Zherran Tzizzink the news.", 11, 2780096)
	AddQuestStepCompleteAction(Quest, 9, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 9, "I spoke with Zherran Tzizzink.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've spoken with Zherran.")

	UpdateQuestDescription(Quest, "I spoke with several of the Freeportians here at the Outpost of the Overlord.  Charles Arker seems to have left very little impression, even with those who are at the same camp as he is! Guess the lack of luster to his name is not going to stop the wedding plans for him.  I can only wish him all the best.")
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
		Step7Complete(Quest, QuestGiver, Player)
	elseif Step == 8 then
		Step8Complete(Quest, QuestGiver, Player)
	elseif Step == 9 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
