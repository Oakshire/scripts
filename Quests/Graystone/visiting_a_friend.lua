--[[
	Script Name	: Quests/Graystone/visiting_a_friend.lua
	Script Purpose	: Handles the quest, "Visiting a Friend"
	Script Author	: Scatman
	Script Date	: 2009.09.27
	
	Zone       : Graystone Yard
	Quest Giver: Burk Stoneshatter
	Preceded by: In the Drink (in_the_drink.lua)
	Followed by: None
--]]

function Init(Quest)	
	AddQuestStepChat(Quest, 1, "I need to speak with Jorn Sorefoot in Oakmyst Forest near the gate to Graystone Yard.", 1, "I need to travel to the Oakmyst Forest and find Jorn Sorefoot.", 0, 1950012)
	AddQuestStepCompleteAction(Quest, 1, "quest_complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/burk_stoneshatter/qey_village03/quests/burk_stoneshatter/burk_stoneshatter027a.mp3", "", "", 3983218071, 1048289693, Player)
	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, QuestGiver, Player, "You deserve the best in this world, " .. GetName(Player) .. ". Please be well.")
end

function Declined(Quest, QuestGiver, Player)
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Jorn Sorefoot.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have found and spoke to Jorn Sorefoot.")
	UpdateQuestDescription(Quest, "I have spoken with Jorn Sorefoot.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
end