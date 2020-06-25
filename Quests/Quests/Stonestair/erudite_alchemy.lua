--[[
	Script Name		:	Quests/Stonestair/erudite_alchemy.lua
	Script Purpose	:	Handles the quest, "Erudite Alchemy"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	6/22/2018
	Script Notes	:	

	Zone			:	Stonestair Byway
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	tweezing_kerra.lua
--]]

-- Item ID's
local HERBS = 8376

function Init(Quest)
	AddQuestStepHarvest(Quest, 1, "Gather some of the herbs from around the Stonestair Byway.", 5, 100, "Find the herbs growing in the Byway for Vess.", 2312, HERBS)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/vesh_al_ishni/fprt_hood02/vesh_alishni013.mp3", "", "", 2691616073, 3518000896, Player)
	AddConversationOption(conversation, "Very well, it shall be done.")
	StartConversation(conversation, QuestGiver, Player, "I could use some assistance with gathering a few seeds from the herbs growing here in the Byway. Once you gather them, take them over to the scribe's shop, and grind them up there.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	RemoveHerbs(Player)
end

function RemoveHerbs(Player)
	while HasItem(Player, HERBS, 1) do
		RemoveItem(Player, HERBS)
	end
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've gathered enough herbs for Vess' mixture.")
	
	AddQuestStep(Quest, 2, "Crush the herbs in the pestle.", 1, 100, "Find the herbs growing in the Byway for Vess.", 0)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "The herbs have been crushed in the pestle.")
	
	RemoveHerbs(Player)
	AddQuestStepChat(Quest, 3, "I must bring the crushed herbs back to Vess.", 1, "Find the herbs growing in the Byway for Vess.", 0, 1350010)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	
	UpdateQuestTaskGroupDescription(Quest, 1, "The herbs have been crushed in the pestle.")

	UpdateQuestDescription(Quest, "I've completed the mixture for Vess, but at this point, am unsure as to its use.")
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
