--[[
	Script Name		:	Quests/Commonlands/PlainOleDisease.lua
	Script Purpose	:	Handles the quest, "Plain 'Ole Disease?"
	Script Author	:	premierio015
	Script Date		:	20.02.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I should collect stone beetle mandibles", 2, 50, "Healer Hanif has sent me to get him some ingredients for use in making medicinal aids.", 161, 330066, 330070,330745)
	AddQuestStepHarvest(Quest, 2, "I should harvest mushrooms along Dog Trapper Lake's banks", 2, 100, "Healer Hanif has sent me to get him some ingredients for use in making medicinal aids.", 821, 331124)
	AddQuestStepKill(Quest, 3, "I should hunt scourge rats for their festering skin", 3, 50, "Healer Hanif has sent me to get him some ingredients for use in making medicinal aids.", 415, 330064, 330718)
	AddQuestStepChat(Quest, 4, "I should return to Hanif after collecting each of the medicinal ingredients", 1, "Healer Hanif has sent me to get him some ingredients for use in making medicinal aids.", 11, 330135)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
	
end

function Accepted(Quest, QuestGiver, Player)
	    FaceTarget(QuestGiver, Player)
	     PlayFlavor(QuestGiver, "voiceover/english/orwen_neovra/commonlands/quests/orwen_neovra/orwen_neovra003.mp3", "", "", 2440483082, 3137658382, Spawn)
         conversation = CreateConversation()
         AddConversationOption(conversation, "Sounds easy enough.")
         AddConversationOption(conversation, "Where should I look for them?", "mushrooms")
         StartConversation(conversation, QuestGiver, Player, "Great!  I require mushrooms, stone beetle mandibles and the festering skin of many scourge rats.")
end


function mushrooms(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "Thank you.")
    StartConversation(conversation, NPC, Spawn, "The mushrooms tend to grow on the banks of dog trapper lake.  The stone beetles and scourge rats have been seen congregating near Wasp Hill.")
end
    
    
function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have the mandibles of some stone beetles.")

	
	CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I harvested some riverbank mushrooms.")
    
    CheckProgress(Quest, QuestGiver, Player)
end


function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have the sore covered skins from some scourge rats.")
  
	 
	 	CheckProgress(Quest, QuestGiver, Player)
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I gave the items to Healer Hanif.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have obtained each of the ingredients Healer Hanif requested.")

	AddQuestStepChat(Quest, 5, "Give the medicine to the leper, Durio Caepio", 1, "Healer Hanif has asked me to help by administering the medicinal aids to several of the victims.", 11, 330136)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "Durio Caepio spoke of bizarre visions.")
    UpdateQuestTaskGroupDescription(Quest, 2, "Durio Caepio spoke of bizarre visions.")
	AddQuestStepChat(Quest, 6, "Give the medicine to the leper, Galla Lentula", 1, "Healer Hanif has asked me to help by administering the medicinal aids to several of the victims.", 11, 330138)
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "Galla Lentula was lucid enough to explain the visions that many victims have had.")
    UpdateQuestTaskGroupDescription(Quest, 3, "Galla Lentula was lucid enough to explain the visions that many victims have had.")
	AddQuestStepChat(Quest, 7, "I should tell Hanif about the victims' disturbing visions", 1, "Healer Hanif has asked me to help by administering the medicinal aids to several of the victims.", 11, 330135 )
	AddQuestStepCompleteAction(Quest, 7, "Step7Complete")
end

function Step7Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "I spoke to Hanif.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I spoke to Hanif about the disturbing visions the victims have reported.")

	AddQuestStepChat(Quest, 8, "I should find Lucretias studying graves", 1, "With Healer Hanif's studies now looking at magical influences for this suffering, he has asked me to get some items from Lucretias Domna.", 11, 330270)
	AddQuestStepCompleteAction(Quest, 8, "Step8Complete")
end

function Step8Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 8, "I spoke with Lucretias Domna.")
    UpdateQuestTaskGroupDescription(Quest, 5, "I spoke with Lucretias Domna.")
	AddQuestStepKill(Quest, 9, "I am to hunt zombies for sinew", 7, 100, "With Healer Hanif's studies now looking at magical influences for this suffering, he has asked me to get some items from Lucretias Domna.", 414, 330271, 330754, 330193, 330756, 330154)
	AddQuestStepCompleteAction(Quest, 9, "Step9Complete")
end

function Step9Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 9, "I was able to get the zombie sinew for Lucretias.")
      UpdateQuestTaskGroupDescription(Quest, 6, "I was able to get the zombie sinew for Lucretias.")
	AddQuestStepChat(Quest, 10, "Now to exchange the zombie sinew for the items Lucretias has", 1, "With Healer Hanif's studies now looking at magical influences for this suffering, he has asked me to get some items from Lucretias Domna.", 11, 330270)
	AddQuestStepCompleteAction(Quest, 10, "Step10Complete")
end

function Step10Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 10, "I got the items from Lucretias Domna.")
	UpdateQuestTaskGroupDescription(Quest, 7, "I helped Lucretias Domna in exchange for the required scroll and flesh.")
    GiveQuestItem(Quest, Player, "I helped Lucretias Domna in exchange for the required scroll and flesh.", 14012, 11167)
	AddQuestStepChat(Quest, 11, "I should return to Hanif at the leper camp", 1, "The Dismal Rage contact gave me the scroll and flesh that Healer Hanif needs for his testing.", 11, 330135)
	AddQuestStepCompleteAction(Quest, 11, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 11, "Healer Hanif gave me the rewards that he promised.")
	UpdateQuestTaskGroupDescription(Quest, 8, "Healer Hanif gave me the rewards that he promised in exchange for my help.")

	UpdateQuestDescription(Quest, "Healer Hanif rewarded me in exchange for my help in his studies concerning the particularly virulent strain of leprosy.  He seemed excited that it may be one of the poxes come from the Plane of Disease, long since dormant.")
	GiveQuestReward(Quest, Player)
end


function CheckProgress(Quest, QuestGiver, Player)
 if QuestStepIsComplete(Player, 454, 1) and QuestStepIsComplete(Player, 454, 2) and QuestStepIsComplete(Player, 454, 3) then
       AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end
   end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3Complete(Quest, QuestGiver, Player)
	elseif Step == 4 then
		Step4Complete(Quest, QuestGiver, Player)
	elseif Step == 5 then
		Step5Complete(Quest, QuestGiver, Player)
	elseif Step == 6 then
		Step6Complete(Quest, QuestGiver, Player)
	elseif Step == 7 then
		Step7Complete(Quest, QuestGiver, Player)
	elseif Step == 8 then
		Step8Complete(Quest, QuestGiver, Player)
	elseif Step == 9 then
		Step9Complete(Quest, QuestGiver, Player)
	elseif Step == 10 then
		Step10Complete(Quest, QuestGiver, Player)
	elseif Step == 11 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end




