--[[
	Script Name		:	Quests/TheCommonlands/TheWheelOfVaniki.lua
	Script Purpose	:	Handles the quest, "The Wheel of Vaniki"
	Script Author	:	premierio015
	Script Date		:	23.05.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	World Event
	Quest Giver		:	Surveyor Menak
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStep(Quest, 1, "The Wheel is supposedly at a camp of &quot;little ones.&quot;", 1, 100, "I need to locate the missing Wheel of Vaniki in the Commonlands at one of the camps.", 11)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	PlayAnimation(QuestGiver, 13064)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I'll take a look.")
	StartConversation(conversation, QuestGiver, Player, "Excellent!  I know this is not nice to say about those we do not know, but there is a village in the Commonlands full of little ones.  They took the Wheel and we must get it back.  Go there, look around.  They are not nice.  The Wheel is ours!")
end


function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've located the Wheel.")

	AddQuestStepChat(Quest, 2, "Speak with the Surveyor.", 1, "I need to locate the missing Wheel of Vaniki in the Commonlands at one of the camps.", 11, 330133)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've spoken with Surveyor Menak.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've found a Wheel, but it is incomplete.")
    
	AddQuestStepChat(Quest, 3, "Speak with Engineer Klaaska.", 1, "Surveyor Menak referred me to the engineer to learn more about the Wheel.", 11, 330278)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "Spoke with Engineer Klaaska.")
	UpdateQuestTaskGroupDescription(Quest, 2, "Engineer Klaaska gave me information about the Wheel.")
     GiveQuestItem(Quest, Player, "Engineer Klaaska gave me information about the Wheel.", 14377)
	AddQuestStep(Quest, 4, "Locate the Sacred Bottle of Contentment.", 1, 100, "I need to help the roekillik recreate the Wheel of Vaniki.  Engineer Klaaska gave me some information on what I will need.", 11)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "Found the Sacred Bottle of Contentment.")

	AddQuestStep(Quest, 5, "Examine the Wheel.", 1, 100, "I need to help the roekillik recreate the Wheel of Vaniki.  Engineer Klaaska gave me some information on what I will need.", 11)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "Examined the Wheel.")

	AddQuestStep(Quest, 6, "Locate the Vial of Interaction.", 1, 100, "I need to help the roekillik recreate the Wheel of Vaniki.  Engineer Klaaska gave me some information on what I will need.", 11)
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "Found the Vial of Interaction.")

	AddQuestStep(Quest, 7, "Examine the Wheel.", 1, 100, "I need to help the roekillik recreate the Wheel of Vaniki.  Engineer Klaaska gave me some information on what I will need.", 11)
	AddQuestStepCompleteAction(Quest, 7, "Step7Complete")
end

function Step7Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "Examined the Wheel.")

	AddQuestStep(Quest, 8, "Locate the Ancient Alkaline Barrel.", 1, 100, "I need to help the roekillik recreate the Wheel of Vaniki.  Engineer Klaaska gave me some information on what I will need.", 11)
	AddQuestStepCompleteAction(Quest, 8, "Step8Complete")
end

function Step8Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 8, "Found the Ancient Alkaline Barrel.")

	AddQuestStep(Quest, 9, "Examine the Wheel.", 1, 100, "I need to help the roekillik recreate the Wheel of Vaniki.  Engineer Klaaska gave me some information on what I will need.", 11)
	AddQuestStepCompleteAction(Quest, 9, "Step9Complete")
end

function Step9Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 9, "Examined the Wheel.")

	AddQuestStepChat(Quest, 10, "I should take the Wheel back to Engineer Klaaska.", 1, "I need to help the roekillik recreate the Wheel of Vaniki.  Engineer Klaaska gave me some information on what I will need.", 11, 330278)
	AddQuestStepCompleteAction(Quest, 10, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 10, "I've recreated the Wheel of Vaniki for the roekillik.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I've recreated the Wheel of Vaniki.")

	UpdateQuestDescription(Quest, "After doing a bit of leg work, I restored the Wheel of Vaniki.  Turns out it's not a mystical ancient artifact as I thought, but a huge wheel of cheese!  Even though the roekillik and I didn't exactly see eye-to-eye on things, at least they paid me for my efforts.")
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
		Step9Complete(Quest, QuestGiver, Player)
	elseif Step == 10 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
