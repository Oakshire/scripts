--[[
	Script Name		:	SpawnScripts/FrostfangSea/fewer_orcs_to_worry_about.lua
	Script Purpose	:	the quest Fewer Orcs to Worry About
	Script Author	:	theFoof
	Script Date		:	2013.6.15
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:   Hillfred Kinloch
	Preceded by		:	Green Mystery
	Followed by		:	Geode Caching
--]]

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(5,90), math.random(27,40), 0, 0)
	AddQuestStepKill(Quest, 1, "Slay any Ry'Gorr tunnelers you find within the Demon's Delve tunnels.", 8, 100, "Hillfred is sure that the Ry'Gorr that survived the green, billowing clouds have been weakened by it. She has tasked you with returning to the Demon's Delve tunnels.", 611, 4700105)
	AddQuestStepCompleteAction(Quest, 1, "KilledOrcs")
end

function Accepted(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function KilledOrcs(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "You have slain enough Ry'Gorr tunnelers for Hillfred.")
	AddQuestStepChat(Quest, 2, "Return to Hillfred Kinloch now that you have slain so many Ry'Gorr tunnelers from within the Demon's Delve.", 1, "You should return to Hillfred Kinloch, at Cragged Spine, now that you have slain so many Ry'Gorr tunnelers from within the Demon's Delve.", 0, 4700115)
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