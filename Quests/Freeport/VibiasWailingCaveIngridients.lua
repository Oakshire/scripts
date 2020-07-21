--[[
	Script Name		:	vibias_wailing_cave_ingredients.lua
	Script Purpose	:	Handles the quest, "Vibia's Wailing Cave Ingredients"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	10.07.2020
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	The City of Freeport
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must collect two samples of primordial seep bile within the Wailing Caves.", 2, 100, "I must collect two samples of primordial seep bile and one venom sac from a spider called Soulspike within the Wailing Caves.", 178, 2580010)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
conversation = CreateConversation()
PlayFlavor(QuestGiver, " voiceover/english/optional1/merchant_vibia_valens/fprt_north/quests/vibiavalens/vibiavalens_x1_accept.mp3", "", "", 135454425, 3886964070, Player)  
AddConversationOption(conversation, "I understand.")
StartConversation(conversation, QuestGiver, Player, "Excellent! You've put all my worries to rest. Make sure that you gather two samples of primordial seep bile, and we only need one venom sac from Soulspike.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected two samples of primordial seep bile.")

	AddQuestStepKill(Quest, 2, "I must hunt down and slay the elusive spider named Soulspike.", 1, 100, "I must collect two samples of primordial seep bile and one venom sac from a spider called Soulspike within the Wailing Caves.", 146, 2580037)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have slain Soulspike and collected the venom sac.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected the primordial seep bile samples and the venom sac from Soulspike.")

	AddQuestStepChat(Quest, 3, "I should return to Vibia Valens.", 1, "I should return to Vibia Valens.", 11, 1440065, 5590320)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	-- UpdateQuestStepDescription(Quest, 3, "I have returned to Vibia Valens.")
	-- UpdateQuestTaskGroupDescription(Quest, 2, "I have returned to Vibia Valens.")

	UpdateQuestDescription(Quest, "I have successfully collected two primordial seep bile samples and the venom sac from Soulspike the spider queen of the Wailing Caves. Vibia rewarded me with a dagger and some coin for a job well done. ")
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

