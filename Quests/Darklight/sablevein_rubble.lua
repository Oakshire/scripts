--[[
	Script Name	: Quests/Darklight/sablevein_rubble.lua
	Script Purpose	: Handles the quest, "Sablevein Rubble"
	Script Author	: Scatman
	Script Date	: 2009.02.01
	
	Zone       : Darklight Wood
	Quest Giver: Danya Halfmoon
	Preceded by: None
	Followed by: None
--]]


function Init(Quest)
	-- Sablevein rubble
	AddQuestStepObtainItem(Quest, 1,  "I need to gather six samples of Sablevein rubble.", 6, 100,  ".", 183,  10242)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_gotRubble")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/neriak/danya_halfmoon/darklight_wood/hates_envy/danya/danya005.mp3", "", "", 2830883681, 1931267037, Player)
	AddConversationOption(conversation, "I'll be back.")
	StartConversation(conversation, QuestGiver, Player, "Good. That will serve to keep my mind off of these people around me.")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_gotRubble(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the Sablevein rubble.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected the Sablevein rubble.")
	
	AddQuestStepChat(Quest, 2, "I need to bring the rubble back to Danya Halfmoon.", 1, ".", 183, 340073)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	-- Sablevein rubble
	while HasItem(Player, 10242, 1) do
		RemoveItem(Player, 10242)
	end

	UpdateQuestDescription(Quest, "I have brought Danya the Sablevein rubble she asked for.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_killedIthari(Quest, QuestGiver, Player)
	end
end
