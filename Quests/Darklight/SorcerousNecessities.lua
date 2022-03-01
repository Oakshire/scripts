--[[
	Script Name		:	Quests/Darklight/SorcerousNecessities.lua
	Script Purpose	:	Handles the quest, "Sorcerous Necessities"
	Script Author	:	Cynnar
	Script Date		:	8/30/2015
	Script Notes	:	

	Zone			:	Darklight Wood
	Quest Giver		:	Ilmtar D'Viervs
	Preceded by		:	Useful Materials
	Followed by		:	Tipping the Scales of Power
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Hunt somber screechers for their wings", 8, 100, "Ilmtar D'Viervs wants me to collect screecher wings for him.", 140, 340091, 340092)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the screecher wings for Ilmtar")

	AddQuestStepChat(Quest, 2, "Bring these screecher wings to Ilmtar D'Viervs", 1, "Ilmtar D'Viervs wants me to collect screecher wings for him.", 167, 340076)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
		UpdateQuestDescription(Quest, "I have collected the screecher wings for Ilmtar.")
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
	AddConversationOption(con, "I'll be back.")
	StartConversation(con, QuestGiver, Player, "Good, very good. You can find a colony of bats due west from T'Vatar Outpost.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
end