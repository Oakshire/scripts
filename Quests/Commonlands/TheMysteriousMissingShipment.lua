--[[
	Script Name		:	the_mysterious_missing_shipment.lua
	Script Purpose	:	Handles the quest, "The Mysterious Missing Shipment"
	Script Author	:	premierio015
	Script Date		:	13.11.2020
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	Brandus Levine
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I should speak to Nethet about Brandus's shipment", 1, "Brandus directed me to an individual named Nethet who frequents the City of Freeport gates in the Commonlands.", 11, 331135)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	    FaceTarget(QuestGiver, Player)
            conversation = CreateConversation()
            PlayFlavor(QuestGiver, "brandus_levine/commonlands/quests/brandus_levine/brandus_levine007.mp3", "", "", 3066832295, 2286961802, Player)
           AddConversationOption(conversation, "I know.")
           StartConversation(conversation, QuestGiver, Player, "Watch your coin around his type.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have asked Nethet if he knows anything about Brandus' shipment.")
        UpdateQuestTaskGroupDescription(Quest, 1, "I have asked Nethet if he knows anything about Brandus' shipment.")

	AddQuestStep(Quest, 2, "I need to complete Nethet's tasks for more information", 1, 100, "Brandus directed me to an individual named Nethet who frequents the City of Freeport gates in the Commonlands.", 11)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have helped Nethet. His information was very useful.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've spoken to Nethet and done everything he asked before he finally gave up the information I was looking for.")

	AddQuestStepChat(Quest, 3, "I need to return to Brandus", 1, "I should return to Brandus and let him know that it is the Dervish Cutthroats that have his shipment, and his sorcerer.", 11, 330149)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I have told Brandus the Dervish have his cargo.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I have told Brandus that his shipment is being held by the Dervish Cutthroats.  He did not seem to be happy with the news.")

	UpdateQuestDescription(Quest, "I found the ''shipment'' Brandus was referring to.  He has been selling refugees back to a captain in the Far Seas Trading Company with their memories erased or altered.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
