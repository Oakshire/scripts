--[[
	Script Name	: Quests/ForestRuins/magnificent_machinery.lua
	Script Purpose	: Handles the quest, "Magnificent Machinery"
	Script Author	: Scatman
	Script Date	: 2009.09.27
	
	Zone       : The Forest Ruins
	Quest Giver: Poko Zing
	Preceded by: None
	Followed by: None
--]]

function Init(Quest)
	-- machine parts
	AddQuestStepObtainItem(Quest, 1,  "I need to collect some machine parts for Poko Zing. He says the junk parts are strewn about the Forest Ruins.", 6, 100,  "Poko Zing is in need of mechanical parts and has come across quite a few in the Forest Ruins. He has asked that I help him by collecting some parts for him.", 1042,  7883)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_GotMachineParts")
	
	-- the spawn is 'mechanical components'
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/poko_zing/qey_adv02_ruins/quests/poko/poko004a.mp3", "", "", 3746859101, 2602853428, Player)
	AddConversationOption(conversation, "I will return shortly.")
	StartConversation(conversation, QuestGiver, Player, "Once you get them, bring them back to me and I will recycle them for my purposes.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_GotMachineParts(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the machine parts.")
	
	AddQuestStepChat(Quest, 2, "I need to bring these machine parts back to Poko Zing.", 1, "Poko Zing is in need of mechanical parts and has come across quite a few in the Forest Ruins. He has asked that I help him by collecting some parts for him.", 0, 1960014)
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_SpokeWithPoko")
end

function Step2_Complete_SpokeWithPoko(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have given Poko the machine parts he asked for.")
	
	-- remove machine parts
	while HasItem(Player, 7883) do
		RemoveItem(Player, 7883)
	end

	AddQuestStepChat(Quest, 3, "I need to report to Lieutenant Germain.", 1, "Poko Zing is in need of mechanical parts and has come across quite a few in the Forest Ruins. He has asked that I help him by collecting some parts for him.", 0, 1960011)
	AddQuestStepCompleteAction(Quest, 3, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have reported to Lieutenant Germain.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected the parts that Poko needed. One of the parts I found surprised Poko and he asked me to speak with Lieutenant Germain.")
	UpdateQuestDescription(Quest, "I have collected the parts that Poko needed. One of the parts I found surprised Poko and he asked me to speak with Lieutenant Germain.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player)
	if Step == 1 then
		Step1_Complete_GotMachineParts(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_SpokeWithPoko(Quest, QuestGiver, Player)
	end
end