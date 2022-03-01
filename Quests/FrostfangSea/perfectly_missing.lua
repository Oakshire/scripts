--[[
	Script Name	: Quests/FrostfangSea/perfectly_missing.lua
	Script Purpose	: the quest Perfectly Missing
	Script Author	: theFoof
	Script Date	: 2013.6.3

        Zone            : Frostfang Sea
        Quest Giver     : Blorpisa Bogchild
        Preceded by     : Disarming the Ry'Gorr
        Followed by     : The Last Ingredient
--]]

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(5,90), math.random(13,25), 0, 0)
	AddQuestStepKill(Quest, 1, "I must harvest the perfect ice slurry core.", 1, 50, "I must harvest a perfect ice slurry core from the ice slurries on the hill south of the Great Shelf.", 1174, 4700101)
	AddQuestStepCompleteAction(Quest, 1, "GotCore")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "blorpisa_bogchild/halas/great_shelf/blorpisa_bogchild/blorpisa_bogchild_030.mp3", "", "", 1741611934, 1901038615, Player)
	AddConversationOption(conversation, "I shall return as soon as I find the perfect core.")
	StartConversation(conversation, QuestGiver, Player, "You can find the ice slurries on the hill south of the Great Shelf. Please hurry. The sooner you return with the core, the sooner I can perfect the spell to protect the pilgrims.")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function GotCore(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have harvested a perfect ice slurry core from the ice slurries.")
	AddQuestStepChat(Quest, 2, "I must speak with Blorpisa Bogchild. Blorpisa is staying at the Great Shelf.", 1, "I must return the perfect ice slurry core to Blorpisa Bogchild in the Great Shelf.", 0, 4700039)
	AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 2, "Blorpisa thanked me for harvesting the perfect ice slurry core.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		GotCore(Quest, QuestGiver, Player)
	end
end