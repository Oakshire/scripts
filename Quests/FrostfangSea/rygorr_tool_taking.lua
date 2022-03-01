--[[
	Script Name		:	Quests/FrostfangSea/rygorr_tool_taking.lua
	Script Purpose	:	the quest Ry'Gorr Tool Taking
	Script Author	:	theFoof
	Script Date		:	2013.7.10
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:   Odon Scourgeson
	Preceded by		:	Campside Spores
	Followed by		:   Watch Out Below!
--]]


function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(5,90), math.random(27,40), 0, 0)
	AddQuestStep(Quest, 1, "Obtain the Ry'Gorr digging tools from within the Demon's Delve tunnels.", 6, 100, "Return to the Demon's Delve tunnels below Erollis in search of the magically imbued tools.", 1668)
	AddQuestStepCompleteAction(Quest, 1, "GotPicks")
end

function Accepted(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function GotPicks(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "You've stolen enough of the Ry'Gorr digging tools.")
	AddQuestStepChat(Quest, 2, "Return to Odon Scourgeson now that you've stolen enough of the Ry'Gorr digging tools.", 1, "You should return to Odon Scourgeson, at Cragged Spine, now that you've stolen enough of the magically imbued Ry'Gorr digging tools.", 0, 4700108)
	AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		GotPicks(Quest, QuestGiver, Player)
	end
end