--[[
	Script Name		:	Quests/Darklight/ASolidifiedFront.lua
	Script Purpose	:	Handles the quest, "A Solidified Front"
	Script Author	:	Cynnar
	Script Date		:	7/3/2015

	Zone			:	Darklight Wood
	Quest Giver		:	Verex N'Za
	Preceded by		:	None
	Followed by		:	Elemental Encroachment (ElementalEncroachment.lua) Sealing the Rift (SealingtheRift.lua)
	
	// Note:
	// Removed duplicate quest rewards
	
--]]

local ASolidifiedFront = 120

function Init(Quest)
	AddQuestStepChat(Quest, 1, "Locate Udiyitas X'Kilrea", 1, "I should travel outisde the breach in the southern wall of Hate's Envy and find Udiyitas X'Kilrae and Pellandra D'Xatyl.", 11, 340226)
	AddQuestStepChat(Quest, 2, "Locate Pellandra D'Xatyl", 1, "I should travel outisde the breach in the southern wall of Hate's Envy and find Udiyitas X'Kilrae and Pellandra D'Xatyl.", 11, 340038)
	AddQuestStepCompleteAction(Quest, 1, "Udiyitas")
	AddQuestStepCompleteAction(Quest, 2, "Pellandra")
end

function CheckProgress(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player, ASolidifiedFront, 1) and QuestStepIsComplete(Player, ASolidifiedFront, 2) then
		UpdateQuestTaskGroupDescription(Quest, 1, "I met with both Udiyitas X'Kilrae and Pellandra D'Xatyl outside the southern breach in the walls of Hate's Envy.")
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function QuestComplete(Quest, QuestGiver, Player)
	SetCompleteFlag(Quest)
	GiveQuestReward(Quest, Player)
end

function Udiyitas(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I spoke with Udiyitas X'Kilrae")
    CheckProgress(Quest, QuestGiver, Player)
end

function Pellandra(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 2, "I spoke with Pellandra D'Xatyl")
    CheckProgress(Quest, QuestGiver, Player)
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	StartConversation(conversation, QuestGiver, Player, "May Innoruuk guide your blade, young one!")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if QuestStepIsComplete(Player, ASolidifiedFront, 1) then
	    Udiyitas(Quest, QuestGiver, Player)
	end
	if QuestStepIsComplete(Player, ASolidifiedFront, 2) then
	    Pellandra(Quest, QuestGiver, Player)
	end
end