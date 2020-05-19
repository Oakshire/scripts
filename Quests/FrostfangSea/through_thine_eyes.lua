--[[
	Script Name		:	Quests/FrostfangSea/through_thine_eyes.lua
	Script Purpose	:	for the quest Through Thine Eyes
	Script Author	:	theFoof
	Script Date		:	2013.6.10
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:	Thirin Veliumdelver
	Preceded by		:	Roughing Up the Reinforcements
	Followed by		:	Below The Frozen Waves
--]]

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(5,90), math.random(12,24), 0, 0)
	AddQuestStep(Quest, 1, "I need to use the Ry'Gorr Scrying Eye on a " .. '"lazy Ry' .. "'" .. 'Gorr orc."', 1, 100, "I need to travel to the iceberg, east of the Jagged Daggers Isle, and use the Ry'Gorr Scrying Eye on an unsuspecting orc.", 0)
	AddQuestStepCompleteAction(Quest, 1, "UsedEye")
end

function Accepted(Quest, QuestGiver, Player)
	local thirin = GetSpawnByLocationID(GetZone(QuestGiver), 14520)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(thirin, "thirin_veliumdelver/halas/thirin_veliumdelver/thirin_veliumdelver016.mp3", "", "", 2746219212, 3926805260, Player)
	AddConversationOption(conversation, "I'll let you know what I learn.")
	StartConversation(conversation, thirin, Player, "Your value grows, adventurer.  You won't be able to use this in the middle of their camp, but I have heard reports say there are a few Ry'gorr on the iceberg to the east of the Jagged Daggers Isle.  See what you find there, perhaps an opportunity to use the eye will present itself.")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function UsedEye(Quest, QuestGiver, Player) -- add cutscene here when we have the ability
	if HasItem(Player, 11820) then
		RemoveItem(Player, 11820)
	end
	UpdateQuestStepDescription(Quest, 1, "I have used the Ry'Gorr Scrying Eye on " .. '"' .. "a lazy Ry'Gorr orc." .. '"')
	UpdateQuestTaskGroupDescription(Quest, 1, "I was able to use the scrying eye on a lazy Ry'Gorr Orc and see through his eyes.")
	AddQuestStepChat(Quest, 2, "I should speak with Thirin Veliumdelver about the underwater tunnel.", 1, "It appears there is an underwater tunnel that leads underneath Erollis. I should inform Thirin Veliumdelver right away.", 0, 4700112)
	AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		UsedEye(Quest, QuestGiver, Player)
	end
end