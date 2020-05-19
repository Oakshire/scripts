--[[
	Script Name	: Quests/FrostfangSea/the_siege_is_not_over.lua
	Script Purpose	: the quest The Siege is Not Over
	Script Author	: theFoof
	Script Date	: 2013.6.5

        Zone            : Frostfang Sea
        Quest Giver     : Battlepriest Herga
        Preceded by     : The Charge
        Followed by     : Forsaking the Grave
--]]

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(5,90), math.random(13,25), 0, 0)
	AddQuestStep(Quest, 1, "I must sabotage the ballistae on Ry'Gorr Isle.", 6, 100, "I must sabotage the ballistae on Ry'Gorr Isle.", 2361)
	AddQuestStepCompleteAction(Quest, 1, "SabotagedBallistae")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga029.mp3", "", "", 3545707783, 4113839123, Player)
	AddConversationOption(conversation, "It shouldn't be a problem.")
	AddConversationOption(conversation, "Brell have mercy on them, because I certainly won't.")
	StartConversation(conversation, QuestGiver, Player, "The orcs are nothing if not tenacious.  They have crafted these devastating devices from driftwood and sea-rusted steel.  ")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function SabotagedBallistae(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have sabotaged the ballistae.")
	AddQuestStepChat(Quest, 2, "I must speak with Battlepriest Herga.", 1, "I must speak with Battlepriest Herga, who can be found on the battlefield at the Great Shelf.", 0, 4700100)
	AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		SabotagedBallistae(Quest, QuestGiver, Player)
	end
end