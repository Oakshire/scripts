--[[
	Script Name		:	Quests/FrostfangSea/watch_out_below.lua
	Script Purpose	:	the quest Watch Out Below!
	Script Author	:	theFoof
	Script Date		:	2013.7.18
	Script Notes	:   

	Zone			:	Frostfang Sea
	Quest Giver		:	Odon Sourgeson
	Preceded by		:	Ry'Gorr Tool Taking
	Followed by		:	None
--]]

function Init(Quest)
	SetQuestRepeatable(Quest)
	SetQuestFeatherColor(Quest, 3)
	AddQuestRewardCoin(Quest, math.random(5,90), math.random(52,70), 0, 0)
	AddQuestStep(Quest, 1, "Break off glimmering velium crystals that grow from the cave ceiling, and gather them up.", 5, 100, "Return to the Velinoid Catacombs in search of glimmering velium crystals.", 3774)
	AddQuestStepCompleteAction(Quest, 1, "GotCrystals")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "odon_scourgeson/halas/cragged_spine/odon_scourgeson_042.mp3", "", "", 2099746411, 4081524190, Player)
	AddConversationOption(conversation, "That will be good.")
	StartConversation(conversation, QuestGiver, Player, "That's wonderful!  The money raised by selling the velium can help to buy us more goods and weapons out here on the front.")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function GotCrystals(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "You have gathered enough glimmering velium crystals.")
	AddQuestStepChat(Quest, 2, "Return to Odon Scourgeson now that you have gathered enough glimmering velium crystals.", 1, "You should return to Odon Scourgeson, at Cragged Spine, now that you have gathered enough glimmering velium crystals.", 0, 4700108)
	AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		GotCrystals(Quest, QuestGiver, Player)
	end
end