--[[
	Script Name	: Quests/Caves/destroying_the_foundation.lua
	Script Purpose	: Handles the quest, "Destroying the Foundation"
	Script Author	: Scatman
	Script Date	: 2009.10.18
	
	Zone       : The Caves
	Quest Giver: Emma Torque
	Preceded by: An Explosive Idea (an_explosive_idea.lua)
	Followed by: None
--]]


function Init(Quest)
	AddQuestStep(Quest, 1, "I need to destroy the digging machine 'DDBD-2830-A'.", 1, 100, "Emma Torque needs me to destroy the two machines being used by the gnolls to dig through the caves and to kill the Freeportian gnome responsible for bringing them here.", 0, 3276)
	AddQuestStep(Quest, 2, "I need to destroy the digging machine 'DDBD-2830-B'.", 1, 100, "Emma Torque needs me to destroy the two machines being used by the gnolls to dig through the caves and to kill the Freeportian gnome responsible for bringing them here.", 0, 3276)
	AddQuestStepKill(Quest, 3, "I need to kill Fulkoir Haggleton. He will probably appear among the Rockpaw gnolls once I've destroyed his machines.", 1, 100, "Emma Torque needs me to destroy the two machines being used by the gnolls to dig through the caves and to kill the Freeportian gnome responsible for bringing them here.", 2466, 1970071)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_MachineA")
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_MachineB")
	AddQuestStepCompleteAction(Quest, 3, "Step3_Complete_KilledFulkoir")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/emma_torque/qey_adv03_caves/quests/emma/emma_009.mp3", "", "", 2928866225, 3555660986, Player)
	AddConversationOption(conversation, "Thanks.")
	StartConversation(conversation, QuestGiver, Player, "Good. The machines are likely a couple of levels up from this one. I'm sure I'll hear the explosions from here. I do hope you enjoy yourself, hah hah!")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_MachineA(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have placed explosives on the digging machine 'DDBD-2830-A'.")

	if QuestIsComplete(Player, 227) then
		MultipleStepsComplete(Quest, QuestGiver, Player)
	end
end

function Step2_Complete_MachineB(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have placed explosives on the digging machine 'DDBD-2830-B'.")

	if QuestIsComplete(Player, 227) then
		MultipleStepsComplete(Quest, QuestGiver, Player)
	end
end

function Step3_Complete_KilledFulkoir(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have killed Fulkoir Haggleton.")

	if QuestIsComplete(Player, 227) then
		MultipleStepsComplete(Quest, QuestGiver, Player)
	end
end

function MultipleStepsComplete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have destroyed all of the machines and killed Fulkoir.")

	AddQuestStepChat(Quest, 4, "I need to return to Emma Torque.", 1, "Now that I have done what she needed I should return to Emma Torque.", 0, 1970012)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have spoken with Emma Torque.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken with Emma Torque.")
	UpdateQuestDescription(Quest, "I have destroyed the gnoll's digging machines and killed the gnome responsible for providing them with this technology.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		 Step1_Complete_MachineA(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_MachineB(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3_Complete_KilledFulkoir(Quest, QuestGiver, Player)
	end
end