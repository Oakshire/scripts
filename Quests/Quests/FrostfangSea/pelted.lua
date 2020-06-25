--[[
	Script Name		:	Quests/FrostfangSea/pelted.lua
	Script Purpose	:	for the quest "Pelted"
	Script Author	:	theFoof
	Script Date		:   2013.5.30
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:	Flibbit Quagmarr
	Preceded by		:	Bartering Crystals
	Followed by		:	To The Great Shelf!
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill icemane cubs for their pelts. I can find the cubs in the Icemane Caves south of Gwenevyn's Cove.", 6, 100, "I must kill icemane cubs.", 122, 4700060, 4700481)
	AddQuestStepCompleteAction(Quest, 1, "GotPelts")
	AddQuestRewardCoin(Quest, math.random(5,80), math.random(6,15), 0, 0)
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_052.mp3", "", "", 1207372169, 2214842448, Player)
	AddConversationOption(conversation, "I will return once I have the pelts for you.")
	StartConversation(conversation, QuestGiver, Player, "Thank you, " .. GetName(Player) .. ".  May Mithaniel light your way!")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function GotPelts(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have killed the icemane cubs.")
	AddQuestStepChat(Quest, 2, "I must speak with Flibbit Quagmarr. Flibbit is staying in Gwenevyn's Cove.", 1, "I should return the icemane cub pelts to Flibbit Quagmarr in Gwenevyn's Cove.", 0, 4700045)
	AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		GotPelts(Quest, QuestGiver, Player)
	end
end