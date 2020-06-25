--[[
	Script Name	: Quests/Castleview/sending_the_word.lua
	Script Purpose	: Handles the quest, "Sending the Word"
	Script Author	: Scatman
	Script Date	: 2009.10.02
	
	Zone       : Castleview Hamlet
	Quest Giver: Vindain Greenfaith
	Preceded by: The Commune (the_commune.lua)
	Followed by: None
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to travel to Oakmyst Forest and speak with Adalin Emerael.", 1, "I need to speak with Adalin Emerael.", 0, 1950004)
	AddQuestStepCompleteAction(Quest, 1, "quest_complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/vindain_greenfaith/qey_village04/quests/vindain/vindain035b.mp3", "", "bow", 3207270317, 1946313496, Player)
	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, QuestGiver, Player, "May Tunare be with you.")
end

function Declined(Quest, QuestGiver, Player)
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Adalin Emerael.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have spoken with Adalin Emerael.")
	UpdateQuestDescription(Quest, "I have spoken with the Adalin Emerael.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
end