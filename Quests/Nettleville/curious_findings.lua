--[[
	Script Name	: Quests/Nettleville/curious_findings.lua
	Script Purpose	: Handles the quest, "Curious Findings"
	Script Author	: Scatman
	Script Date	: 2008.09.23
	
	Zone		 : Nettleville
	Quest Giver: Lakosha Maera
	Preceded by: Ritual of Hearth (ritual_of_hearth.lua)
	Followed by: Required Components (required_components.lua)
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Spiritualist Laharn Rahai, just north east of the armor shop.", 1, "Lakosha Maera has asked that I speak with Spiritist Laharn Rahai to figure out what the foreign substance was in the soil I gathered.", 0, 2330049)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_talkedToLaharn")
end

function Accepted(Quest, QuestGiver, Player)
	 FaceTarget(QuestGiver, Player)
	 conversation = CreateConversation()
	 
	 PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/lakosha_maera/qey_village01/quests/lakosha_maera/lakosha_maera013a.mp3", "", "", 529691889, 918351649, Player)
	 AddConversationOption(conversation, "Me too.")
	 StartConversation(conversation, QuestGiver, Player, "I hope he can help us.")
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function step1_complete_talkedToLaharn(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Laharn Rahai.")
	
	AddQuestStepChat(Quest, 2, "I should speak with Assistant Alchemist Gunta in the Scribe's shop.", 1, "Lakosha Maera has asked that I speak with Spiritist Laharn Rahai to figure out what the foreign substance was in the soil I gathered.", 0, 2330026)
	AddQuestStepCompleteAction(Quest, 2, "step2_complete_talkedToGunta")
end

function step2_complete_talkedToGunta(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have spoken with Assistant Alchemist Gunta, she was not willing to help.")
	
	AddQuestStepChat(Quest, 3, "I need to speak with Laharn again, near the armor shop.", 1, "Lakosha Maera has asked that I speak with Spiritist Laharn Rahai to figure out what the foreign substance was in the soil I gathered.", 0, 2330049) 
	AddQuestStepCompleteAction(Quest, 3, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have spoken with Laharn.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have spoken with Laharn Rahai.")
	UpdateQuestDescription(Quest, "The alchemist was unwilling to identify the substance in the soil. Because of this Laharn says we will need to take the time to do the test ourselves.")
	GiveQuestReward(Quest, Player)
end