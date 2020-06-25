--[[
	Script Name		:	Quests/Darklight/SableveinRubble.lua
	Script Purpose	:	Handles the quest, "Sablevein Rubble"
	Script Author	:	QuestParser Cynnar
	Script Date		:	8/30/2015
	Script Notes	:	

	Zone			:	Darklight Wood
	Quest Giver		:	Danya Halfmoon 340018
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepHarvest(Quest, 1, "Gather samples of Sablevein rubble", 6, 100, "Danya Halfmoon would like me to bring her the rubble from Sablevein Tear.", 183, 11836)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the Sablevein rubble")

	AddQuestStepChat(Quest, 2, "Bring the rubble back to Danya Halfmoon", 1, "Danya Halfmoon would like me to bring her the rubble from Sablevein Tear.", 183, 340018)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- Sablevein rubble
	while HasItem(Player, 11836, 1) do
		RemoveItem(Player, 11836)
	end
		UpdateQuestDescription(Quest, "I have brought Danya the Sablevein rubble she asked for.")
		SetTempVariable(Player, "SableOre", nil)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/neriak/danya_halfmoon/darklight_wood/hates_envy/danya/danya005.mp3", "", "", 2830883681, 1931267037, Player)
	AddConversationOption(conversation, "I'll be back.")
	StartConversation(conversation, QuestGiver, Player, "Good. That will serve to keep my mind off of these people around me.")
    SetTempVariable(Player, "SableOre", 0)
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, Spawn)
	while HasItem(Player, 11836) do
		RemoveItem(Player, 11836)
	end
end