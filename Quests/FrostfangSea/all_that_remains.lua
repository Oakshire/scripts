--[[
	Script Name		:	Quests/FrostfangSea/all_that_remains.lua
	Script Purpose	:	for the quest All That Remains
	Script Author	:	theFoof
	Script Date		:	2013.6.5
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:	Battlepriest Herga
	Preceded by		:	Forsaking the Grave
	Followed by		:	None
--]]

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(5,90), math.random(6,15), 0, 0)
	AddQuestStep(Quest, 1, "I must recover Herga's helm from the jetty of ice below the choke.", 1, 100, "I must recover Herga's helm from the jetty of ice below Herga's Choke.", 2736)
	AddQuestStepCompleteAction(Quest, 1, "ClickedHelm")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga056.mp3", "", "", 1633477200, 3542606661, Player)
	AddConversationOption(conversation, "I will recover your helmet.")
	AddConversationOption(conversation, "This is the least I can do for you.")
	StartConversation(conversation, QuestGiver, Player, "I have no kin, as the duties of a Battlepriest precluded the possibility of a quiet life.  I never started a family.  My ancestral helm is all that remains.")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function ClickedHelm(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I located Herga's helm, but was attacked when I attempted to retrieve it!")
	AddQuestStepKill(Quest, 2, "I must kill the frenzied orc that is guarding Herga's helm.", 1, 100, "I must recover Herga's helm from the jetty of ice below Herga's Choke.", 611, 4701122)
	AddQuestStepCompleteAction(Quest, 2, "KilledOrc")
end

function KilledOrc(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have killed the frenzied orc that was guarding Herga's helm.")
	AddQuestStep(Quest, 3, "Now that I have slain the frenzied orc, I must recover Herga's helm from the jetty of ice below the choke.", 1, 100, "I must recover Herga's helm from the jetty of ice below Herga's Choke.", 2736)
	AddQuestStepCompleteAction(Quest, 3, "GotHelmet")
end

function GotHelmet(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have recovered Herga's helm.")
	AddQuestStepChat(Quest, 4, "I must return the helm to Battlepriest Herga.", 1, "I must return the helm to Battlepriest Herga, who can be found on the battlefield at the Great Shelf.", 0, 4700100)
	AddQuestStepCompleteAction(Quest, 4, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		ClickedHelm(Quest, QuestGiver, Player)
	elseif Step == 2 then
		KilledOrc(Quest, QuestGiver, Player)
	elseif Step == 3 then
		GotHelmet(Quest, QuestGiver, Player)
	end
end