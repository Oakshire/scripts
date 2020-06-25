--[[
	Script Name		:	Quests/Darklight/UsefulMaterials.lua
	Script Purpose	:	Handles the quest, "Useful Materials"
	Script Author	:	Cynnar
	Script Date		:	8/30/2015
	Script Notes	:	

	Zone			:	Darklight Wood
	Quest Giver		:	Ilmtar D'Viervs
	Preceded by		:	One Man's Waste...
	Followed by		:	Sorcerous Necessities
--]]


function Init(Quest)
	AddQuestStepObtainItem(Quest, 1, "Collect pieces of wood for Ilmtar D'Viervs", 6, 100, "Ilmtar D'Viervs wants wood from the Field of Ruin.", 830, 6486)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the wood")

	AddQuestStepChat(Quest, 2, "Bring the wood back to Ilmtar", 1, "Ilmtar D'Viervs wants wood from the Field of Ruin.", 830, 340076)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have brought Ilmtar the wood he asked for.")
	while HasItem(Player, 6486, 1) do
	    RemoveItem(Player, 6486)
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
	StartConversation(con, QuestGiver, Player, "Good.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
end