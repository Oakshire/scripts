--[[
	Script Name	: Quests/OutpostOverlord/seaside_stew.lua
	Script Purpose	: Handles the quest, "Seaside Stew"
	Script Author	: Scatman (Updted by Cynnar 2018.09.16 10:09:24)
	Script Date	: 2008.09.07
	
	Zone       : Outpost of the Overlord
	Quest Giver: Tayil N'Velex
	Preceded by: The Art of Combat (the_art_of_combat_evil.lua)
	Followed by: Preventative Maintenance (preventative_maintenance.lua)
--]]

local ChefGorga = 2780057
local TayilNVelex = 2780038
local WorkerBees = 2780064
local SoldierBees = 2780078
local QueenBee = 2780076
local CowElk = 2780066
local ElkCalf = 2780065
local BullElk = 2780068

function Init(Quest)
	-- Freeportian Cloth Cuffs
	-- Freeportian Leather Sleeves
	-- Freeportian Plated Bracers
	-- Freeportian Studded Wristguards
	
	AddQuestStepChat(Quest, 1, "Seek out Chef Gorga outside the west gate.", 1, "I need to seek out Chef Gorga outside the west gate. She should have some tasks for me to test out my combat skills.", 0, ChefGorga) 
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_talkedToGorga")

end


function Accepted(Quest, QuestGiver, Player)
	if QuestGiver ~= nil then
	   if GetDistance(Player, QuestGiver) < 30 then
	 FaceTarget(QuestGiver, Player)
	 conversation = CreateConversation
  
	 PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/tayil_n_velex/tutorial_island02_evil_revamp/quests/citizenship/tayilnvelex/tayilnvelex036.mp3", "", "", 3316986332, 3271769196, Player)
	 AddConversationOption(conversation, "I will.")
	 StartConversation(conversation, QuestGiver, Player, "Report back to me when your duties with Chef Gorga are done.")
	   end
	end
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_talkedToGorga(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I reported to Chef Gorga and have been given my first task.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I reported to Chef Gorga and have been given my first task.")
	
	AddQuestStepKill(Quest, 2, "Kill the nearby bees to add to Gorga's stew.", 3, 100, "The first ingredient for the Seaside Stew is the nearby bees. I need to kill some for Gorga.", 611, WorkerBees, SoldierBees, QueenBee) 
	AddQuestStepCompleteAction(Quest, 2, "step2_complete_killedBees")
end

function step2_complete_killedBees(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I killed enough bees for the first ingredient of Gorgia's Seaside Stew.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I killed enough bees for the first ingredient of Gorgia's Seaside Stew.")
	
	AddQuestStepChat(Quest, 3, "Return to Chef Gorga.", 1, "I killed the bees that Gorga wants for her stew. I should return to her now.", 0, ChefGorga) 
	AddQuestStepCompleteAction(Quest, 3, "step3_complete_talkedToGorga")
end

function step3_complete_talkedToGorga(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I returned to Chef Gorga.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I returned to Chef Gorga.")
	
	AddQuestStepKill(Quest, 4, "Kill the elk for their livers.", 4, 100, "The second ingredient is elk livers. The elk roam throughout the Seaside Glade, out past the barricades.", 611, CowElk, ElkCalf, BullElk) 
	AddQuestStepCompleteAction(Quest, 4, "step4_complete_killedElk")
end

function step4_complete_killedElk(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I gathered enough elk livers for Gorga's Seaside Stew.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I gathered enough elk livers for Gorga's Seaside Stew.")
	
	AddQuestStepChat(Quest, 5, "Return the livers to Chef Gorga.", 1, "I've gathered the elk livers and need to return to Chef Gorga.", 0, ChefGorga) 
	AddQuestStepCompleteAction(Quest, 5, "step5_complete_talkedToGorga")
end

function step5_complete_talkedToGorga(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I returned to Chef Gorga with the elk livers for her stew.")
	UpdateQuestTaskGroupDescription(Quest, 5, "I returned to Chef Gorga with the elk livers for her stew.")
	
	AddQuestStepChat(Quest, 6, "Return to Tayil N'Velex.", 1, "I should return to Tayil N'Velex and let her know that I've finished helping Gorga.", 0, TayilNVelex)
	AddQuestStepCompleteAction(Quest, 6, "step6_complete_talkedToTayil")
end

function step6_complete_talkedToTayil(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I reported to Chef Gorga and gathered some ingredients for her Seaside Stew. Livers! Upon returning to Tayil, I was rewarded for my efforts.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_talkedToGorga(Quest, QuestGiver, Player)
	elseif Step == 2 then
		step2_complete_killedBees(Quest, QuestGiver, Player)
	elseif Step == 3 then
		step3_complete_talkedToGorga(Quest, QuestGiver, Player)
	elseif Step == 4 then
		step4_complete_killedElk(Quest, QuestGiver, Player)
	elseif Step == 5 then
		step5_complete_talkedToGorga(Quest, QuestGiver, Player)
	end
end
