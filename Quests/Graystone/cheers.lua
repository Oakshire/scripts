--[[
	Script Name	: Quests/Graystone/cheers.lua
	Script Purpose	: Handles the quest, "Cheers!"
	Script Author	: Scatman
	Script Date	: 2009.10.05
	
	Zone       : Graystone Yard
	Quest Giver: Mav Boilfist
	Preceded by: A Family Recipe (a_family_recipe.lua)
	Followed by: A Package (a_package.lua)
--]]

local CHEERS_QUEST = 285

function Init(Quest)
	AddQuestStep(Quest, 1, "I need to collect Mav's brew from the keg next to her.", 1, 100, "I need to collect some of Mav's brew from the keg next to her.", 0) 
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_GotBrewFromKeg")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/mav_boilfist/qey_village03/quests/mav_boilfist/mav_boilfist017a.mp3", "", "", 4196748864, 1238448420, Player)
	AddConversationOption(conversation, "We'll see.")
	StartConversation(conversation, QuestGiver, Player, "I hope they like it!")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_GotBrewFromKeg(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected Mav's brew.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected Mav's brew.")

	AddQuestStepChat(Quest, 2, "I need to give some of Mav's brew to Gnor Farven in the tavern.", 1, "I need to give samples of Mav's brew to a number of people around Graystone Yard.", 0, 2350036)
	AddQuestStepChat(Quest, 3, "I need to give some of Mav's brew to Gurna Hadel in the tavern.", 1, "I need to give samples of Mav's brew to a number of people around Graystone Yard.", 0, 2350042) 
	AddQuestStepChat(Quest, 4, "I need to give some of Mav's brew to Dunda Frostgrip southwest of the scribe's shop.", 1, "I need to give samples of Mav's brew to a number of people around Graystone Yard.", 0, 2350047) 
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_SpokeWithGnor")
	AddQuestStepCompleteAction(Quest, 3, "Step3_Complete_SpokeWithGurna")
	AddQuestStepCompleteAction(Quest, 4, "Step4_Complete_SpokeWithDunda")
end

function Step2_Complete_SpokeWithGnor(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have given some of Mav's brew to Gnor Farven.")
	
	-- Mav's Brew
	if HasItem(Player, 9383) then
		RemoveItem(Player, 9383)
	end
	
	if QuestIsComplete(Player, CHEERS_QUEST) then
		SpokeWithAllFriends(Quest, QuestGiver, Player)
	end
end

function Step3_Complete_SpokeWithGurna(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have given some of Mav's brew to Gurna Hadel.")
	
	-- Mav's Brew
	if HasItem(Player, 9383) then
		RemoveItem(Player, 9383)
	end
	
	if QuestIsComplete(Player, CHEERS_QUEST) then
		SpokeWithAllFriends(Quest, QuestGiver, Player)
	end
end

function Step4_Complete_SpokeWithDunda(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have given some of Mav's brew to Dunda Frostgrip.")
	
	-- Mav's Brew
	if HasItem(Player, 9383) then
		RemoveItem(Player, 9383)
	end
	
	if QuestIsComplete(Player, CHEERS_QUEST) then
		SpokeWithAllFriends(Quest, QuestGiver, Player)
	end
end

function SpokeWithAllFriends(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 2, "I have given samples of Mav's brew to a number of people around Graystone Yard.")
	
	AddQuestStepChat(Quest, 5, "I need to speak with Mav Boilfist.", 1, "I should return to Mav and let her know what everyone thought of her brew.", 0, 2350016) 
	AddQuestStepCompleteAction(Quest, 5, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have spoken with Mav Boilfist.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I have given Mav the rest of her brew.")
	
	GiveQuestReward(Quest, Player)
	UpdateQuestDescription(Quest, "I have given some of Mav's brew to those who wanted to try it. I then told Mav about their reactions, she seemed pleased.")
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_GotBrewFromKeg(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_SpokeWithGnor(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3_Complete_SpokeWithGurna(Quest, QuestGiver, Player)
	elseif Step == 4 then
		Step4_Complete_SpokeWithDunda(Quest, QuestGiver, Player)
	end
end