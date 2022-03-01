--[[
	Script Name	: Quests/QueensColony/ghosts_and_goblins.lua
	Script Purpose	: This script is for the quest, "Ghosts and Goblins".
	Quest Name : Ghosts and Goblins
	
	Zone       : The Queen's Colony
	Quest Starter   : Deianeira
	Preceded By: Tainted (tainted.lua)
	Followed By: Nothing

	Script Author	: Scatman
	Script Date	: 2008.08.14
--]]

local GhostsAndGoblins = 184

function Init(quest)
	-- Sapswill hip sack
	-- Sapswill swill
	AddQuestStepChat(quest, 1, "The Forest Keeper is a treant who is resisting the corruption spreading through the Queen's Colony.", 1, "I must seek the cause of the corruption in the Tainted Forest.", 0, 2530105)
	AddQuestStepCompleteAction(quest, 1, "step1_complete_talkedToKeeper")
end

function Accepted(quest, questGiver, player)
	if questGiver ~= nil then
		if GetDistance(player, questGiver) < 30 then
			FaceTarget(questGiver, player)
			conversation = CreateConversation()
			PlayFlavor(questGiver, "voiceover/english/tutorial_revamp/deianeira/tutorial_island02_revamp/quest/qst_deianeira_complete_111dc711.mp3", "", "", 796380527, 3559718915, player)
			AddConversationOption(conversation, "Glad to be of service.")
			StartConversation(conversation, questGiver, player, "It's up to us to find the answers; they're never handed to us.")
		end
	end
end

function Declined(quest, questGiver, player)
end

function step1_complete_talkedToKeeper(quest, questGiver, player)
	UpdateQuestStepDescription(quest, 1, "I've spoken with the Forest Keeper.")
	
	AddQuestStepKill(quest, 2, "The Forest Keeper asked me to release the ghostly treants so that they can be reborn.", 3, 100, "I must seek the cause of the corruption in the Tainted Forest.", 194, 2530012)
	AddQuestStepCompleteAction(quest, 2, "step2_complete_killedTreants")
end

function step2_complete_killedTreants(quest, questGiver, player)
	UpdateQuestStepDescription(quest, 2, "I've released the ghostly treants.")
	
	AddQuestStepChat(quest, 3, "Return to the Forest Keeper.", 1, "I must seek the cause of the corruption in the Tainted Forest.", 0, 2530105)
	AddQuestStepCompleteAction(quest, 3, "step3_complete_talkedToKeeper")
end

function step3_complete_talkedToKeeper(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've spoken to the Forest Keeper.")
	
	AddQuestStepChat(Quest, 4, "The Forest Keeper suggested I speak with a soothsayer at the Last Stand, the old goblin base northeast of the Tainted Forest.", 1, "I must seek the cause of the corruption in the Tainted Forest.", 0, 2530037)
	AddQuestStepCompleteAction(Quest, 4, "step4_complete_talkedToSoothsayer")
end

function step4_complete_talkedToSoothsayer(quest, questGiver, player)
	UpdateQuestStepDescription(quest, 4, "The Forest Keeper referred me to a Sapswill Soothsayer.")
	UpdateQuestTaskGroupDescription(quest, 1, "The Forest Keeper referred me to a Sapswill Soothsayer.", 1)
	
	AddQuestStepLocation(quest, 5, "I must get water from the Hope Falls waterfall.", 30, "The Sapswill soothsayer suggested that if I gather some roots and bring him water, he could remove the taint from the Colony.", 313, -11, 0, -250)
	AddQuestStepLocation(quest, 6, "I must get water from the Razortooth Falls waterfall.", 30, "The Sapswill soothsayer suggested that if I gather some roots and bring him water, he could remove the taint from the Colony.", 313, 16, -10, -88)
	AddQuestStepLocation(quest, 7, "I must get water from the Sapswill Falls waterfall.", 30, "The Sapswill soothsayer suggested that if I gather some roots and bring him water, he could remove the taint from the Colony.", 313, -72, 0, -251)
	AddQuestStepHarvest(quest, 8, "I must gather some roots. They're scattered around the ground in large clumps and should be easy for me to locate.", 3, 100, "The Sapswill soothsayer suggested that if I gather some roots and bring him water, he could remove the taint from the Colony.", 194,  11637)
	AddQuestStepCompleteAction(quest, 5, "step5_complete_hopeFalls")
	AddQuestStepCompleteAction(quest, 6, "step6_complete_razortoothFalls")
	AddQuestStepCompleteAction(quest, 7, "step7_complete_sapswillFalls")
	AddQuestStepCompleteAction(quest, 8, "step8_complete_gatheredRoots")
end

function step5_complete_hopeFalls(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(quest, 5, "I've collected some water from Hope Falls.")
	if QuestIsComplete(Player, GhostsAndGoblins) then
	   GotWaterAndRoots(Quest, QuestGiver, Player)
	end
end

function step6_complete_razortoothFalls(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(quest, 6, "I've collected some water from Razortooth falls.")
	if QuestIsComplete(Player, GhostsAndGoblins) then
	   GotWaterAndRoots(Quest, QuestGiver, Player)
	end
end

function step7_complete_sapswillFalls(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(quest, 7, "I've collected some water from Sapswill Falls.")
	if QuestIsComplete(Player, GhostsAndGoblins) then
	   GotWaterAndRoots(Quest, QuestGiver, Player)
	end
end

function step8_complete_gatheredRoots(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(quest, 8, "I've gathered some roots.")
	if QuestIsComplete(Player, GhostsAndGoblins) then
	   GotWaterAndRoots(Quest, QuestGiver, Player)
	end
end

function GotWaterAndRoots(Quest, QuestGiver, Player)
	--UpdateQuestStepDescription(quest, 4, "The Forest Keeper referred me to a Sapswill Soothsayer.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've gathered the resources Sapswill soothsayer needs.")
	AddQuestStepChat(Quest, 9, "I must speak with the Sapswill soothsayer and give him these items so that he can remove the Colony's taint!", 1, "Now that I've done what the Sapswill soothsayer asked, I should return to him at the Last Stand.", 0, 2530037)
	AddQuestStepCompleteAction(Quest, 9, "questComplete")
end

function questComplete(quest, questGiver, player)
	UpdateQuestDescription(quest, "Releasing the ghostly treants did not lessen the corruption seeping through the Tainted Forest, so the Forest Keeper sent me to consult with a Sapswill soothsayer. After gathering some roots and water that I thought would be used for divination, I returned to find out he was only using me to get things to ferment!")
	GiveQuestReward(quest, player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
	   step1_complete_talkedToKeeper(Quest, QuestGiver, Player)
	elseif Step == 2 then
	   step2_complete_killedTreants(Quest, QuestGiver, Player)
	elseif Step == 3 then
	   step3_complete_talkedToKeeper(Quest, QuestGiver, Player)
	elseif Step == 4 then
	   step4_complete_talkedToSoothsayer(Quest, QuestGiver, Player)
	elseif Step == 5 then
	   step5_complete_hopeFalls(Quest, QuestGiver, Player)
	elseif Step == 6 then
	   step6_complete_razortoothFalls(Quest, QuestGiver, Player)
	elseif Step == 7 then
	   step7_complete_sapswillFalls(Quest, QuestGiver, Player)
	elseif Step == 8 then
	   step8_complete_gatheredRoots(Quest, QuestGiver, Player)
	end
end
