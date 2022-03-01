--[[
	Script Name		:	Quests/Darklight/RottingScum.lua
	Script Purpose	:	Handles the quest, "Rotting Scum"
	Script Author	:	Cynnar
	Script Date		:	8/30/2015
	Script Notes	:	Quest ID 138

	Zone			:	Darklight Wood
	Quest Giver		:	Ginwyss d'Arkenett (ID 340064)
	Preceded by		:	Thexian Taint (ID 135)
	Followed by		:	Picking Up Slack (ID 139)
--]]

local RottingScum = 138

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill seven fallen rangers.", 7, 100, "Ginwyss D'Arkenett wants the zombies southwest of T'Vatar Post slain.", 611, 340060)
	AddQuestStepKill(Quest, 2, "I need to kill seven stout cadavers.", 7, 100, "Ginwyss D'Arkenett wants the zombies southwest of T'Vatar Post slain.", 611, 340059)
	AddQuestStepCompleteAction(Quest, 1, "FallenRangers")
	AddQuestStepCompleteAction(Quest, 2, "StoutCadavers")
end

function FallenRangers(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I have slain the fallen rangers")
    CheckProgress(Quest, QuestGiver, Player)
end

function StoutCadavers(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 2, "I have slain the stout cadavers")
    CheckProgress(Quest, QuestGiver, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player, RottingScum, 1) and QuestStepIsComplete(Player, RottingScum, 2) then
		UpdateQuestTaskGroupDescription(Quest, 1, "I have slain the zombies..")
		ZombiesComplete(Quest, QuestGiver, Player)
	end
end

function ZombiesComplete(Quest, QuestGiver, Player)
	SetCompleteFlag(Quest)
	AddQuestStepChat(Quest, 3, "Return to Ginwyss D'Arkenett", 1, "Ginwyss D'Arkenett wants the zombies southwest of T'Vatar Post slain.", 11, 340064)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have slain the zombies for Ginwyss D'Arkenett.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if QuestStepIsComplete(Player, RottingScum, 1) then
	    FallenRangers(Quest, QuestGiver, Player)
	end
	if QuestStepIsComplete(Player, RottingScum, 2) then
	    StoutCadavers(Quest, QuestGiver, Player)
	end
	if Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "ginwyss_d_arkenett/darklight_wood/tvatar_post/ginwyss_revamp/ginwyss008.mp3", "", "", 2741628345, 486208170, Player)
	Say(QuestGiver, "Return to me after you've " .. '"killed" ' .. "them.")
	-- StartConversation(conversation, QuestGiver, Player, "Return to me after you've /"killed/" them.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end