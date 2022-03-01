--[[
	Script Name	: Quests/Ruins/file_a_final_report.lua
	Script Purpose	: Handles the quest, "File a Final Report"
	Script Author	: Scatman
	Script Date	: 2009.08.20
	
	Zone       : The Ruins
	Quest Giver: Captain Arellius
	Preceded by: Identifying the Lonetusk Ally (identifying_the_lonetusk_ally.lua)
	Followed by: None
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I should return to the docks and tell Captain Arellius what I have learned about the Rujarkian orcs.", 1, "I must report to Captain Arellius on the docks of the Ruins.", 0, 1270003)
	AddQuestStepCompleteAction(Quest, 1, "Quest_Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/lieutenant_imperidus/fprt_adv04_ruins/revamp/lieutenant_imperidus022.mp3", "", "", 3956036992, 4003496180, Player)
	AddConversationOption(conversation, "Thank you, lieutenant. You have earned mine as well.")
	StartConversation(conversation, QuestGiver, Player, "Report back to the captain. She will take word of this discovery back to our superiors in the Militia. This is extremely valuable information, my friend. You just might have given Freeport the edge it needs to ensure its safety. You have earned my respect.")
end

function Declined(Quest, QuestGiver, Player)
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have informed the captain that the Rujarkians are supplying the orcs in the Ruins with weapons and armor.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have reported back to Captain Arellius.")
	UpdateQuestDescription(Quest, "I informed Captain Arellius that the Rujarkian orcs are supplying the Brokentusk and Lonetusk orcs in the Ruins with improved weapons and armor. The captain was very pleased with my work and rewarded me well. I will now read the note she gave me to lead me to my next adventure.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
end