--[[
	Script Name		:	Quests/FrostfangSea/clan_of_the_cave_imps.lua
	Script Purpose	:	the quest Clan of the Cave Imps
	Script Author	:	theFoof
	Script Date		:	2013.7.21
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:	Knut Orcbane
	Preceded by		:	Impish Threats
	Followed by		:	Mystery on the Orc Iceberg
--]]

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(5,90), math.random(12,25), 0, 0)
	AddQuestStep(Quest, 1, "Reclaim any Cragged Spine supply crates you locate within the glacial imp cave.", 4, 100, "Reclaim the Cragged Spine provisions that the miscreants and scoundrels have stolen.", 655)
	AddQuestStepKill(Quest, 2, "Slay any imps that may stand in your way within the glacial imp cave.", 6, 100, "Reclaim the Cragged Spine provisions that the miscreants and scoundrels have stolen.", 611, 4700066, 4700065, 4701106, 4701143)
	AddQuestStepCompleteAction(Quest, 1, "GotCrates")
	AddQuestStepCompleteAction(Quest, 2, "KilledImps")
end

function Accepted(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function GotCrates(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "You found all of the Cragged Spine supply crates!")
	ProgressCheck(Quest, QuestGiver, Player)
end

function KilledImps(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "You've slain enough of the imps!")
	ProgressCheck(Quest, QuestGiver, Player)
end

function ProgressCheck(Quest, QuestGiver, Player)
	if QuestStepIsComplete(Player, 79, 1) and QuestStepIsComplete(Player, 79, 2) then
		AddStep3(Quest, QuestGiver, Player)
	end
end

function AddStep3(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "You found all of the Cragged Spine supply crates and have slain many imps in the process!")
	AddQuestStepChat(Quest, 3, "Return to Knut Orcbane now that you retrieved all of the stolen Cragged Spine provisions.", 1, "You should return to Knut Orcbane, at Cragged Spine, now that you retrieved all of the stolen Cragged Spine supplies.", 0, 4700113)
	AddQuestStepCompleteAction(Quest, 3, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if QuestStepIsComplete(Player, 79, 1) then
		GotCrates(Quest, QuestGiver, Player)
	elseif QuestStepIsComplete(Player, 79, 2) then
		KilledImps(Quest, QuestGiver, Player)
	end
end