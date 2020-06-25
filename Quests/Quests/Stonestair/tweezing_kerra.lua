--[[
	Script Name		:	Quests/Stonestair/tweezing_kerra.lua
	Script Purpose	:	Handles the quest, "Tweezing Kerra"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	6/22/2018
	Script Notes	:	

	Zone			:	Stonestair Byway
	Quest Giver		:	
	Preceded by		:	erudite_alchemy.lua
	Followed by		:	incantation_oration.lua
--]]

-- Item ID's
local SILVER_TWEEZERS = 48065

function Init(Quest)
	AddQuestStepChat(Quest, 1, "Speak with Sevri Il'Bethod and give her the mixture. She should be near the Inn.", 1, "Speak to Sevri Il'Bethod and give her the herbal mixture.", 11, 1350011)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/vesh_al_ishni/fprt_hood02/vesh_alishni017.mp3", "", "", 2088321300, 3465986991, Player)
	AddConversationOption(conversation, "I'll take it to her.")
	StartConversation(conversation, QuestGiver, Player, "Straight down the path, up the stairs, and to the right of the inn.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	RemoveTweezers(Player)
end

function RemoveTweezers(Player)
	while HasItem(Player, SILVER_TWEEZERS, 1) do
		RemoveItem(Player, SILVER_TWEEZERS)
	end
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've spoken with Sevri and given her the mixture.")
	
	SummonItem(Player, SILVER_TWEEZERS)
	
	AddQuestStepSpell(Quest, 2, "I need to pluck some fur from kerrans.", 5, 100, "Speak to Sevri Il'Bethod and give her the herbal mixture.", 0, 2550000)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've plucked fur from several kerrans.")
	
	AddQuestStepChat(Quest, 3, "I need to bring this fur back to Sevri.", 1, "Speak to Sevri Il'Bethod and give her the herbal mixture.", 11, 1350011)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I've spoken with Sevri and given her the fur.")
	UpdateQuestTaskGroupDescription(Quest, 1, "The kerra have been tweezed! I've got all the fur Sevri asked for.")

	UpdateQuestDescription(Quest, "After tweezing several of the kerra, no doubt to their complete discomfort, I returned their fur to Sevri.")
	GiveQuestReward(Quest, Player)
	
	RemoveTweezers(Player)
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