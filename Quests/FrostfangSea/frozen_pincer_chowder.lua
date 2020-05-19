--[[
	Script Name		:	Quests/FrostfangSea/frozen_pincer_chowder.lua
	Script Purpose	:	the quest "Frozen Pincer Chowder"
	Script Author	:	theFoof
	Script Date		:	2013.9.1
	Script Notes	:

	Zone			:   Frostfang Sea
	Quest Giver		:	Olga Macleod
	Preceded by		:	None
	Followed by		:	None
--]]

function Init(Quest)
	AddQuestStep(Quest, 1, "I must collect a sprig of halasian reeds for Olga.", 1, 100, "I must collect a sprig of halasian reeds for Olga. I can find the halasian reed plant down near the water's edge at the Erollis Dock, east of New Halas.", 822)
	AddQuestStepCompleteAction(Quest, 1, "GotSprig")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "olga_macleod/halas/new_halas/olga_macleod/olga_macleod_006.mp3", "", "", 1415155134, 885074882, Player)
	AddConversationOption(conversation, "I shall be back with the parsley and pincers!")
	StartConversation(conversation, QuestGiver, Player, "How nice of you! If you do so, you can have a bowl of the chowder for yourself. What I need is frozen pincers and halasian reeds. The halasian reeds and the frozen pincers are down near the water's edge at the Erollis Dock, east of New Halas.")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function GotSprig(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected the halasian reeds for Olga.")
	AddQuestStepKill(Quest, 2, "I must kill frozen pincers for Olga's chowder.", 4, 100, "I must kill frozen pincers for Olga. The pincers are at the Erollis Dock in New Halas.", 77, 4700215)
	AddQuestStepCompleteAction(Quest, 2, "KilledCrabs")
end

function KilledCrabs(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 2, "I have killed and collected the frozen pincer meat for Olga.")
	AddQuestStepChat(Quest, 3, "I must speak with Olga Macleod near The Stone Hammer.", 1, "I must return the halasian parsley and frozen pincer meat to Olga Macleod. Olga is at the fire next to the mender's workshop, The Stone Hammer, in New Halas.", 0, 4700258)
	AddQuestStepCompleteAction(Quest, 3, "TalkedOlga")
end

function TalkedOlga(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 3, "I have given the ingredients to Olga.")
	AddQuestStep(Quest, 4, "I must try some of Olga's frozen pincer chowder.", 1, 100, "Olga has taken the ingredients I collected and prepared her recipe for frozen pincer chowder.", 294)
	AddQuestStepCompleteAction(Quest, 4, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		GotSprig(Quest, QuestGiver, Player)
	elseif Step == 2 then
		KilledCrabs(Quest, QuestGiver, Player)
	elseif Step == 3 then
		TalkedOlga(Quest, QuestGiver, Player)
	end
end