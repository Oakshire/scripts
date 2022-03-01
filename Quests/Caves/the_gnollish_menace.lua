--[[
	Script Name	: Quests/Caves/the_gnollish_menace.lua
	Script Purpose	: Handles the quest, "The Gnollish Menace"
	Script Author	: Scatman
	Script Date	: 2009.10.18
	
	Zone       : The Caves
	Quest Giver: Lieutenant Delsun
	Preceded by: None
	Followed by: None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill thirty gnolls within the Caves.", 30, 100, "Lieutenant Delsun has tasked me with taking out a large portion of the gnolls and their allies here in the Caves.", 1220, 1970064, 1970046, 1970065, 1970073, 1970049, 1970047, 1970067, 1970070, 1970035, 1970036, 1970038, 1970027, 1970044, 1970028, 1970069, 1970063, 1970042, 1970061, 1970068, 1970060, 1970024, 1970041, 1970043, 1970072, 1970066, 1970045, 1970052, 1970055, 1970075, 1970014)
	AddQuestStepKill(Quest, 2, "I need to kill two Dustpaw armorers.", 2, 100, "Lieutenant Delsun has tasked me with taking out a large portion of the gnolls and their allies here in the Caves.", 1544, 1970067, 1970070, 1970035, 1970036)
	AddQuestStepKill(Quest, 3, "I need to kill five alabaster behemoths.", 5, 100, "Lieutenant Delsun has tasked me with taking out a large portion of the gnolls and their allies here in the Caves.", 193, 1970057, 1970051, 1970058, 1970026, 1970021)
	AddQuestStepKill(Quest, 4, "I need to kill five Rockpaw guards.", 5, 100, "Lieutenant Delsun has tasked me with taking out a large portion of the gnolls and their allies here in the Caves.", 611, 1970064, 1970046, 1970065, 1970073, 1970049, 1970047)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_KilledGnolls")
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_KilledArmorers")
	AddQuestStepCompleteAction(Quest, 3, "Step3_Complete_KilledBehemoths")
	AddQuestStepCompleteAction(Quest, 4, "Step4_Complete_KilledGuards")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/lieutenant_delsun/qey_adv03_caves/quests/delsun/delsun_002a.mp3", "", "", 1211118613, 1660657141, Player)
	AddConversationOption(conversation, "All right.")
	StartConversation(conversation,QuestGiver, Player, "Once you've done this return to me. The city of Qeynos will want to thank you properly.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_KilledGnolls(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have killed thirty gnolls.")

	if QuestIsComplete(Player, 229) then
		MultipleStepsComplete(Quest, QuestGiver, Player)
	end
end

function Step2_Complete_KilledArmorers(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have killed two Dustpaw armorers.")

	if QuestIsComplete(Player, 229) then
		MultipleStepsComplete(Quest, QuestGiver, Player)
	end
end

function Step3_Complete_KilledBehemoths(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have killed five alabaster behemoths.")

	if QuestIsComplete(Player, 229) then
		MultipleStepsComplete(Quest, QuestGiver, Player)
	end
end

function Step4_Complete_KilledGuards(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have killed five Rockpaw guards.")

	if QuestIsComplete(Player, 229) then
		MultipleStepsComplete(Quest, QuestGiver, Player)
	end
end

function MultipleStepsComplete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have done what Lieutenant Delsun asked.")

	AddQuestStepChat(Quest, 5, "I need to return to Lieutenant Delsun.", 1, "Now that the task is complete I should return to Lieutenant Delsun.", 0, 1970011)
	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have spoken with Lieutenant Delsun.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken with Lieutenant Delsun.")
	UpdateQuestDescription(Quest, "I have done what Lieutenant Delsun asked of me.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		 Step1_Complete_KilledGnolls(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_KilledArmorers(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3_Complete_KilledBehemoths(Quest, QuestGiver, Player)
	elseif Step == 4 then
		Step4_Complete_KilledGuards(Quest, QuestGiver, Player)
	end
end