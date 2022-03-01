--[[
	Script Name	: Quests/FrostfangSea/an_unbearable_problem.lua
	Script Purpose	: the quest An Unbearable Problem
	Script Author	: theFoof
	Script Date	: 2013.5.21

        Zone            : Frostfang Sea
        Quest Giver     : Flibbit Quaqmarr
        Preceded by     : None
        Followed by     : Little Lost Froglok
--]]

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_023.mp3", "", "", 537970765, 1600868781, Player)
	AddConversationOption(conversation, "Goodbye, Flibbit.")
	StartConversation(conversation, QuestGiver, Player, "I shall watch for your return.")
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function Init(Quest)
    AddQuestRewardCoin(Quest, math.random(10,80), math.random(2,5), 0, 0)
    AddQuestStepKill(Quest, 1, "I must kill blizzard grizzlies.", 6, 100, "I must go south from Gwenevyn's Cove and kill blizzard grizzlies.", 611, 4700043, 4700048, 4700047, 4700052, 4701098, 4700050)
	AddQuestStepCompleteAction(Quest, 1, "KilledBears")
end

function KilledBears(Quest, QuestGiver, Player)
    RemoveSpawnAccess(GetSpawnByLocationID(GetZone(Player), 5217), Player)
    UpdateQuestTaskGroupDescription(Quest, 1, "I have killed blizzard grizzlies south of Gwenevyn's Cove.")
	AddQuestStepChat(Quest, 2, "I must speak with Flibbit Quagmarr. Flibbit is staying in Gwenevyn's Cove.", 1, "I must return to Flibbit Quagmarr in Gwenevyn's Cove and inform him that I have killed the blizzard grizzlies.", 0, 4700045)
    AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
    GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
    if Step == 1 then
	    KilledBears(Quest, QuestGiver, Player)
	elseif Step == 2 then
	    CompleteQuest(Quest, QuestGiver, Player)
	end
end