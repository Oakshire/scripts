--[[
	Script Name		:	Quests/FrostfangSea/rygorr_mining_operations.lua
	Script Purpose	:	for the quest "Ry'Gorr Mining Operations'
	Script Author	:	theFoof
	Script Date		:	2013.6.13
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:	Thirin Veliumdelver
	Preceded by		:	Below The Frozen Waves
	Followed by		:	A Good Distraction
--]]

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(5,90), math.random(27,40), 0, 0)
	AddQuestStep(Quest, 1, "I should look for an exploding barrel and set it in front of the hastily made wall.", 1, 100, "I should look around for a Ry'Gorr Explosive Mining Barrel and use it on the wall I discovered.", 0)
	AddQuestStepCompleteAction(Quest, 1, "DestroyedWall")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "thirin_veliumdelver/halas/cragged_spine/thirin_veliumdelver_cave005.mp3", "", "", 3687695451, 727081902, Player)
	AddConversationOption(conversation, "I won't, Thirin.")
	StartConversation(conversation, QuestGiver, Player, "I'll be expecting a good show, adventurer.  Don't let me down.")
end

function Deleted(Quest, QuestGiver, Player)
	local zone = GetZone(Player)
	if GetZoneID(zone) == 470 then
	    AddSpawnAccess(GetSpawnByLocationID(zone, 441164), Player)
	    AddSpawnAccess(GetSpawnByLocationID(zone, 571511), Player)
	end
end

function Declined(Quest, QuestGiver, Player)
end

function DestroyedWall(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I was able to destroy the wall.")
	AddQuestStepLocation(Quest, 2, "With the wall destroyed I should investigate what is on the other side.", 10, "I should look around for a Ry'Gorr Explosive Mining Barrel and use it on the wall I discovered.", 0, -44.05, -67.39, 141.07)
    AddQuestStepCompleteAction(Quest, 2, "FoundCreatures")
end

function FoundCreatures(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have discovered velium creatures that appear to have slain a number of Ry'Gorr orcs. I should report what I've found to Thirin Veliumdelver.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I was able to destroy the wall and discovered creatures that appear to be made from velium.")
	AddQuestStepChat(Quest, 3, "I should speak with Thirin Veliumdelver of the creatures I've found.", 1, "I should return to Thirin Veliumdelver and tell him of the velium creatures I found beyond the cave-in.", 0, 4700112)
    AddQuestStepCompleteAction(Quest, 3, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		DestroyedWall(Quest, QuestGiver, Player)
	elseif Step == 2 then
		FoundCreatures(Quest, QuestGiver, Player)
	end
end