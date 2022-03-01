--[[
	Script Name		:	Quests/FrostfangSea/becoming_another_orcbane.lua
	Script Purpose	:	the quest "Becoming Another Orcbane"
	Script Author	:	theFoof
	Script Date		:	2013.7.24
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:	Knut Orcbane
	Preceded by		:	Mystery on the Orc Iceberg
	Followed by		:	Flawless Core Chore
--]]

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(5,90), math.random(12,25), 0, 0)
	AddQuestStep(Quest, 1, "After dealing enough damage to the Ry'Gorr tunnelers, use the cadaver's dram on them to finish the job!", 6, 100, "Knut gave you a potion to help you battle the ranks of Ry'Gorr tunnelers within Demon's Delve.", 328)
	AddQuestStepCompleteAction(Quest, 1, "UsedDram")
end

function Accepted(Quest, QuestGiver, Player)
	SummonItem(Player, 45453, 1)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "knut_orcbane/halas/cragged_spine/knut_orcbane_042.mp3", "", "", 3041202396, 3394706601, Player)
	AddConversationOption(conversation, "Hurt them and then use the cadaver's dram.  Got it!")
	StartConversation(conversation, QuestGiver, Player, "Not so fast!  It can only be used on them after their health has been reduced.  They must be weak in order to be susceptible to the cadaver's dram.")
end

function Deleted(Quest, QuestGiver, Player)
	while HasItem(Player, 45453) do
		RemoveItem(Player, 45453)
	end
end

function Declined(Quest, QuestGiver, Player)
end

function UsedDram(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "You used the cadaver's dram on a great number of Ry'Gorr tunnelers.")
	AddQuestStepChat(Quest, 2, "Return to Knut Orcbane now that you have reduced the number of Ry'Gorr forces within the Demon's Delve tunnels.", 1, "You should return to Knut Orcbane, at Cragged Spine, now that you have reduced the number of Ry'Gorr forces within the Demon's Delve tunnels.", 0, 4700113)
	AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
	while HasItem(Player, 45453) do
		RemoveItem(Player, 45453)
	end
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		UsedDram(Quest, QuestGiver, Player)
	end
end