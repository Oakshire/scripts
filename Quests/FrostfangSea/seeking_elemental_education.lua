--[[
	Script Name		:	Quests/FrostfangSea/seeking_elemental_education.lua
	Script Purpose	:	for the quest "Seeking Elemental Education"
	Script Author	:	theFoof
	Script Date		:	2013.6.13
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:	Thirin Veliumdelver
	Preceded by		:	Sleetfoot Search Party
	Followed by		:	Nap Time for Evigis
--]]

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(5,90), math.random(12,25), 0, 0)
	AddQuestStepChat(Quest, 1, "Speak with Torli Blackbow at the White Lodge, the guard house for New Halas.", 1, "Thirin Veliumdelver has sent you within New Halas to alert others of Evigis the Ancient.", 0, 4700137)
	AddQuestStepCompleteAction(Quest, 1, "TalkedTorli")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "thirin_veliumdelver/halas/cragged_spine/thirin_veliumdelver_cave018.mp3", "", "", 706555413, 2480131387, Player)
	AddConversationOption(conversation, "I will do this, for Ordin.", "ExtraChat")
	AddConversationOption(conversation, "I am sorry, but this is too much right now.")
	StartConversation(conversation, QuestGiver, Player, GetName(Player) .. ".  That is a good name.  My friend, I ask one more favor.  I need you to deliver the news of this creature to Torli Blackbow.  I need to be with my men or I would go myself.  You can find her East of the Cragged Spine, in the White Lodge.  She is an old friend and will know how to handle this creature.")
end

function ExtraChat(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "thirin_veliumdelver/halas/cragged_spine/thirin_veliumdelver_cave019.mp3", "", "", 1580967348, 3299722606, Player)
	AddConversationOption(conversation, "You too, Thirin.  You too.")
	StartConversation(conversation, QuestGiver, Player, "Thank you, my friend.  Brell be with you, always.")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function TalkedTorli(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "You spoke with Torli Blackbow.")
	AddQuestStepChat(Quest, 2, "Speak with Gerla Meltwater at Glacierbane's Vault, in New Halas.", 1, "Thirin Veliumdelver has sent you within New Halas to alert others of Evigis the Ancient.", 0, 4700183)
	AddQuestStepCompleteAction(Quest, 2, "TalkedGerla")
end

function TalkedGerla(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "You spoke with Torli Blackbow.")
	UpdateQuestTaskGroupDescription(Quest, 1, "Gerla Meltwater knew quite a bit about Evigis the Ancient!")
	AddQuestStepChat(Quest, 3, "Deliver Gerla's satchel to Torli Blackbow.", 1, "You should return to Torli Blackbow at the White Lodge, the guard house for New Halas.", 0, 4700137)
	AddQuestStepCompleteAction(Quest, 3, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		TalkedTorli(Quest, QuestGiver, Player)
	elseif Step == 2 then
		TalkedGerla(Quest, QuestGiver, Player)
	end
end