--[[
	Script Name		:	Quests/FrostfangSea/flawless_core_chore.lua
	Script Purpose	:	the quest "Flawless Core Chore"
	Script Author	:	theFoof
	Script Date		:	2013.7.24
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:	Knut Orcbane
	Preceded by		:	Becoming Another Orcbane
	Followed by		:	Sometimes You Feel Like a Knut
--]]

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(5,90), math.random(27,50), 0, 0)
	AddQuestStepKill(Quest, 1, "Slay velinoid smashers in your effort to obtain their flawless velium cores.", 6, 80, "Slay velinoid smashers in your effort to obtain their flawless velium cores.", 3029, 4700554)
	AddQuestStepCompleteAction(Quest, 1, "GotCrystals")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "knut_orcbane/halas/cragged_spine/knut_orcbane_053.mp3", "", "", 592887905, 3275413012, Player)
	AddConversationOption(conversation, "I understand.")
	StartConversation(conversation, QuestGiver, Player, "It is them, the Velinoid crystal men.  The old magick is in them.  Seize an armful of their flawless velium cores and return to us.")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function GotCrystals(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "You have obtained enough flawless velium cores to suffice.")
	AddQuestStepChat(Quest, 2, "Return to Knut Orcbane with the flawless velium cores you obtained.", 1, "You should return to Knut Orcbane, at Cragged Spine, with the flawless velium cores you obtained.", 0, 4700113)
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