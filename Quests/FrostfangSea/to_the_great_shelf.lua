--[[
	Script Name		:	SpawnScripts/FrostfangSea/to_the_great_shelf.lua
	Script Purpose	:	for the quest "To the Great Shelf!"
	Script Author	:	theFoof
	Script Date		:	2013.5.30
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:	Flibbit Quagmarr
	Preceded by		:	Pelted
	Followed by		:	None
--]]
require"SpawnScripts/FrostfangSea/FlibbitQuagmarr"

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(8,80), math.random(13,25), 0, 0)
	AddQuestStep(Quest, 1, "I must make sure Splorpy is ready to leave.", 1, 100, "I must speak with Splorpy at Gwenevyn's Cove and make sure he is ready to go.", 0)
	AddQuestStepCompleteAction(Quest, 1, "GotSplorpy")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_059.mp3", "", "", 1062705629, 386941071, Player)
	AddConversationOption(conversation, "I'm ready. Is Splorpy ready to go?", "Quest6Chat_6")
	StartConversation(conversation, QuestGiver, Player, "Thank you! I will catch up with you both, soon.  I have heard rumors of a small cavern carved out by some dwarves.  I'll meet you there.")
end

function Deleted(Quest, QuestGiver, Player)
	SetTempVariable(Player, "splorp", nil)
end

function Declined(Quest, QuestGiver, Player)
end

function GotSplorpy(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "Splorpy is ready to leave.")
	UpdateQuestTaskGroupDescription(Quest, 1, "Splorpy and I have begun our journey across the Icemane Plains to the Great Shelf.")
    AddQuestStepChat(Quest, 2, "I must take Splorpy to his father Flibbit Quagmarr. Flibbit is at The Great Shelf.", 1, "I must escort Splorpy to his father Flibbit at The Great Shelf.", 0, 4700045)
	AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		GotSplorpy(Quest, QuestGiver, Player)
	end
end