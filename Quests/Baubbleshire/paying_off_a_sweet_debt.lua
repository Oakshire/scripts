--[[
	Script Name	: Quests/Baubbleshire/paying_off_a_sweet_debt.lua
	Script Purpose	: Handles the quest, "Paying Off a Sweet Debt"
	Script Author	: Scatman
	Script Date	: 2009.09.27
	
	Zone       : The Baubbleshire
	Quest Giver: Rondo "The Belly" Roundstew
	Preceded by: Helping Some 'Friends' (helping_some_friends.lua)
	Followed by: A Budding Prankster (a_budding_prankster.lua)
--]]


function Init(Quest)
	AddQuestStep(Quest, 1, "I need to collect some honey from the trees around the Baubbleshire.", 10, 100, "Rondo has asked that I collect some honey from the trees around the Baubbleshire.", 405)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_gotHoney")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I'll return with the honey.")
	StartConversation(conversation, QuestGiver, Player, "Ugh, all of them, I imagine. Bees is one thing Baubbleshire certainly has enough of. Just look for the hives.")
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function step1_complete_gotHoney(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the needed honey.")
	
	AddQuestStepChat(Quest, 2, "Now that I have collected this honey, I should return to Rondo.", 1, "Rondo has asked that I collect some honey from the trees around the Baubbleshire.", 0, 2380039)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end


function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have given the honey to Rondo.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected the honey for Rondo.")
	UpdateQuestDescription(Quest, "I have collected the honey for Rondo. He was very impressed with the amount I collected.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_gotHoney(Quest, QuestGiver, Player)
	end
end