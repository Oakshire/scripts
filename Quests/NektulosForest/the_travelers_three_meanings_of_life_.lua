--[[
	Script Name		:	the_travelers_three_meanings_of_life.lua
	Script Purpose	:	Handles the quest, "The Traveler's Three Meanings of Life"
	Script Author	:	premierio015
	Script Date		:	15.06.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Nektulos Forest
	Quest Giver		:	The Traveling Augur
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepZoneLoc(Quest, 1, "I need to travel to Gargoyle Gorge in Nektulos Forest", 10, "The Traveling Augur is teaching me three meanings of life.", 11, -926, 79, -1605, 179)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I just got here...oh, never mind.  I'll be back.")
	StartConversation(conversation, QuestGiver, Player, "The first meaning you must learn is the expansion of one's mind.  Many times, we channel our energies toward outward manifestations of peril when in reality the greatest peril is internal.  Traveling is one way to expand one's mind.  Go, then, and return when you've finished your journey.")
end



function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've traveled to Gargoyle Gorge")
	AddQuestStepZoneLoc(Quest, 2, "I need to travel to Behemoth Pond in Nektulos Forest", 10, "The Traveling Augur is teaching me three meanings of life.", 11,  -236, 3, -276, 179)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've been to Behemoth Pond")

	AddQuestStepZoneLoc(Quest, 3, "I need to travel to N'Mar's Ascent in Nektulos Forest", 10, "The Traveling Augur is teaching me three meanings of life.", 11,  -369, 12, -1214, 179)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've traveled to N'Mar's Ascent")

	AddQuestStepChat(Quest, 4, "I must speak with the Traveling Augur", 1, "The Traveling Augur is teaching me three meanings of life.", 11, 1790046)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I've spoken with the Traveling Augur")

	AddQuestStep(Quest, 5, "I must separate three individual roots from Nektulos Forest's rancid roots", 3, 100, "The Traveling Augur is teaching me three meanings of life.", 198)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I've separated out individual roots")

	AddQuestStep(Quest, 6, "I must separate three individual plants from Nektulos Forest's assortment of fungi", 3, 100, "The Traveling Augur is teaching me three meanings of life.", 822)
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I've separated out three individual plants")

	AddQuestStepChat(Quest, 7, "I must speak with the Traveling Augur", 1, "The Traveling Augur is teaching me three meanings of life.", 11, 1790046)
	AddQuestStepCompleteAction(Quest, 7, "Step7Complete")
end

function Step7Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "I've spoken with the Traveling Augur")

	AddQuestStepKill(Quest, 8, "Learn personal effort by hunting three ashland piranhas in Nektulos Forest", 3, 100, "The Traveling Augur is teaching me three meanings of life.", 86, 1790213)
	AddQuestStepCompleteAction(Quest, 8, "Step8Complete")
end

function Step8Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 8, "I've slain some ashland piranhas")

	AddQuestStepChat(Quest, 9, "I must speak with the Traveling Augur", 1, "The Traveling Augur is teaching me three meanings of life.", 11, 1790046)
	AddQuestStepCompleteAction(Quest, 9, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 9, "I've spoken with the Traveling Augur")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've done what the Traveling Augur recommended.")

	UpdateQuestDescription(Quest, "Like all mystical ventures, I'm supposed to draw my own conclusions as to what I've learned about the meanings of life.  I believe that being alive beats the alternative, but the Traveling Augur probably has something else in mind.  At least he paid me for my time.")
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
