--[[
	Script Name	: Quests/Ruins/pounding_the_enemy.lua
	Script Purpose	: Handles the quest, "Pounding the Enemy"
	Script Author	: Scatman
	Script Date	    : 2009.07.28
	
	Zone       : The Ruins
	Quest Giver: Lieutenant Argosian
	Preceded by: Pawns in the Game (pawns_in_the_game.lua)
	Followed by: Prophet and Loss (prophet_and_loss.lua)
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must defeat five Brokentusk guards.", 5, 100, "I have been ordered to defeat the Brokentusk orcs and defend the vagrant squatters.", 2489, 1270035, 1270045, 1270095, 1270044)
	AddQuestStepKill(Quest, 2, "I must defeat five Brokentusk warriors.", 5, 100, "I have been ordered to defeat the Brokentusk orcs and defend the vagrant squatters.", 2489, 1270037, 1270056)
	AddQuestStepKill(Quest, 3, "I must defend the vagrants by slaying their overseer.", 1, 100, "I have been ordered to defeat the Brokentusk orcs and defend the vagrant squatters.", 2489, 1270010)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_KilledGuards")
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_KilledWarriors")
	AddQuestStepCompleteAction(Quest, 3, "Step3_Complete_KilledOverseer")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian015b.mp3", "", "", 102436079, 1387861460, Player)
	AddConversationOption(conversation, "I will.")
	StartConversation(conversation, QuestGiver, Player, "I knew I could count on you. Return to me when the orcs have paid for their crimes.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_KilledGuards(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have defeated five Brokentusk guards")
	
	if QuestIsComplete(Player, 264) then
		KilledAllOrcs(Quest, QuestGiver, Player)
	end
end

function Step2_Complete_KilledWarriors(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have defeated five Brokentusk warriors.")
	
	if QuestIsComplete(Player, 264) then
		KilledAllOrcs(Quest, QuestGiver, Player)
	end
end

function Step3_Complete_KilledOverseer(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have slain the orc overseer.")
	
	if QuestIsComplete(Player, 264) then
		KilledAllOrcs(Quest, QuestGiver, Player)
	end
end

function KilledAllOrcs(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have defeated the orcs, keeping the vagrants safe for now.")
	
	AddQuestStepChat(Quest, 4, "I must report back to Lieutenant Argosian.", 1, "I should return to the lieutenant and report that the vagrants are safe for now.", 0, 1270031)
	AddQuestStepCompleteAction(Quest, 4, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have reported back to Lieutenant Argosian.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have returned to Lieutenant Argosian.")
	GiveQuestReward(Quest, Player)
	UpdateQuestDescription(Quest, "I defeated a variety of Brokentusk orcs and kept the squatters safe in the Ruins. The threat is far from over, however.")
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_KilledGuards(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_KilledWarriors(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3_Complete_KilledOverseer(Quest, QuestGiver, Player)
	end
end