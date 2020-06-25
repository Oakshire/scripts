--[[
	Script Name	: Quests/PeatBog/on_the_move.lua
	Script Purpose	: Handles the quest, "On the Move"
	Script Author	: Scatman
	Script Date	: 2009.05.10
	
	Zone       : The Peat Bog
	Quest Giver: Lieutenant Dawson
	Preceded by: Ambushed (ambushed.lua)
	Followed by: A Final Foe (a_final_foe.lua)
--]]


function Init(Quest)


	AddQuestStep(Quest, 1, "I need to destroy the first machine.", 1, 100, "I need to kill the gnolls that are attempting to bring the three machines out of the Peat Bog.", 0)
	AddQuestStep(Quest, 2, "I need to destroy the second machine.", 1, 100, "I need to kill the gnolls that are attempting to bring the three machines out of the Peat Bog.", 0)
	AddQuestStep(Quest, 3, "I need to destroy the third machine.", 1, 100, "I need to kill the gnolls that are attempting to bring the three machines out of the Peat Bog.", 0)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_Machine1")
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_Machine2")
	AddQuestStepCompleteAction(Quest, 3, "Step3_Complete_Machine3")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/lieutenant_dawson/qey_adv04_bog/quests/dawson/dawson011a.mp3", "", "", 3239354610, 1196418998, Player)
	AddConversationOption(conversation, "You're welcome, and thank you.")
	StartConversation(conversation, QuestGiver, Player, "Thank you for your help, be safe.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_Machine1(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "The first machine has been destroyed.")

	if QuestIsComplete(Player, 218) then
		Multiple_Steps_Complete(Quest, QuestGiver, Player)
	end
end

function Step2_Complete_Machine2(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "The second machine has been destroyed.")

	if QuestIsComplete(Player, 218) then
		Multiple_Steps_Complete(Quest, QuestGiver, Player)
	end
end

function Step3_Complete_Machine3(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "The third machine has been destroyed.")
	
	if QuestIsComplete(Player, 218) then
		Multiple_Steps_Complete(Quest, QuestGiver, Player)
	end
end

function Multiple_Steps_Complete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have killed the gnolls moving the machines.")

	AddQuestStepChat(Quest, 4, "I need to return to Lieutenant Dawson.", 1, "Now that the gnolls guarding the machines have been killed I should return to Lieutenant Dawson.", 0, 1980022) 
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have killed the gnolls were trying to get the machines out of the Peat Bog.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_Machine1(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_Machine2(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3_Complete_Machine3(Quest, QuestGiver, Player)
	end
end
