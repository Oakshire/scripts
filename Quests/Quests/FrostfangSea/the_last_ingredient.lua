--[[
	Script Name	: Quests/FrostfangSea/the_last_ingredient.lua
	Script Purpose	: the quest The Last Ingredient
	Script Author	: theFoof
	Script Date	: 2013.6.3

        Zone            : Frostfang Sea
        Quest Giver     : Blorpisa Bogchild
        Preceded by     : Perfectly Missing
        Followed by     : None
--]]

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(5,90), math.random(6,15), 0, 0)
	AddQuestStepKill(Quest, 1, "I must harvest an aged ice slurry core.", 1, 50, "I must harvest a core from the aged ice slurries on the hill south of the Great Shelf.", 2944, 4700102)
	AddQuestStepCompleteAction(Quest, 1, "GotCore")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "blorpisa_bogchild/halas/great_shelf/blorpisa_bogchild/blorpisa_bogchild_038.mp3", "", "", 2165797862, 1375729873, Player)
	AddConversationOption(conversation, "I shall return with an aged ice slurry core.")
	StartConversation(conversation, QuestGiver, Player, "The aged ice slurries are in the same place as the others. They gather on the hill south of the Great Shelf.")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function GotCore(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have harvested a core from the aged ice slurries.")
	AddQuestStepChat(Quest, 2, "I must speak with Blorpisa Bogchild at the Great Shelf.", 1, "I must return the aged ice slurry core to Blorpisa Bogchild in the Great Shelf.", 0, 4700039)
	AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 2, "Blorpisa thanked me for harvesting the aged ice slurry core.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		GotCore(Quest, QuestGiver, Player)
	end
end