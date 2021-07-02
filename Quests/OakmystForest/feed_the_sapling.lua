--[[
	Script Name	: Quests/Oakmyst/feed_the_sapling.lua
	Script Purpose	: Handles the quest, "Feed the Sapling"
	Script Author	: Scatman
	Script Date	: 2009.10.08
	
	Zone       : Oakmyst Forest
	Quest Giver: Scholar Neola
	Preceded by: None
	Followed by: Judgement of the Dryads (judgement_of_the_dryads.lua)
--]]


function Init(Quest)
	AddQuestStep(Quest, 1, "Search the alchemy shelves.", 1, 100, "I must search for the alchemist shop in Nettleville to attain the magical plant nutrient.", 182)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_FoundNutrients")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	PlayFlavor(QuestGiver, "voiceover/english/scholar_neola/qey_adv01_oakmyst/scholarneola002.mp3", "", "", 4033827219, 3906200141, Player)
	AddConversationOption(conversation, "I will go and find this arcane nutrient.")
	StartConversation(conversation, QuestGiver, Player, "I cannot leave this woodland, but you can. Within the villages of Qeynos an alchemist has created a powerful nutrient that will aid the sapling. Retrieve this prized item and feed it to the growing tree. ")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_FoundNutrients(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I searched the alchemy shelves.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found Smitelin's Excel-o-gro in Nettleville.")
	UpdateQuestZone(Quest, "Oakmyst Forest")

	AddQuestStepChat(Quest, 2, "Find the treant sapling.", 1, "I must sprinkle Smitelin's Excel-o-gro into the treant sapling of Oakmyst Forest.", 0, 1950068) 
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_SpokeToSapling")
end

function Step2_Complete_SpokeToSapling(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I poured the nutrient on the treant sapling.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I sprinkled the magical nutrient, Smitelin's Excel-o-gro onto the treant sapling.")

	AddQuestStepChat(Quest, 3, "Speak to Scholar Neola.", 1, "I should inform Scholar Neola that I saved the treant sapling.", 0, 1950079) 
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I spoke to Scholar Neola.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I spoke to Scholar Neola and informed her the sapling was fed.")
	
	UpdateQuestDescription(Quest, "I found a magical plant food called Smitelin's Excel-o-gro and fed it to the treant sapling in Oakmyst Forest.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_FoundNutrients(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_SpokeToSapling(Quest, QuestGiver, Player)
	end
end