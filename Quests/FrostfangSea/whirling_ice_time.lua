--[[
	Script Name		:	Quests/FrostfangSea/whirling_ice_time.lua
	Script Purpose	:	for the quest Whirling Ice Time
	Script Author	:	theFoof
	Script Date		:	2013.6.16
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:	Odon Scourgeson
	Preceded by		:	None
	Followed by		:	Highly Flammable Materials
--]]

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(5,90), math.random(12,25), 0, 0)
	AddQuestStep(Quest, 1, "Apply the Draught of Whirling Ice to the green sparkling arrows that have been shot upon the Cragged Spine beachfront.", 6, 100, "Odon gave you a Draught of Whirling Ice, which he claims will create whirling eddies of fog and ice on the beachfront, causing confusion amongst the Ry'Gorr.", 2511)
	AddQuestStepCompleteAction(Quest, 1, "UsedDraught")
end

function Accepted(Quest, QuestGiver, Player)
	if not HasItem(Player, 6556) then
		SummonItem(Player, 6556)
	end
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "odon_scourgeson/halas/cragged_spine/odon_scourgeson_011.mp3", "", "", 57352685, 126930630, Player)
	AddConversationOption(conversation, "I will, Odon.")
	StartConversation(conversation, QuestGiver, Player, "Here is the Draught of Whirling Ice I spoke of.  Use it at the locations marked by a glowing green arrow shaft.")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function UsedDraught(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "	The icy whirlstorms conjured by the Draught of Whirling Ice worked wonders!")
	UpdateQuestTaskGroupDescription(Quest, 1, "The icy whirlstorms conjured by the Draught of Whirling Ice worked wonders!")
	AddQuestStepChat(Quest, 2, "Return to Odon Scourgeson at Cragged Spine.", 1, "You should return return to Odon Scourgeson now that the Draught of Whirling Ice caused confusion and chaos on the near by beach front.", 0, 4700108)
	AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
	if HasItem(Player, 6556) then
		RemoveItem(Player, 6556)
	end
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		UsedDraught(Quest, QuestGiver, Player)
	end
end