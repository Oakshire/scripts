--[[
	Script Name		:	Quests/StarcrestCommune/GatheringGlowmyst.lua
	Script Purpose	:	Handles the quest, "Gathering Glowmyst"
	Script Author	:	Jabantiz
	Script Date		:	6/15/2018
	Script Notes	:	

	Zone			:	Starcrest Commune
	Quest Giver		:	Bermo (2340025)
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must gather glowmyst from the beetles in Oakmyst Forest", 10, 100, "I need to gather up glowmyst juice from Oakmyst Forest, reachable by any number of mariner bells within Qeynos, by hunting down glowmyst beetles.", 1204, 1950002)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have gathered the glowmyst Bermo needed.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've successfully gathered the glowmyst juice I need!")

	AddQuestStepChat(Quest, 2, "I need to return to Bartender Bermo", 1, "I should return to Bartender Bermo in the Lion's Mane Inn and Tavern in the Qeynos Capitol District.", 11, 2340025)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I've spoken with Bartender Bermo.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I spoke with Bartender Bermo regarding the glowmyst juice I brought him.")

	UpdateQuestDescription(Quest, "I returned to Bartender Bermo with all the juice he needed.  Finding all ten beetles took quite some time, but in the end I persevered!")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end