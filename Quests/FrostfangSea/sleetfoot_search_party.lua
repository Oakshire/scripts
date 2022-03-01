--[[
	Script Name		:	Quests/FrostfangSea/sleetfoot_search_party.lua
	Script Purpose	:	for the quest "Sleetfoot Search Party"
	Script Author	:	theFoof
	Script Date		:	2013.6.13
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:	Thirin Veliumdelver
	Preceded by		:	A Good Distraction
	Followed by		:	Seeking Elemental Education
--]]

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(5,90), math.random(52,65), 0, 0)
	AddQuestStepLocation(Quest, 1, "I need to search for Ordin Sleetfoot.", 5, "I should return to where I last saw Ordin Sleetfoot and make sure he is okay.", 0, -254.09, -17.42, -37.16)
	AddQuestStepCompleteAction(Quest, 1, "FoundBody")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "thirin_veliumdelver/halas/cragged_spine/thirin_veliumdelver_cave014.mp3", "", "", 2567826241, 991797781, Player)
	AddConversationOption(conversation, "We will.  I will return shortly when I've found him.")
	StartConversation(conversation, QuestGiver, Player, "Thank ye, my friend.  Perhaps we will share an ale together with Ordin once this is all done.")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function FoundBody(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have found Ordin Sleetfoot.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have discovered Ordin Sleetfoot's body, near a large elemental creature made of ice and velium")
	AddQuestStepChat(Quest, 2, "I should speak with Thirin Veliumdelver about Ordin.", 1, "I have discovered Ordin Sleetfoot's body, near what appears to be a creature made of ice and velium. I should return to Thirin Veliumdelver and tell him of Ordin's fate.", 0, 4700112)
	AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end
function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		FoundBody(Quest, QuestGiver, Player)
	end
end