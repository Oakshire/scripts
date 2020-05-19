--[[
	Script Name		:	Quests/Darklight/ElementalEncroachment.lua
	Script Purpose	:	Handles the quest, "Elemental Encroachment"
	Script Author	:	Cynnar
	Script Date		:	7/5/2015
	Script Notes	:	

	Zone			:	Darklight Wood
	Quest Giver		:	Udiyitas X'Kilrae
	Preceded by		:	A Solidified Front (ASolidifiedFront.lua)
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Destroy several Sablevein crumblers", 4, 100, "Udiyitas X'Kilrae has asked me to help take care of the elemental problems outside of Hate's Envy.", 611, 340023)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have destroyed the Sablevein crumblers")

	AddQuestStepChat(Quest, 2, "Return to Udiyitas X'Kilrae", 1, "Udiyitas X'Kilrae has asked me to help take care of the elemental problems outside of Hate's Envy.", 11, 340226)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have slain the elementals for Udiyitas X'Kilrae.")
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
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "udiyitas_x_kilrae/darklight_wood/hates_envy/udiyitas_revamp/udiyitas003.mp3", "", "", 3716611968, 2933459424, Player)
	AddConversationOption(conversation, "For Hate's Envy!")
	StartConversation(conversation, QuestGiver, Player, "For Hate's Envy!")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end