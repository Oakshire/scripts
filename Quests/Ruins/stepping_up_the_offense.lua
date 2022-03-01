--[[
	Script Name	: Quests/Ruins/stepping_up_the_offense.lua
	Script Purpose	: Handles the quest, "Stepping Up the Offense"
	Script Author	: Scatman
	Script Date	: 2009.08.18
	
	Zone       : The Ruins
	Quest Giver: Captain Arellius
	Preceded by: Request Further Orders (requesting_further_orders.lua)
	Followed by: Knock the Fight Out of 'Em (knock_the_fight_out_of_em.lua)
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I should locate Lieutenant Imperidus at the second Militia outpost in the Ruins and speak to her.", 1, "I have been ordered by the captain to report to Lieutenant Imperidus.", 0, 1270070) 
	AddQuestStepCompleteAction(Quest, 1, "Quest_Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius028.mp3", "", "", 11330989, 3299447227, Player)
	AddConversationOption(conversation, "I understand, Captain.")
	StartConversation(conversation, QuestGiver, Player, "Again, keep in mind that even travel to the second outpost will be dangerous. Travel with companions to ensure your safety. Do not report back to me until you have followed the lieutenant's orders.")
end

function Declined(Quest, QuestGiver, Player)
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I found Lietenant Imperidus deep in the Ruins.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have reported to Lieutenant Imperidus.")
	UpdateQuestDescription(Quest, "I made my way through the Ruins and found the second Militia outpost, where I reported to Lieutenant Imperidus for duty.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
end