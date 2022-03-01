--[[
	Script Name	: Quests/WillowWood/a_joined_heritage.lua
	Script Purpose	: Handles the quest, "A Joined Heritage"
	Script Author	: Scatman
	Script Date	: 2009.09.26
	
	Zone       : The Willow Wood
	Quest Giver: Daelyn Twinstar
	Preceded by: A Split Heritage (a_split_heritage.lua)
	Followed by: Wisdom in the Wild (wisdom_in_the_wild.lua)
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I must speak with a human named Milo Faren. Daelyn says he should be in the scribe's shop.", 1, "Daelyn Twinstar has offered to help teach me about Half Elves. He has asked that I speak with a couple of people here within the Willow Wood.", 0, 2370028)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_SpokeWithMilo")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/daelyn_twinstar/qey_village05/quests/daelyn_twinstar/daelyn_twinstar022b.mp3", "", "", 719307287, 3769426706, Player)
	AddConversationOption(conversation, "I'll be back.")
	StartConversation(conversation, QuestGiver, Player, "Good. Return to me once this is done and we will speak of what you heard.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_SpokeWithMilo(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Milo Faren.")

	AddQuestStepChat(Quest, 2, "I must speak with an elf named Lyssia Delnara. Daelyn said she is probably on the small overlook near the gates to the Elddar Grove.", 1, "Daelyn Twinstar has offered to help teach me about Half Elves. He has asked that I speak with a couple of people here within the Willow Wood.", 0, 2370029)
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_SpokeWithLyssia")
end

function Step2_Complete_SpokeWithLyssia(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have spoken with Lyssia.")

	AddQuestStepChat(Quest, 3, "I should return to Daelyn now that I have spoken to Lyssia and Milo.", 1, "Daelyn Twinstar has offered to help teach me about Half Elves. He has asked that I speak with a couple of people here within the Willow Wood.", 0, 2370037)
	AddQuestStepCompleteAction(Quest, 3, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have spoken with Daelyn.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have completed Daelyn's task.")
	UpdateQuestDescription(Quest, "Daelyn promised to speak to me about Milo and Lyssia after I help him with an important task.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_SpokeWithMilo(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_SpokeWithLyssia(Quest, QuestGiver, Player)
	end
end