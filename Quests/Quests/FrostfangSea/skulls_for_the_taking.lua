--[[
	Script Name		:	Quests/FrostfangSea/skulls_for_the_taking.lua
	Script Purpose	:	the quest "Skulls for the Taking"
	Script Author	:	theFoof
	Script Date		:	2013.6.14
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:	Hillfred Kinloch
	Preceded by		:	Blood Spilled for the Blade Maiden
	Followed by		:	Great Mystery
--]]

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(5,90), math.random(27,38), 0, 0)
    AddQuestStepKill(Quest, 1, "Slay the Ry'Gorr orcs that are camped out on Jagged Daggers isle.", 8, 100, "Hillfred believes the orcs are staging their beachfront charge from the nearby isle known as Jagged Daggers.", 611, 4700120, 4700543, 4700119, 4700538, 4700542, 4700121, 4700118)
	AddQuestStepCompleteAction(Quest, 1, "KilledOrcs")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "hillfred_kinloch/halas/cragged_spine/hillfred_kinloch_010.mp3", "", "", 1103422610, 3121183656, Player)
	AddConversationOption(conversation, "This should be fun!")
	StartConversation(conversation, QuestGiver, Player, "Swim over there and fall upon the beasts as if you were a rabid wolf of the Everfrost!  Bring me back a great many skulls as trophies to adorn our defenses.")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function KilledOrcs(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "You have enough Ry'Gorr skulls to suffice.")
	AddQuestStepChat(Quest, 2, "Return to Hillfred Kinloch now that you have enough Ry'Gorr skulls.", 1, "You should return to Hillfred Kinloch, at Cragged Spine, now that you have enough Ry'Gorr skulls.", 0, 4700115)
	AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		KilledOrcs(Quest, QuestGiver, Player)
	end
end