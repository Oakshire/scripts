--[[
	Script Name	: Quests/SunkenCity/a_flowing_conversation.lua
	Script Purpose	: Handles the quest, "A Flowing Conversation"
	Script Author	: Scatman
	Script Date	    : 2009.07.28 (15.7.2022 by torsten)
	
	Zone       : Sunken City
	Quest Giver: Inquisitor Thorson
	Preceded by: None
	Followed by: Spirits of the Night (spirits_of_the_night.lua)
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak to the iksar named Saydith Yarr and listen to everything he has to say.", 1, "I should find and talk to the iksar named Saydith Yarr.", 0, 1240019)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_SpokeWithSaydith")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I'll return shortly.")
	StartConversation(conversation, QuestGiver, Player, "Excellent. Return to me after you have spoken to him.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_SpokeWithSaydith(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken to Saydith Yarr and learned a bit about the Sunken City.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have spoken to Saydith Yarr.")
	
	AddQuestStepChat(Quest, 2, "I should return to Inquisitor Thorson.", 1, "I should let Thorson know that I talked to Yarr.", 0, 1240024)
	AddQuestStepCompleteAction(Quest, 2, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have returned to Inquisitor Thorson.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I told Thorson that I spoke to the strange iksar named Yarr.")
	GiveQuestReward(Quest, Player)
	UpdateQuestDescription(Quest, "I have found and spoken to Saydith Yarr. He was a very disturbed fellow who gave me some basic background on the area. I will find out more details from Inquisitor Thorson, who is much more coherent.")
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_SpokeWithSaydith(Quest, QuestGiver, Player)
	end
end