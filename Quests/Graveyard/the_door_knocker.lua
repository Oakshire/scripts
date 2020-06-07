--[[
	Script Name	: the_door_knocker.lua
	Script Purpose	: Handles the quest, "The Door Knocker"
	Script Author	: Scatman
	Script Date	: 2009.07.09
	
	Zone       : The Graveyard
	Quest Giver: Custodian Zaddar Sullissia
	Preceded by: None
	Followed by: Paying a Visit (paying_a_visit.lua)
--]]


function Init(Quest)


	AddQuestStep(Quest, 1, "Find the tomb of Sir Penan to the northwest and ensure it is sealed.", 1, 100, "I need to find the tombs of the fallen knights and ensure that they have remained sealed. I should check the larger tombs, the ones that have plaques noting who is buried there.", 2339)
	AddQuestStep(Quest, 2, "Find the tomb of Sir Breel to the west and ensure it is sealed.", 1, 100, "I need to find the tombs of the fallen knights and ensure that they have remained sealed. I should check the larger tombs, the ones that have plaques noting who is buried there.", 2339)
	AddQuestStepKill(Quest, 3, "Find the tomb of Sir Haligan to the north and ensure it is sealed.", 1, 100, "I need to find the tombs of the fallen knights and ensure that they have remained sealed. I should check the larger tombs, the ones that have plaques noting who is buried there.", 2339, 1250043)
	AddQuestStep(Quest, 4, "Find the tomb of Sir Arlin to the southwest and ensure it is sealed.", 1, 100, "I need to find the tombs of the fallen knights and ensure that they have remained sealed. I should check the larger tombs, the ones that have plaques noting who is buried there.", 2339)
	AddQuestStep(Quest, 5, "Find the tomb of Sir Xantille to the north and ensure it is sealed.", 1, 100, "I need to find the tombs of the fallen knights and ensure that they have remained sealed. I should check the larger tombs, the ones that have plaques noting who is buried there.", 2339)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_FoundTomb1")
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_FoundTomb2")
	AddQuestStepCompleteAction(Quest, 3, "Step3_Complete_FoundTomb3")
	AddQuestStepCompleteAction(Quest, 4, "Step4_Complete_FoundTomb4")
	AddQuestStepCompleteAction(Quest, 5, "Step5_Complete_FoundTomb5")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar030.mp3", "", "", 3091175973, 1298049191, Player)
	AddConversationOption(conversation, "The things I do for fame and fortune...")
	StartConversation(conversation, QuestGiver, Player, "The Overlord will have us both executed if he finds out anyone has been tampering with the tombs in his graveyard! Report back with what you discover.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_FoundTomb1(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I found the secure tomb of Sir Penan.")
	
	if QuestIsComplete(Player, 231) then
		FoundAllTombs(Quest, QuestGiver, Player)
	end
end

function Step2_Complete_FoundTomb2(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I found the secure tomb of Sir Breel.")
	
	if QuestIsComplete(Player, 231) then
		FoundAllTombs(Quest, QuestGiver, Player)
	end
end

function Step3_Complete_FoundTomb3(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "The tomb of Sir Haligan appears to have been disturbed.")
	
	if QuestIsComplete(Player, 231) then
		FoundAllTombs(Quest, QuestGiver, Player)
	end
end

function Step4_Complete_FoundTomb4(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I found the secure tomb of Sir Arlin.")
	
	if QuestIsComplete(Player, 231) then
		FoundAllTombs(Quest, QuestGiver, Player)
	end
end

function Step5_Complete_FoundTomb5(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I found the secure tomb of Sir Xantille.")
	
	if QuestIsComplete(Player, 231) then
		FoundAllTombs(Quest, QuestGiver, Player)
	end
end

function FoundAllTombs(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I found the tombs that Zaddar asked of me and reported my findings.")
	
	AddQuestStepChat(Quest, 6, "Return to Zaddar in the Graveyard.", 1, "I must return to Zaddar and let him know of my findings.", 0, 1250002)
	AddQuestStepCompleteAction(Quest, 6, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I have returned to Zaddar after checking on the tombs.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have returned to Zaddar and told him of my findings.")
	GiveQuestReward(Quest, Player)
	UpdateQuestDescription(Quest, "After spending time with Zaddar in the graveyard, he has taught me much of Freeport's history.")
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_FoundTomb1(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_FoundTomb2(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3_Complete_FoundTomb3(Quest, QuestGiver, Player)
	elseif Step == 4 then
		Step4_Complete_FoundTomb4(Quest, QuestGiver, Player)
	elseif Step == 5 then
		Step5_Complete_FoundTomb5(Quest, QuestGiver, Player)
	end
end
