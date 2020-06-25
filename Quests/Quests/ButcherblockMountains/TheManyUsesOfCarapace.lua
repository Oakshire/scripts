--[[
	Script Name		:	Quests/ButcherblockMountains/TheManyUsesOfCarapace.lua
	Script Purpose	:	Handles the quest, "The Many Uses of Carapace"
	Script Author	:	jakejp
	Script Date		:	6/8/2018
	Script Notes	:	

	Zone			:	Butcherblock Mountains
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to collect ten granite beetle carapaces.", 10, 100, "I need to collect a number of beetle carapaces for Argro.", 162, 1080069, 1080273)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the granite beetle carapaces.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected the beetle carapaces.")

	AddQuestStepChat(Quest, 2, "I need to speak with Argro.", 1, "I need to bring these beetle carapaces to Argro.", 11, 1081147)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have spoken with Argro.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have delivered the beetle carapaces.")

	UpdateQuestDescription(Quest, "I collected the beetle carapaces for Argro. He hopes to create some new armor from them and thanked me for acquiring them for him.")
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