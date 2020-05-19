--[[
	Script Name	: Quests/WillowWood/snake_slaying.lua
	Script Purpose	: Handles the quest, "Snake Slaying"
	Script Author	: Scatman
	Script Date	: 2009.09.27
	
	Zone       : The Willow Wood
	Quest Giver: Hunter Vannil
	Preceded by: None
	Followed by: None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1,  "I must kill some rock adders.", 8, 100,  "I need to kill eight rock adders in the Forest Ruins.", 611, 1960018)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_KilledSnakes")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/hunter_vannil/qey_village05/huntervannil002.mp3", "", "", 2784879734, 2610513967, Player)
	AddConversationOption(conversation, "Thanks, this shouldn't be too difficult a hunt.")
	StartConversation(conversation, QuestGiver, Player, "Good. Killing the deadly adders shall make our village a safer place. Good luck on your hunt. Please be careful.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_KilledSnakes(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have killed some rock adders.")
	UpdateQuestZone(Quest, "The Willow Wood")

	AddQuestStepChat(Quest, 2, "I should return to Hunter Vannil.", 1, "I need to kill eight rock adders in the Forest Ruins.", 0, 2370032)
	AddQuestStepCompleteAction(Quest, 2, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have spoken with Hunter Vannil.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I killed eight rock adders.")
	UpdateQuestDescription(Quest, "I eliminated eight rock adders to make the area safer for the populace of the Willow Wood.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_KilledSnakes(Quest, QuestGiver, Player)
	end
end