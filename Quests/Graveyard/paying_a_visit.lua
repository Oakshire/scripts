--[[
	Script Name	: paying_a_visit.lua
	Script Purpose	: Handles the quest, "Paying a Visit"
	Script Author	: Scatman
	Script Date	: 2009.07.10
	
	Zone       : The Graveyard
	Quest Giver: Custodian Zaddar Sullissia
	Preceded by: The Door Knocker (the_door_knocker.lua)
	Followed by: Finding the Pages (finding_the_pages.lua)
--]]


function Init(Quest)


	AddQuestStepChat(Quest, 1, "I must speak with Varacus T`Kur. He can be found by following the road north, then to the west.", 1, "I must seek out the dark elf Varacus T`Kur within the graveyard of Freeport. According to Zaddar, Varacus can be found to the north near the ruins of the old tower of Marr.", 0, 1250070)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar036.mp3", "", "", 931872980, 59948626, Player)
	AddConversationOption(conversation, "Very well, I'm off.")
	StartConversation(conversation, QuestGiver, Player, "Go now, and return when you have the pages from Varacus.")
end

function Declined(Quest, QuestGiver, Player)
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Varacus T`Kur.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have found Varacus and spoken with him as instructed by Zaddar.")
	GiveQuestReward(Quest, Player)
	UpdateQuestDescription(Quest, "I have found Varacus and spoken to him.")
end

function Reload(Quest, QuestGiver, Player, Step)
end
