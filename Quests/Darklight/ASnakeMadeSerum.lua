--[[
	Script Name		:	Quests/Darklight/ASnakeMadeSerum.lua
	Script Purpose	:	Handles the quest, "A Snake Made Serum"
	Script Author	:	Cynnar
	Script Date		:	9/1/2015
	Script Notes	:	

	Zone			:	Darklight Wood
	Quest Giver		:	Ilmtar D'Viervs
	Preceded by		:	Tipping the Scales of Power
	Followed by		:	The Mother Lode
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to hunt scar wurms", 8, 100, "Ilmtar D'Viervs needs the corpses of several scar wurms so he can use their pheromone sacs to make a truth serum.", 98, 340013)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I hunted several scar wurms")
	UpdateQuestTaskGroupDescription(Quest, 1, "I successfully collected enough scar wurm corpses.")

	AddQuestStepChat(Quest, 2, "Bring the scar wurm corpses to Ilmtar D'Viervs", 1, "I need to bring the scar wurm corpses to Ilmtar D'Viervs at T'Vatar Outpost.", 98, 340076)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
		UpdateQuestDescription(Quest, "I have given Ilmtar the scar wurm corpses.")
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
	FaceTarget(QuestGiver, Player)
	local con = CreateConversation()

	PlayFlavor(QuestGiver, "", "", "", 0, 0, Player)
	StartConversation(con, QuestGiver, Player, "Great. I'll be here preparing the additional ingredients needed for the serum.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
end