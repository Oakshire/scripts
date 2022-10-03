--[[
	Script Name	: Quests/Graystone/finding_bait.lua
	Script Purpose	: Handles the quest, "Finding Bait"
	Script Author	: Scatman
	Script Date	: 2008.09.18
	
	Zone       : Graystone Yard
	Quest Giver: Tacklemaster Moyna
	Preceded by: None
	Followed by: None
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill centipedes, or crawlers, for Moyna to use as bait.", 10, 100, "I must kill ten centipedes in the Forest Ruins and gather their remains for use as bait.", 0, 1960026)
	AddQuestStepCompleteAction(Quest, 1, "step1_completed_killedCentipedes")
end

function Accepted(Quest, QuestGiver, Player)
--[[	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
		
	PlayFlavor(QuestGiver, "voiceover/english/tacklemaster_moyna/qey_village03/100_tacklemaster_barbarian_female_moyna_multhail3_629de1e4.mp3", "", "", 1963777615, 3216865707, Player)
	AddConversationOption(conversation, "Calm down! I haven't left yet!")
	StartConversation(conversation, QuestGiver, Player, "What's taking you so long, friend? I don't have all day! Fetch me my centipedes!")]]--
	
	--Applied this VO to an InRange callout after accepted. - Dorbin 2022.03.09
end

function Declined(Quest, QuestGiver, Player)
end

function step1_completed_killedCentipedes(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I've killed ten centipedes for Moyna.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've killed ten centipedes and gathered their remains for Moyna's bait.")
	UpdateQuestZone(Quest, "Graystone Yard")
	AddQuestStepChat(Quest, 2, "I must speak with tacklemaster Moyna.", 1, "I must return to tacklemaster Moyna in the Graystone Yard for my payment", 0, 2350020) 
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've spoken with tacklemaster Moyna.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've returned to tacklemaster Moyna in the Graystone Yard.")

	UpdateQuestDescription(Quest, "Moyna praised me for a job well done after gathering up the centipedes she needed. She's certain that the bait will last for at least a couple days, even with the amount of fishing Brice and Ubani do.") 
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_completed_killedCentipedes(Quest, QuestGiver, Player)
	end
end
