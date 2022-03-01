--[[
	Script Name		:	Quests/Darklight/OneMan'sWaste....lua
	Script Purpose	:	Handles the quest, "One Man's Waste..."
	Script Author	:	Cynnar
	Script Date		:	8/30/2015
	Script Notes	:	

	Zone			:	Darklight Wood
	Quest Giver		:	Ilmtar D'Viervs
	Preceded by		:	What's in Demand?
	Followed by		:	Useful Materials
--]]


function Init(Quest)
	AddQuestStepObtainItem(Quest, 1, "Search outside T'Vatar Outpost for old weapons", 6, 100, "Ilmtar D'Viervs wants me to collect some old weapons just outside T'Vatar Outpost.", 5, 6485)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected several old weapons")

	AddQuestStepChat(Quest, 2, "Bring these weapons to Ilmtar D'Viervs", 1, "Ilmtar D'Viervs wants me to collect some old weapons just outside T'Vatar Outpost.", 5, 340076)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have collected the old weapons for Ilmtar.")
	while HasItem(Player, 6485, 1) do
	    RemoveItem(Player, 6485)
	end
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
	AddConversationOption(con, "I'll see what can I dig up.")
	StartConversation(con, QuestGiver, Player, "Once you've collected a decent number of weapons return them to me.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, Spawn)
	while HasItem(Player, 6485, 1) do
	    RemoveItem(Player, 6485)
	end    
end