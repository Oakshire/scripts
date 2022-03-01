--[[
	Script Name		:	Quests/FrostfangSea/mystery_on_the_orc_iceberg.lua
	Script Purpose	:	the quest Mystery on the Orc Iceberg
	Script Author	:	theFoof
	Script Date		:	2013.7.23
	Script Notes	:	

	Zone			:	Frostfang Sea
	 QuestGiver		:	Knut Orcbane
	Preceded by		: 	Clan of the Cave Imps
	Followed by		:	Becoming Another Orcbane
--]]

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(5,90), math.random(12,25), 0, 0)
	AddQuestStep(Quest, 1, "Obtain any clues as to what the Ry'Gorr orcs are scheming on the small iceberg.", 4, 100, "Investigate what the Ry'Gorr orcs are doing on the small iceberg south of Jagged Daggers Isle.", 1668)
	AddQuestStepKill(Quest, 2, "Dispose of any Ry'Gorr orcs you happen to find on the iceberg.", 3, 100, "Investigate what the Ry'Gorr orcs are doing on the small iceberg south of Jagged Daggers Isle.", 611, 4700120, 4700543, 4700538, 4700119, 4700121, 4700542)
	AddQuestStepCompleteAction(Quest, 1, "FoundClues")
	AddQuestStepCompleteAction(Quest, 2, "KilledOrcs")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "knut_orcbane/halas/cragged_spine/knut_orcbane_033.mp3", "", "", 4051446009, 1752564808, Player)
	AddConversationOption(conversation, "Gladly!")
	StartConversation(conversation, QuestGiver, Player, "I knew my confidence was not misplaced in you!  Go over to the iceberg and see what you can find out.  Kill any Ry'Gorr you encounter, but more importantly, see what items you can find that may tell us what they are up to.")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function FoundClues(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "You found Ry'Gorr pickaxes stashed on the small iceberg.")
	CheckProgress(Quest, QuestGiver, Player)
end

function KilledOrcs(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "You've slain enough orcs.")
	CheckProgress(Quest, QuestGiver, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
	if QuestStepIsComplete(Player, 80, 1) and QuestStepIsComplete(Player, 80, 2) then
		AddStep3(Quest, QuestGiver, Player)
	end
end

function AddStep3(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "You found Ry'Gorr pickaxes stashed on the small iceberg and dealt with several orcs, along the way.")
	AddQuestStepChat(Quest, 3, "Return to Knut Orcbane and tell him of the Ry'Gorr pickaxes stashed on the small iceberg.", 1, "You should return to Knut Orcbane, at Cragged Spine, and tell him of the Ry'Gorr pickaxes stashed on the small iceberg.", 0, 4700113)
	AddQuestStepCompleteAction(Quest, 3, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if QuestStepIsComplete(Player, 80, 1) then
		FoundClues(Quest, QuestGiver, Player)
	end
	if QuestStepIsComplete(Player, 80, 2) then
		KilledOrcs(Quest, QuestGiver, Player)
	end
end