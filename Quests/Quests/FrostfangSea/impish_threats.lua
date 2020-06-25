--[[
	Script Name		:	Quests/FrostfangSea/impish_threats.lua
	Script Purpose	:	the quest Impish Threats
	Script Author	:	theFoof
	Script Date		:	2013.7.19
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:	Knut Orcbane
	Preceded by		:	None
	Followed by		:	Clan of the Cave Imps
--]]

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(5,90), math.random(12,25), 0, 0)
	AddQuestStepKill(Quest, 1, "Slay the glacial imps that inhabit the cliff north of Cragged Spine.", 8, 100, "The defenders at Cragged Spine are finding it difficult to face the attacking Ry'Gorr orcs while they are being pestered by imps from behind.", 611, 4700066, 4700065, 4701106)
	AddQuestStepCompleteAction(Quest, 1, "KilledImps")
end

function Accepted(Quest, QuestGiver, Spawn)
	FaceTarget(QuestGiver, Spawn)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "knut_orcbane/halas/cragged_spine/knut_orcbane_015.mp3", "", "", 2593056094, 2652573993, Spawn)
	AddConversationOption(conversation, "Will do!")
	StartConversation(conversation, QuestGiver, Spawn, "As I knew you would!  There's no shying away from duty for you.  Report back to me when you have completed this mission, " .. GetName(Spawn) .. ".")
end

function Deleted(Quest, QuestGiver, Spawn)
end

function Declined(Quest, QuestGiver, Spawn)
end

function KilledImps(Quest, QuestGiver, Spawn)
	UpdateQuestTaskGroupDescription(Quest, 1, "The number of glacial imps has been reduced.")
	AddQuestStepChat(Quest, 2, "Return to Knut Orcbane now that the number of glacial imps has been reduced.", 1, "You should return to Knut Orcbane, at Cragged Spine, now that the number of glacial imps has been reduced.", 0, 4700113)
	AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Spawn)
	GiveQuestReward(Quest, Spawn)
end

function Reload(Quest, QuestGiver, Spawn, Step)
	if Step == 1 then
		KilledImps(Quest, QuestGiver, Spawn)
	end
end