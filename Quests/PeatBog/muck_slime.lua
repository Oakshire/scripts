--[[
	Script Name	: Quests/PeatBog/muck_slime.lua
	Script Purpose	: Handles the quest, "Muck Slim"
	Script Author	: Scatman
	Script Date	: 2009.05.10
	
	Zone       : The Peat Bog
	Quest Giver: Ferius Mentus
	Preceded by: None
	Followed by: None
--]]


function Init(Quest)


	AddQuestStepKill(Quest, 1, "I need to collect some muck toad sludge.", 10, 100, "Ferius would like me to collect some muck toad sludge.", 343, 1980007)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_KilledFrogs")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "All right.")
	StartConversation(conversation, QuestGiver, Player, "I should hope so; it isn't hard work. Come back quick!")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_KilledFrogs(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected some muck toad sludge.")

	AddQuestStepChat(Quest, 2, "I need to return to Ferius.", 1, "Ferius would like me to collect some muck toad sludge.", 355, 1980023) 
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have given Ferius his frogs. He was very pleased.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_KilledFrogs(Quest, QuestGiver, Player)
	end
end
