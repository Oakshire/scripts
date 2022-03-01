--[[
	Script Name		:	Quests/FrostfangSea/trust_issues.lua
	Script Purpose	:	the quest "Trust Issues"
	Script Author	:	theFoof
	Script Date		:	2013.8.19
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:	Brogan MacLellan
	Preceded by		:	None
	Followed by		:	Trusted Referral
--]]

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(1,99), math.random(10,30), 1, 0)
	AddQuestStepChat(Quest, 1, "I must speak with Blibba Nugrud.", 1, "Brogan asked me to find Pretchon Ironstein, Sister Aalarya, Dandi McCarren, and Blibba Nugrud in New Halas. I should speak to them about their reasons for coming to, and staying in, New Halas.", 0, 4700148)
	AddQuestStepChat(Quest, 2, "I must speak with Dandi McCarren", 1, "Brogan asked me to find Pretchon Ironstein, Sister Aalarya, Dandi McCarren, and Blibba Nugrud in New Halas. I should speak to them about their reasons for coming to, and staying in, New Halas.", 0, 4700252)
	AddQuestStepChat(Quest, 3, "I must speak with Sister Aalarya.", 1, "Brogan asked me to find Pretchon Ironstein, Sister Aalarya, Dandi McCarren, and Blibba Nugrud in New Halas. I should speak to them about their reasons for coming to, and staying in, New Halas.", 0, 4700284)
	AddQuestStepChat(Quest, 4, "I must speak with Pretchon Ironstein.", 1, "Brogan asked me to find Pretchon Ironstein, Sister Aalarya, Dandi McCarren, and Blibba Nugrud in New Halas. I should speak to them about their reasons for coming to, and staying in, New Halas.", 0, 4700271)
	AddQuestStepCompleteAction(Quest, 1, "TalkedBlibba")
	AddQuestStepCompleteAction(Quest, 2, "TalkedDandi")
	AddQuestStepCompleteAction(Quest, 3, "TalkedSister")
	AddQuestStepCompleteAction(Quest, 4, "TalkedPretchon")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "brogan_maclellan/halas/new_halas_guard_house/brogan_maclellan010.mp3", "", "", 1533537529, 2198675230, Player)
	AddConversationOption(conversation, "I'll be back.")
	StartConversation(conversation, QuestGiver, Player, "Head into town and look for Pretchon Ironstein, Sister Aalarya, Dandi McCarren, and Blibba Nugrud.  Find out what they're doing here, and why they don't leave for greener pastures.")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function TalkedBlibba(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Blibba Nugrud.")
	CheckProgress(Quest, QuestGiver, Player)
end

function TalkedDandi(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have spoken with Dandi McCarren.")
	CheckProgress(Quest, QuestGiver, Player)
end

function TalkedSister(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have spoken with Sister Aalarya.")
	CheckProgress(Quest, QuestGiver, Player)
end

function TalkedPretchon(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have spoken with Pretchon Ironstein.")
	CheckProgress(Quest, QuestGiver, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
	if QuestStepIsComplete(Player, 85, 1) and QuestStepIsComplete(Player, 85, 2) and QuestStepIsComplete(Player, 85, 3) and QuestStepIsComplete(Player, 85, 4) then
		AddStep5(Quest, QuestGiver, Player)
	end
end

function AddStep5(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I spoke to Pretchon Ironstein, Sister Aalarya, Dandi McCarren, and Blibba Nugrud about their reasons for coming to, and staying in, New Halas.")
	AddQuestStepChat(Quest, 5, "I must speak to Brogan MacLellan.", 1, "I must return to Brogan MacLellan at the New Halas Guard House just outside of town and inform him of my findings.", 0, 4700126)
	AddQuestStepCompleteAction(Quest, 5, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if QuestStepIsComplete(Player, 85, 1) then
		TalkedBlibba(Quest, QuestGiver, Player)
	end
	if QuestStepIsComplete(Player, 85, 2) then
		TalkedDandi(Quest, QuestGiver, Player)
	end
	if QuestStepIsComplete(Player, 85, 3) then
		TalkedSister(Quest, QuestGiver, Player)
	end
	if QuestStepIsComplete(Player, 85, 4) then
		TalkedPretchon(Quest, QuestGiver, Player)
	end
end