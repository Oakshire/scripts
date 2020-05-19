--[[
	Quest Template
	Script Name	: Quests/Caves/studies_in_speciation.lua
	Script Purpose	: Handles the quest, "Studies in Speciation"
	Script Author	: Scatman
	Script Date	: 2009.10.18

        Zone            : The Caves
        Quest Giver     : Kahla Ulno
        Preceded by     : None
        Followed by     : None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need four cave spider bodies.", 4, 100, "I need to collect some samples of the creatures in the Caves for Kahla.", 611, 1970019)
	AddQuestStepKill(Quest, 2, "I need four cave serpent bodies.", 4, 100, "I need to collect some samples of the creatures in the Caves for Kahla.", 611, 1970005)
	AddQuestStepKill(Quest, 3, "I need four cave bat bodies.", 4, 100, "I need to collect some samples of the creatures in the Caves for Kahla.", 611, 1970022, 1970037)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_KilledSpiders")
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_KilledSerpents")
	AddQuestStepCompleteAction(Quest, 3, "Step3_Complete_KilledBats")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Thanks.")
	StartConversation(conversation, QuestGiver, Player, "Good. The machines are likely a couple of levels up from this one. I'm sure I'll hear the explosions from here. I do hope you enjoy yourself, hah hah!")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_KilledSpiders(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the cave spider bodies.")

	if QuestIsComplete(Player, 228) then
		MultipleStepsComplete(Quest, QuestGiver, Player)
	end
end

function Step2_Complete_KilledSerpents(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have collected the cave serpent bodies.")

	if QuestIsComplete(Player, 228) then
		MultipleStepsComplete(Quest, QuestGiver, Player)
	end
end

function Step3_Complete_KilledBats(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have collected the cave bat bodies.")

	if QuestIsComplete(Player, 228) then
		MultipleStepsComplete(Quest, QuestGiver, Player)
	end
end

function MultipleStepsComplete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected the samples for Kahla.")

	AddQuestStepChat(Quest, 4, "I must speak with Kahla.", 1, "I need to bring these samples back to Kahla.", 0, 1970004)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have spoken with Kahla.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have given the samples to Kahla.")
	UpdateQuestDescription(Quest, "I have given Kahla the samples she asked for. She thanked me for my help.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		 Step1_Complete_KilledSpiders(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_KilledSerpents(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3_Complete_KilledBats(Quest, QuestGiver, Player)
	end
end