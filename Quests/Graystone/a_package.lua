--[[
	Script Name	: Quests/Graystone/a_package.lua
	Script Purpose	: Handles the quest, "A Package"
	Script Author	: Scatman
	Script Date	: 2009.10.05
	
	Zone       : Graystone Yard
	Quest Giver: Mav Boilfist
	Preceded by: Cheers! (cheers.lua)
	Followed by: A Stone From Home (a_stone_from_home.lua)
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with the shipping coordinator on the docks.", 1, "I need to get Mav's package for her.", 0, 2350004)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_SpokeWithShippingCoordinator")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/mav_boilfist/qey_village03/quests/mav_boilfist/mav_boilfist023.mp3", "", "", 3437868051, 3538588348, Player)
	AddConversationOption(conversation, "I'll be right back.")
	StartConversation(conversation, QuestGiver, Player, "Oh you're simply too sweet to be a dwarf. Thanks.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_SpokeWithShippingCoordinator(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken with the shipping coordinator.")

	AddQuestStep(Quest, 2, "I need to check the crates down at the end of the docks and see if any of them have Mav's package.", 1, 100, "I need to get Mav's package for her.", 0) 
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_FoundMavsPackage")
end

function Step2_Complete_FoundMavsPackage(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have found Mav's package.")

	AddQuestStepChat(Quest, 3, "I need to clear this package with the shipping coordinator.", 1, "I need to get Mav's package for her.", 0, 2350004) 
	AddQuestStepCompleteAction(Quest, 3, "Step3_Complete_SpokeWithShippingCoordinator")
end

function Step3_Complete_SpokeWithShippingCoordinator(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have cleared this package.")

	AddQuestStepChat(Quest, 4, "I need to deliver Mav's package to her.", 1, "I need to get Mav's package for her.", 0, 2350016) 
	AddQuestStepCompleteAction(Quest, 4, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have delivered Mav's package.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have given Mav her package.")
	
	GiveQuestReward(Quest, Player)
	UpdateQuestDescription(Quest, "I have collected Mav's package for her.")
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_SpokeWithShippingCoordinator(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_FoundMavsPackage(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3_Complete_SpokeWithShippingCoordinator(Quest, QuestGiver, Player)
	end
end