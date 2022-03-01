--[[
	Script Name		:	Quests/FrostfangSea/blood_spilled_for_the_blade_maiden.lua
	Script Purpose	:	the quest "Blood Spilled for the Blood Maiden"
	Script Author	:	theFoof
	Script Date		:	2013.6.14
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:	Hillfred Kinloch
	Preceded by		:	None
	Followed by		:	Skulls for the Taking
--]]

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(5,90), math.random(27,38), 0, 0)
	AddQuestStepKill(Quest, 1, "Slay the invading Ry'Gorr!", 8, 100, "Hillfred has ordered you to stain the frozen beachfront south of Cragged Spine with the blood of the charging Ry'Gorr.", 611, 4700117)
	AddQuestStepCompleteAction(Quest, 1, "KilledOrcs")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "hillfred_kinloch/halas/cragged_spine/hillfred_kinloch_005.mp3", "", "", 106446536, 3096406437, Player)
	AddConversationOption(conversation, "Gladly.")
	StartConversation(conversation, QuestGiver, Player, "Then do your worst!  Stain the frozen beach front with the blood of the charging Ry'Gorr.")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function KilledOrcs(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "You have slain enough of the invading Ry'Gorr.")
	AddQuestStepChat(Quest, 2, "Return to Hillfred Kinloch now that you have slain enough of the invading Ry'Gorr.", 1, "You should return to Hillfred Kinloch, at Cragged Spine, now that you have slain enough of the invading Ry'Gorr.", 0, 4700115)
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