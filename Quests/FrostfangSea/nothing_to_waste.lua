--[[
	Script Name		:	Quests/FrostfangSea/nothing_to_waste.lua
	Script Purpose	:	for the quest Nothing to Waste
	Script Author	:	theFoof
	Script Date		:	2013.6.10
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:	Thirin Veliumdelver
	Preceded by		:	None
	Followed by		:	Roughing Up The Reinforcements
--]]

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(5,90), math.random(13,25), 0, 0)
	AddQuestStepObtainItem(Quest, 1, "I must collect some Ry'Gorr Invader helmets.", 3, 100, "I must collect Ry'Gorr helmets, chestguards, and warhammers from the Ry'Gorr Invaders.", 1541, 11818)
	AddQuestStepObtainItem(Quest, 2, "I must collect some Ry'Gorr Invader chestguards.", 3, 100, "I must collect Ry'Gorr helmets, chestguards, and warhammers from the Ry'Gorr Invaders.", 1537, 11817)
	AddQuestStepObtainItem(Quest, 3, "I must collect some Ry'Gorr Invader warhammers.", 3, 100, "I must collect Ry'Gorr helmets, chestguards, and warhammers from the Ry'Gorr Invaders.", 1658, 11824)
	AddQuestStepCompleteAction(Quest, 1, "GotHelmets")
	AddQuestStepCompleteAction(Quest, 2, "GotChestguards")
	AddQuestStepCompleteAction(Quest, 3, "GotHammers")
end

function Accepted(Quest, QuestGiver, Player)
	local thirin = GetSpawnByLocationID(GetZone(Player), 14520)
	FaceTarget(thirin, Player)
	local conversation = CreateConversation()

	PlayFlavor(thirin, "thirin_veliumdelver/halas/thirin_veliumdelver/thirin_veliumdelver007.mp3", "", "", 3327550252, 85419352, Player)
	AddConversationOption(conversation, "Did you say useless?")
	StartConversation(conversation, thirin, Player, "Good.  The orcs are attacking from the south beach, so seek them out there.  Do some good around here and I may think of you as more than useless.")
end

function Deleted(Quest, QuestGiver, Player)
	while HasItem(Player, 11818) do
		RemoveItem(Player, 11818)
	end
	while HasItem(Player, 11817) do
		RemoveItem(Player, 11817)
	end
	while HasItem(Player, 11824) do
		RemoveItem(Player, 11824)
	end
end

function Declined(Quest, QuestGiver, Player)
end

function GotHelmets(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected some Ry'Gorr Invader helmets.")
	CheckProgress(Quest, QuestGiver, Player)
end

function GotChestguards(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have collected some Ry'Gorr Invader chestguards.")
	CheckProgress(Quest, QuestGiver, Player)
end

function GotHammers(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have collected some Ry'Gorr Invader warhammers.")
	CheckProgress(Quest, QuestGiver, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
	if QuestStepIsComplete(Player, 56, 1) and QuestStepIsComplete(Player, 56, 2) and QuestStepIsComplete(Player, 56, 3) then
		AddStep4(Quest, QuestGiver, Player)
	end
end

function AddStep4(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected Ry'Gorr helmets, chestguards, and warhammers from the Ry'Gorr Invaders.")
	AddQuestStepChat(Quest, 4, "I must speak with Thirin Veliumdelver.", 1, "With the items collected, I should return them to Thirin Veliumdelver at the Cragged Spine.", 0, 4700112)
	AddQuestStepCompleteAction(Quest, 4, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	while HasItem(Player, 11818) do
		RemoveItem(Player, 11818)
	end
	while HasItem(Player, 11817) do
		RemoveItem(Player, 11817)
	end
	while HasItem(Player, 11824) do
		RemoveItem(Player, 11824)
	end
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if QuestStepIsComplete(Player, 56, 1) then
		GotHelmets(Quest, QuestGiver, Player)
	end
	if QuestStepIsComplete(Player, 56, 2) then
		GotChestguards(Quest, QuestGiver, Player)
	end
	if QuestStepIsComplete(Player, 56, 3) then
		GotHammers(Quest, QuestGiver, Player)
	end
end