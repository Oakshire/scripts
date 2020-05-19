--[[
	Script Name	: Quests/Ruins/anger_fang.lua
	Script Purpose	: Handles the quest, "Anger-Fang"
	Script Author	: Scatman
	Script Date	    : 2009.07.28
	
	Zone       : The Ruins
	Quest Giver: Mardyp Prunt
	Preceded by: None
	Followed by: None
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need 20 orc fangs.", 20, 100, "Mardyp would like me to collect some orc fangs for him.", 102, 1270012, 1270153, 1270055, 1270013, 1270131, 1270035, 1270045, 1270095, 1270044, 1270010, 1270130, 1270027, 1270039, 1270022, 1270019, 1270087, 1270050, 1270066, 1270053, 1270047, 1270096, 1270067, 1270058, 1270068, 1270046, 1270057, 1270037, 1270056, 1270093, 1270170, 1270161, 1270114, 1270112, 1270082, 1270063, 1270081, 1270117, 1270118, 1270049, 1270048, 1270059, 1270041, 1270051, 1270052, 1270116, 1270113, 1270133, 1270115, 1270119, 1270120, 1270181)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_KilledOrcs")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I'll go get your fangs.")
	StartConversation(conversation, QuestGiver, Player, "Good! Mardyp go back to crushing.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_KilledOrcs(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the orc fangs.")
	
	AddQuestStepChat(Quest, 2, "I need to bring the orc fangs to Mardyp.", 1, "Mardyp would like me to collect some orc fangs for him.", 0, 1270016)
	AddQuestStepCompleteAction(Quest, 2, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have given Mardyp the fangs he asked for.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I collected the orc fangs for Mardyp.")
	GiveQuestReward(Quest, Player)
	UpdateQuestDescription(Quest, "I have gotten the orc fangs for Mardyp. He was pleased.")
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_KilledOrcs(Quest, QuestGiver, Player)
	end
end