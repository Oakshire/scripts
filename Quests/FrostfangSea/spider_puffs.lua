--[[
	Script Name		:	Quests/FrostfangSea/spider_puffs.lua
	Script Purpose	:	the quest "Spider Puffs"
	Script Author	:	theFoof
	Script Date		:	2013.8.27
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:	Ribbit Hopson
	Preceded by		:	None
	Followed by		:	None
--]]

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(1,99), math.random(52,99), 0, 0)
	AddQuestStep(Quest, 1, "I must collect dame's rockets for Ribbit's puffs.", 2, 100, "I must collect dame's rockets for Ribbit. I can find the dame's rockets in Ribbit's garden, outside of his house in New Halas.", 1976)
	AddQuestStepCompleteAction(Quest, 1, "CollectedRockets")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "ribbit_hopson/halas/new_halas/ribbit_hopson/ribbit_hopson_007.mp3", "", "", 1643468307, 2055311986, Player)
	AddConversationOption(conversation, "I shall return to you once I have collected all of the ingredients you require.")
	StartConversation(conversation, QuestGiver, Player, "Wonderful! If you do not mind, could you pick some of my dame's rocket as well? It's just right outside my door in my little garden. The local spiders are called woolly silkspinners and they are in the cave leading to the Erollis Dock.")
	ShowDamesRockets(QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function CollectedRockets(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected the dame's rockets for Ribbit.")
	AddQuestStepKill(Quest, 2, "I must kill woolly silkspinners for Ribbit's puffs.", 4, 100, "I must kill woolly silkspinners for Ribbit. The silkspinners are in the cave leading to the Erollis Dock.", 1878, 4700164)
	AddQuestStepCompleteAction(Quest, 2, "KilledSpiders")
end

function KilledSpiders(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 2, "I have killed and collected the woolly silkspinner meat for Ribbit.")
	AddQuestStepChat(Quest, 3, "I must speak with Ribbit Hopson at his New Halas home.", 1, "I must return the dame's rockets and spider meat to Ribbit Hopson. Ribbit is in his house near the entrance to New Halas.", 0, 4700151)
	AddQuestStepCompleteAction(Quest, 3, "TalkedRibbit")
end

function TalkedRibbit(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 3, "I have given the ingredients to Ribbit.")
	AddQuestStep(Quest, 4, "I must try some of Ribbit's spider puffs.", 1, 100, "Ribbit has taken the ingredients I collected and prepared his recipe for spider puffs.", 296)
	AddQuestStepCompleteAction(Quest, 4, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function ShowDamesRockets(QuestGiver, Player)
	local zone = GetZone(QuestGiver)
	AddSpawnAccess(GetSpawnByLocationID(zone, 442806), Player)
	AddSpawnAccess(GetSpawnByLocationID(zone, 442807), Player)
	AddSpawnAccess(GetSpawnByLocationID(zone, 442808), Player)
	AddSpawnAccess(GetSpawnByLocationID(zone, 442809), Player)
	AddSpawnAccess(GetSpawnByLocationID(zone, 442810), Player)
	AddSpawnAccess(GetSpawnByLocationID(zone, 442811), Player)
	AddSpawnAccess(GetSpawnByLocationID(zone, 442812), Player)
	AddSpawnAccess(GetSpawnByLocationID(zone, 442813), Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		CollectedRockets(Quest, QuestGiver, Player)
	elseif Step == 2 then
		KilledSpiders(Quest, QuestGiver, Player)
	elseif Step == 3 then
		TalkedRibbit(Quest, QuestGiver, Player)
	end
end