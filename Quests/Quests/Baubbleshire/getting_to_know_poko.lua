--[[
	Script Name	: Quests/Baubbleshire/getting_to_know_poko.lua
	Script Purpose	: Handles the quest, "Getting to Know Poko"
	Script Author	: Scatman
	Script Date	: 2009.09.27
	
	Zone       : The Baubbleshire
	Quest Giver: Neezer Grund
	Preceded by: Neezer's Survey (neezers_survery.lua)
	Followed by: None
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Poko Zing.", 1, "I need to speak with Poko Zing and give him this mechanical part.", 0, 1960003)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund050a.mp3", "", "", 494428162, 2433018345, Spawn)
	AddConversationOption(conversation, "All right.")
	StartConversation(conversation, NPC, Spawn, "Tell him Neezer sent you, I'm sure he'll be happy to see you.")
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function step1_complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Poko Zing.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have spoken with Poko Zing.")
	UpdateQuestDescription(Quest, "I have delivered the part to Poko Zing.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
end