--[[
	Script Name	: Quests/Graystone/a_stone_from_home.lua
	Script Purpose	: Handles the quest, "A Stone From Home"
	Script Author	: Scatman
	Script Date	: 2009.10.05
	
	Zone       : Graystone Yard
	Quest Giver: Mav Boilfist
	Preceded by: A Package (a_package.lua)
	Followed by: A Missing Husband (a_missing_husband.lua)
--]]

function Init(Quest)
	AddQuestStep(Quest, 1, "I need to examine Mav's stone while near the Stone of Kaladim in Graystone Yard.", 1, 100, "I need to take Mav's stone to the Stone of Kaladim here in the Graystone Yard and see if anything interesting happens.", 0) 
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_ExaminedStone")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	-- Mav's Stone
	if not HasItem(Player, 9384, 1) then
		SummonItem(Player, 9384, 1)
	end
	
	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/mav_boilfist/qey_village03/quests/mav_boilfist/mav_boilfist029b.mp3", "", "", 2185318647, 3149226816, Player)
	AddConversationOption(conversation, "I can't wait to see what happens!")
	AddConversationOption(conversation, "I doubt anything will happen.")
	StartConversation(conversation, QuestGiver, Player, "I can't wait to hear what happens!")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_ExaminedStone(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have examined Mav's stone.")

	AddQuestStepChat(Quest, 2, "I should return to Mav Boilfist.", 1, "I need to take Mav's stone to the Stone of Kaladim here in the Graystone Yard and see if anything interesting happens.", 0, 2350016) 
	AddQuestStepCompleteAction(Quest, 2, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have spoken with Mav Boilfist.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have done as Mav asked.")
	
	-- Mav's Stone
	while HasItem(Player, 9384) do
		RemoveItem(Player, 9384)
	end
	
	GiveQuestReward(Quest, Player)
	UpdateQuestDescription(Quest, "I have returned Mav's stone to her.")
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_ExaminedStone(Quest, QuestGiver, Player)
	end
end