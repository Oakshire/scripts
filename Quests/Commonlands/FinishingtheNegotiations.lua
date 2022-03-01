--[[
	Script Name		:	Quests/Commonlands/FinishingtheNegotiations.lua)
	Script Purpose	:	Handles the quest, "Finishing the Negotiations"
	Script Author	:	premierio015
	Script Date		:	03.01.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	Brandus Levine
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Captain Vertas at the Crossroads", 1, "According to Brandus, Captain Vertas has no love for the dervishes.  Brandus made mention that Vertas can be used for our purposes in punishing the dervishes.", 11, 330178)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
        conversation = CreateConversation()
        AddConversationOption(conversation, "Perhaps.")
        StartConversation(conversation, QuestGiver, Player, "He may have some other work for you while I try to find my sorcerer partner.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Captain Vertas.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have spoken with Vertas and learned he has his own agenda when it comes to the dervishes.")

	AddQuestStepChat(Quest, 2, "I should inform Brandus of what I've learned", 1, "I should return to Brandus and inform him of the connection Captain Vertas suspects with the Deathfist orcs.", 11, 330149)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have spoken to Brandus.")
	UpdateQuestTaskGroupDescription(Quest, 2, "Brandus was intrigued by my information from Captain Vertas.  He no longer seems to care about his shipment but would still like to see the return of his sorcerer.")

	AddQuestStepKill(Quest, 3, "I should intercept an orc runner", 3, 100, "Brandus has asked me to find the orc runners near the encampments in the Southern portion of the Commonlands.  I should intercept whatever partial messages they are delivering and see what I can uncover.", 75, 330743, 330126)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have intercepted an orc runner carrying an encoded message.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I have found some interesting notes from the orc runners in the Commonlands.")
        SummonItem(Player, 3595, 1)
	AddQuestStep(Quest, 4, "I should look for several decoded phrases on lone Bloodskull warriors", 1, 10, "I was able to find three separate encoded message pieces on the orc runners.  The messages were for lone Bloodskull warriors, they may carry the instructions I need to decode them.  I should see if I can find any decoded phrases, with enough of them I might be able to decode the entire message.", 185)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have found the complete decoding instructions.")

	AddQuestStep(Quest, 5, "I should decode and read the message", 1, 100, "I was able to find three separate encoded message pieces on the orc runners.  The messages were for lone Bloodskull warriors, they may carry the instructions I need to decode them.  I should see if I can find any decoded phrases, with enough of them I might be able to decode the entire message.", 11)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have decoded and read the message.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I have found enough of the instructions to decode the messages I received.")

	AddQuestStepChat(Quest, 6, "I should return to Brandus", 1, "I'm sure Brandus will be very interested in this information.  I should return to him and tell him of what I've learned.", 11, 330149)
	AddQuestStepCompleteAction(Quest, 6, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 6, "I have returned to Brandus and given him the information I gathered.")
	UpdateQuestTaskGroupDescription(Quest, 5, "I have given Brandus the information he was looking for.")

	UpdateQuestDescription(Quest, "I found the information Brandus was searching for and have uncovered a meeting between the Bloodskull orcs, the dervish cutthroats, and the sorcerer Brandus has been working with.")
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

