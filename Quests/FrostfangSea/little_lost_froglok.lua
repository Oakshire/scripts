--[[
	Script Name	: Quests/FrostfangSea/an_unbearable_problem.lua
	Script Purpose	: the quest An Unbearable Problem
	Script Author	: theFoof
	Script Date	: 2013.5.21

        Zone            : Frostfang Sea
        Quest Giver     : Flibbit Quaqmarr
        Preceded by     : An Unbearable Problem
        Followed by     : 
--]]

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_029.mp3", "", "", 1372379832, 3108068275, Player)
	AddConversationOption(conversation, "I will return once I have news for you.")
	StartConversation(conversation, QuestGiver, Player, "Thank you, " .. GetName(Player) .. "! Please hurry!")
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
    if GetTempVariable(Player, "splorp") ~= nil then
	    Despawn(GetTempVariable(Player, "splorp"))
		SetTempVariable(Player, "splorp", nil)
	end
end

function Init(Quest)
    AddQuestRewardCoin(Quest, math.random(10,80), math.random(2,5), 0, 0)
    AddQuestStepChat(Quest, 1, "I must speak with Sigbrith MacInnes. Sigbrith MacInnes is the mender for Gwenevyn's Cove.", 1, "I must ask Sigbrith MacInnes if she has seen Splorpy.", 0, 4700046)
	AddQuestStepCompleteAction(Quest, 1, "TalkedSibrith")
end

function TalkedSibrith(Quest, QuestGiver, Player)
    UpdateQuestTaskGroupDescription(Quest, 1, "Sigbrith MacInnes informed me that I should search for Splorpy southwest of Gwenevyn's Cove.")
	AddQuestStepChat(Quest, 2, "I must find Splorpy Quagmarr.", 1, "I should search for Splorpy. He was last seen southwest of Gwenevyn's Cove, past the blizzard grizzlies.", 0, 4700044)
	AddQuestStepCompleteAction(Quest, 2, "FoundSplorpy")
end

function FoundSplorpy(Quest, QuestGiver, Player)
    UpdateQuestTaskGroupDescription(Quest, 2, "I have found Splorpy and should return him to his father in Gwenevyn's Cove.")
    AddQuestStepChat(Quest, 3, "I must speak with Flibbit Quagmarr. Flibbit is staying in Gwenevyn's Cove.", 1, "I must return Splorpy to his father Flibbit Quagmarr in Gwenevyn's Cove.", 0, 4700045)
	AddQuestStepCompleteAction(Quest, 3, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
    GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
    if Step == 1 then
	    TalkedSibrith(Quest, QuestGiver, Player)
	elseif Step == 2 then
	    FoundSplorpy(Quest, QuestGiver, Player)
    elseif Step == 3 then
	    FoundSplorpy(Quest, QuestGiver, Player)
	end
end