--[[
	Script Name	: Quests/SunkenCity/time_to_stop_a_madman.lua
	Script Purpose	: Handles the quest, "Time to Stop a Madman"
	Script Author	: Scatman
	Script Date	    : 2009.07.28 (15.7.2022 by torsten)
	
	Zone       : Sunken City
	Quest Giver: Inquisitor Thorson
	Preceded by: Back to the Inquisitor (back_to_the_inquisitor.lua)
	Followed by: Searching for the Ruins (searching_for_the_ruins.lua)
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must stop Curfeld's deadly scheme at all costs!", 1, 100, "I must confront Investigator Curfeld and do whatever it takes to stop him.", 0, 1240027)
	AddQuestStepCompleteAction(Quest, 1, "Step1_complete_KilledCurfield")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/inquisitor_thorson/fprt_adv01_sunken/inquisitor_thorson045.mp3", "", "", 1129031439, 214486034, Player)
	AddConversationOption(conversation, "I will return... I hope.")
	StartConversation(conversation, QuestGiver, Player, "You have my full authority to take whatever action is necessary. Fear not; I will ensure that the high priestess and the rest of the Dismal Rage know that your actions were necessary to save our city. Do this, and not only will you be rewarded but your fame will grow. Hurry, go!")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_complete_KilledCurfield(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I faced Curfeld and defeated him in battle.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have ended Curfeld's threat once and for all.")

	AddQuestStepChat(Quest, 2, "I should return to Inquisitor Thorson and let him know I was victorious.", 1, "I should tell Inquisitor Thorson that Curfeld is no more.", 0, 1240024)
	AddQuestStepCompleteAction(Quest, 2, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I let Thorson know that I helped save Freeport.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I told Thorson what transpired.")
	GiveQuestReward(Quest, Player)
	UpdateQuestDescription(Quest, "I defeated Investigator Curfeld in battle, ending the threat he posed to Freeport. Hopefully Thorson will be true to his word and let the Dismal Rage know that I helped uncover this plot. It would certainly help increase my standing with the Overlord.")
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_complete_KilledCurfield(Quest, QuestGiver, Player)
	end
end