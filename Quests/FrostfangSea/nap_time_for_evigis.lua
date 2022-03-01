--[[
	Script Name		:	Quests/FrostfangSea/nap_time_for_evigis.lua
	Script Purpose	:	for the quest "Nap Time for Evigis"
	Script Author	:	theFoof
	Script Date		:	2013.6.13
	Script Notes	:	
	
	Zone			:	Frostfang Sea
	Quest Giver		:	Torli Blackbow
	Preceded by		:	Seeking Elemental Education
	Followed by		:   None
--]]

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(5,90), math.random(71,86), math.random(0,1), 0)
	AddQuestStep(Quest, 1, "Reduce Evigis the Ancient's health and then cast Gerla's Elemental Lullaby upon it", 1, 100, "Return to the Velinoid Catacombs to face Evigis the Ancient with Gerla's Elemental Lullaby.", 3774)
	AddQuestStepCompleteAction(Quest, 1, "KilledEvigis")
end

function Accepted(Quest, QuestGiver, Player)
	if not HasItem(Player, 46463) then
		SummonItem(Player, 46463)
	end
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "torli_blackbow/halas/new_halas_guard_house/torli_blackaxe_013.mp3", "", "", 280356547, 1472834780, Player)
	AddConversationOption(conversation, "I will not fail.")
	StartConversation(conversation, QuestGiver, Player, "I never doubted ye for a moment, " .. GetName(Player) .. "!  Take this and go with Brell's blessings upon ye!")
end

function Deleted(Quest, QuestGiver, Player)
	if HasItem(Player, 46463) then
		RemoveItem(Player, 46463)
	end
end

function Declined(Quest, QuestGiver, Player)
end

function KilledEvigis(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "You returned Evigis to his slumber!")
	AddQuestStepChat(Quest, 2, "Return to Torli Blackbow at the White Lodge.", 1, "You should return to Torli Blackbow at the White Lodge, the guard house for New Halas.", 0, 4700137)
	AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	if HasItem(Player, 46463) then
		RemoveItem(Player, 46463)
	end
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		KilledEvigis(Quest, QuestGiver, Player)
	end
end