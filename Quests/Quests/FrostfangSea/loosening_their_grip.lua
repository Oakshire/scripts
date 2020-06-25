--[[
	Script Name	: Quests/FrostfangSea/loosening_their_grip.lua
	Script Purpose	: the quest Loosening Their Grip
	Script Author	: theFoof
	Script Date	: 2013.6.4

        Zone            : Frostfang Sea
        Quest Giver     : Battlepriest Herga
        Preceded by     : None
        Followed by     : The Charge
--]]

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(5,90), math.random(13,25), 0, 0)
	AddQuestStep(Quest, 1, "I must cut the lines of the spears.", 5, 100, "I must cut the lines of the spears thrust into the two ice jetties below Herga's Choke and Pride Overlook.", 287)
	AddQuestStepCompleteAction(Quest, 1, "CutLines")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga010.mp3", "", "", 1073162923, 3013834754, Player)
	AddConversationOption(conversation, "I will return.")
	AddConversationOption(conversation, "I'll take care of them.  Someone has to.")
	StartConversation(conversation, QuestGiver, Player, "Remove the claws of the Ry'Gorr, " .. GetName(Player) .. ".  Loosen their grip upon our land.")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function CutLines(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I must speak with Battlepriest Herga, who can be found on the battlefield at the Great Shelf.")
	AddQuestStepChat(Quest, 2, "I must speak with Battlepriest Herga.", 1, "I must speak with Battlepriest Herga, who can be found on the battlefield at the Great Shelf.", 0, 4700100)
	AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		CutLines(Quest, QuestGiver, Player)
	end
end