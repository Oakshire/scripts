--[[
	Script Name		:	Quests/FrostfangSea/bartering_crstals.lua
	Script Purpose	:	for the quest "Bartering Crystals"
	Script Author	:	theFoof
	Script Date		:	2013.5.30
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:	Flibbit Quagmarr
	Preceded by		:	The Absent Effigy
	Followed by		:	Pelted
--]]

function Init(Quest)
	AddQuestStep(Quest, 1, "I must collect strange ice crystals from upon the Icemane Plains.", 5, 100, "I should head out to the Icemane Plains and collect any strange ice crystals I may find.", 2938)
	AddQuestStepCompleteAction(Quest, 1, "GotCrystals")
	AddQuestRewardCoin(Quest, math.random(9,80), math.random(13,25), 0, 0)
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_044.mp3", "", "", 86681713, 2082517769, Player)
	AddConversationOption(conversation, "I shall return with the crystals.")
	StartConversation(conversation, QuestGiver, Player, "Thank you, " .. GetName(Player) .. ".")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function GotCrystals(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected the strange ice crystals.")
	AddQuestStepChat(Quest, 2, "I must speak with Flibbit Quagmarr. Flibbit is staying in Gwenevyn's Cove.", 1, "I must speak with Flibbit Quagmarr. Flibbit is staying in Gwenevyn's Cove.", 0, 4700045)
    AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		GotCrystals(Quest, QuestGiver, Player)
	end
end