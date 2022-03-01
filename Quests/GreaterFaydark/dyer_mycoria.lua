--[[
	Script Name	: Quests/GreaterFaydark/dyer_mycoria.lua
	Script Purpose	: Handles the quest, "Dyer Mycoria"
	Script Author	: Scatman
	Script Date	: 2009.03.29
	
	Zone       : Greater Faydark
	Quest Giver: Morganellus
	Preceded by: None
	Followed by: None
--]]


function Init(Quest)


	AddQuestStepChat(Quest, 1, "I need to speak with Agarighus in Dyer Mycoria.", 1, ".", 0, 1140129)
	AddQuestStepCompleteAction(Quest, 1, "Quest_Complete")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	PlayFlavor(QuestGiver, "voiceover/english/exp03_questvo2/morganellus/_exp03/exp03_rgn_greater_faydark/shroomba/morganellus/morganellus004.mp3", "", "", 2956711105, 2602303407, Player)
	AddConversationOption(conversation, "All right, I'll just find him.")
	StartConversation(conversation, QuestGiver, Player, "Why would I want that? You are going to Dyer Mycoria, not me.")
end

function Declined(Quest, QuestGiver, Player)
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have found Agarighus.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
end
