--[[
	Script Name	: Quests/Baubbleshire/helping_a_friend.lua
	Script Purpose	: Handles the quest, "Helping a Friend"
	Script Author	: Scatman
	Script Date	: 2009.09.27
	
	Zone       : The Baubbleshire
	Quest Giver: Rondo "The Belly" Roundstew
	Preceded by: None
	Followed by: Helping a Friend, Again (helping_a_friend_again.lua)
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Maela Meadows near the waterfall in southeastern Baubbleshire.", 1, "I need to see if I can help Maela deal with any problems she may have.", 0, 2380035)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_talkedToMaela")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I'm on my way.")
	StartConversation(conversation, QuestGiver, Player, "Thank you. She should be by the waterfall, find her and get her to share her feelings, please.")
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function step1_complete_talkedToMaela(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Maela, she didn't have much to say.")
	
	AddQuestStepChat(Quest, 2, "I should return to Rondo.", 1, "I need to see if I can help Maela deal with any problems she may have.", 0, 2380039)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have spoken with Rondo.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I was unable to help Maela, but Rondo has another plan.")
	UpdateQuestDescription(Quest, "Maela wasn't very forthcoming, but Rondo has another plan to help her out.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_talkedToMaela(Quest, QuestGiver, Player)
	end
end