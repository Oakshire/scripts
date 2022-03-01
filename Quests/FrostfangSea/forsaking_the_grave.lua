--[[
	Script Name	: Quests/FrostfangSea/forsaking_the_grave.lua
	Script Purpose	: the quest Forsaking the Grave
	Script Author	: theFoof
	Script Date	: 2013.6.5

        Zone            : Frostfang Sea
        Quest Giver     : Battlepriest Herga
        Preceded by     : The Siege is Not Over
        Followed by     : All That Remains
--]]

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(5,90), math.random(6,15), 0, 0)
	AddQuestStepKill(Quest, 1, "I must kill several reanimated Ry'Gorr skeletons on the Forbidden Ossuary of Ice.", 8, 100, "I must kill several reanimated Ry'Gorr skeletons on the Forbidden Ossuary of Ice.", 611, 4700878)
	AddQuestStepCompleteAction(Quest, 1, "KilledOrcs")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga044.mp3", "", "", 2826724628, 2053031770, Player)
	AddConversationOption(conversation, "The abominations will be eliminated.")
	AddConversationOption(conversation, "I know exactly where to find them.")
	StartConversation(conversation, QuestGiver, Player, "Seek out the skeletons on the isle known as the Forbidden Ossuary of Ice.  The Ossuary floats off the coast, to the southwest of Erollis.")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function KilledOrcs(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have killed several reanimated Ry'Gorr skeletons.")
	AddQuestStepChat(Quest, 2, "I must speak with Battlepriest Herga.", 1, "I must speak with Battlepriest Herga, who can be found on the battlefield at the Great Shelf.", 0, 4700100)
	AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end
function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		KilledOrcs(Quest, QuestGiver, Player)
	end
end