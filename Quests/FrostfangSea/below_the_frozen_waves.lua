--[[
	Script Name		:	Quests/FrostfangSea/below_the_frozen_waves.lua
	Script Purpose	:	for the quest Below the Frozen Waves
	Script Author	:	theFoof
	Script Date		:	2013.6.11
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:	Thirin Veliumdelver
	Preceded by		:	Through Thine Eyes
	Followed by		:	
--]]

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(5,90), math.random(12,25), 0, 0)
	AddQuestStepLocation(Quest, 1, "I should travel down to the Ry'Gorr caves and see what's inside.", 15, "Using the knowledge gained through the eyes of a Ry'Gorr orc I am to travel below the waves to the underwater tunnel below Erollis.", 0, -4.45, -66.71, 233.13)
	AddQuestStepCompleteAction(Quest, 1, "FoundCaves")
end

function Accepted(Quest, QuestGiver, Player)
	if not HasItem(Player, 48603) then
		SummonItem(Player, 48603, 1)
	end
	local thirin = GetSpawnByLocationID(GetZone(QuestGiver), 14520)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(thirin, "thirin_veliumdelver/halas/thirin_veliumdelver/thirin_veliumdelver020.mp3", "", "", 3456248509, 1625770921, Player)
	AddConversationOption(conversation, "I'll be safe, Thirin.")
	StartConversation(conversation, thirin, Player, "And if ye want another, just return here, and grab it.  Brell protect ye, now.  You're going to need it!")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function FoundCaves(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "There seems to be a network of caves. I should have a better look around.")
	UpdateQuestTaskGroupDescription(Quest, 1, "It appears the orcs have created a network of tunnels underneath Erollis.")
	AddQuestStepLocation(Quest, 2, "I should examine the suspicious cave-in to the north.", 15, "I have found that the orcs have built a network of caves under Erollis. From where I stand I can see a suspicious looking cave-in to the north. I should check it out.", 0, -9.93, -67.63, 157.29)
	AddQuestStepCompleteAction(Quest, 2, "FoundCaveIn")
end

function FoundCaveIn(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have examined the suspicious cave-in to the north.")
	UpdateQuestTaskGroupDescription(Quest, 2, "Upon examining the cave-in, it appears to have been hastily made, possibly using explosives. This is more evident by the crushed Ry'gorr tunneler found at the cave-in. I should return to Thirin Veliumdelver and inform him on what I've found.")
	AddQuestStepChat(Quest, 3, "I must speak with Thirin Veliumdelver.", 1, "I need to return to Thirin Veliumdelver and inform him of the Ry'Gorrs' network of caves and of the suspicious cave-in.", 0, 4700112)
	AddQuestStepCompleteAction(Quest, 3, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		FoundCaves(Quest, QuestGiver, Player)
	elseif Step == 2 then
		FoundCaveIn(Quest, QuestGiver, Player)
	end
end