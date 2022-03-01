--[[
	Script Name		:	Quests/FrostfangSea/a_good_distraction.lua
	Script Purpose	:	for the quest "A Good Distraction"
	Script Author	:	theFoof
	Script Date		:	2013.6.13
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:	Thirin Veliumdelver
	Preceded by		:	Ry'Gorr Mining Operation
	Followed by		:	Sleetfoot Search Party
--]]

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(5,90), math.random(24,40), 0, 0)
	AddQuestStepChat(Quest, 1, "I should speak with Ordin Sleetfoot and begin our journey.", 1, "Thirin Veliumdelver wants me to speak with Ordin Sleetfoot when I am ready to venture into the Velinoid Catacombs.", 0, 4700965)
	AddQuestStepCompleteAction(Quest, 1, "TalkedOrdin")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "thirin_veliumdelver/halas/cragged_spine/thirin_veliumdelver_cave010.mp3", "", "", 2867242801, 3355205024, Player)
	AddConversationOption(conversation, "I will.")
	StartConversation(conversation, QuestGiver, Player, "I am learning that with each passing hour.  Be safe, my friend.")
end

function Deleted(Quest, QuestGiver, Player)
	local zone = GetZone(Player)
	if GetZoneID == 470 then
		AddSpawnAccess(GetSpawnByLocationID(zone, 32643), Player)
	end
end

function Declined(Quest, QuestGiver, Player)
end

function TalkedOrdin(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have spoken with Ordin, who has vanished into the shadows.")
	AddQuestStep(Quest, 2, "I should travel deeper into the Velinoid Catacombs and seek out Ordin.", 1, 100, "I should travel into the Velinoid Catacombs and act as a distraction so none of the Velinoids discover Ordin. He says I will eventually find him as I travel through the cavern.", 0)
	AddQuestStepCompleteAction(Quest, 2, "KilledVelinoids")
end

function KilledVelinoids(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "Ordin was attacked by Velinoids but I was able to fend them off.")
	AddQuestStepChat(Quest, 3, "I should make sure that Ordin is okay before continuing on.", 1, "I should travel into the Velinoid Catacombs and act as a distraction so none of the Velinoids discover Ordin. He says I will eventually find him as I travel through the cavern.", 0, 4700965)
	AddQuestStepCompleteAction(Quest, 3, "FoundOrdin")
end

function FoundOrdin(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "Ordin is fine and has returned to the shadows.")
	UpdateQuestTaskGroupDescription(Quest, 2, "Ordin has returned to the shadows and wants to continue exploring the catacombs. I imagine I'll find him again further in.")
	AddQuestStep(Quest, 4, "I should travel deeper into the Velinoid Catacombs and seek out Ordin.", 1, 100, "I should travel further into the Velinoid Catacombs, continuing to act as a distraction for Ordin. As before I will find him as I travel futher into the catacombs.", 0)
	AddQuestStepCompleteAction(Quest, 4, "KilledAmbush")
end

function KilledAmbush(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "Ordin was attacked by Velinoids but I was able to fend them off.")
	AddQuestStepChat(Quest, 5, "I should make sure that Ordin is okay before continuing on.", 1, "I should travel further into the Velinoid Catacombs, continuing to act as a distraction for Ordin. As before I will find him as I travel futher into the catacombs.", 0, 4700965)
	AddQuestStepCompleteAction(Quest, 5, "FoundOrdin2")
end

function FoundOrdin2(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "Ordin is fine and has instructed me to return to Thirin Veliumdelver.")
	UpdateQuestTaskGroupDescription(Quest, 3, "While Ordin is checking out one last section of the catacombs, he has instructed me to return to Thirin Veliumdelver at the cavern's entrance.")
	AddQuestStepChat(Quest, 6, "I should speak with Thirin Veliumdelver.", 1, "I should return to Thirin Veliumdelver, as Ordin instructed, and tell him the layout of the catacombs. Ordin should be waiting for me there if he's as good a scout as claimed.", 0, 4700112)
	AddQuestStepCompleteAction(Quest, 6, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		TalkedOrdin(Quest, QuestGiver, Player)
	elseif Step == 2 then
		KilledVelinoids(Quest, QuestGiver, Player)
	elseif Step == 3 then
		FoundOrdin(Quest, QuestGiver, Player)
	elseif Step == 4 then
		KilledAmbush(Quest, QuestGiver, Player)
	elseif Step == 5 then
		FoundOrdin2(Quest, QuestGiver, Player)
	end
end