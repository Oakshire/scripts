--[[
	Script Name	: Quests/SunkenCity/cataloging_local_critters.lua
	Script Purpose	: Handles the quest, "Cataloging Local Critters"
	Script Author	: Scatman
	Script Date	    : 2009.07.28
	
	Zone       : Sunken City
	Quest Giver: Inquisitor Thorson
	Preceded by: Spirits of the Night (spirits_of_the_night.lua)
	Followed by: Finding the Investigator (finding_the_investigator)
--]]

function Init(Quest)
	AddQuestStep(Quest, 1, "I need to catalog the presence of a brine sifter.", 1, 100, "I need to use the Catalogue Creature ability found in my Knowledge Book to obtain information on the local vermin.", 0)
	AddQuestStep(Quest, 2, "I need to catalog the presence of a small rust monster.", 1, 100, "I need to use the Catalogue Creature ability found in my Knowledge Book to obtain information on the local vermin.", 0)
	AddQuestStep(Quest, 3, "I must catalog the presence of a rust monster.", 1, 100, "I need to use the Catalogue Creature ability found in my Knowledge Book to obtain information on the local vermin.", 0)
	AddQuestStep(Quest, 4, "I need to catalog the presence of a small scorpion.", 1, 100, "I need to use the Catalogue Creature ability found in my Knowledge Book to obtain information on the local vermin.", 0)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_BrineSifter")
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_SmallRustMonster")
	AddQuestStepCompleteAction(Quest, 3, "Step3_Complete_RustMonster")
	AddQuestStepCompleteAction(Quest, 4, "Step4_Complete_SmallScorpion")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I'll return when I'm done.")
	StartConversation(conversation, QuestGiver, Player, "The Knowledge Book you obtained on the Outpost of the Overlord contains many Abilities that will prove useful to you. Among these Abilities is one called Catalogue Creature. If you draw close to a creature, you can use this ability to obtain information about it. Everything I need to know will be recorded in your Quest Journal. There is no need to attack any of these creatures, simply use the Catalogue Creature ability on them.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_BrineSifter(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have found that there are quite a lot of brine sifters here.")
	
	if QuestIsComplete(Player, 268) then
		AllCreaturesCataloged(Quest, QuestGiver, Player)
	end
end

function Step2_Complete_SmallRustMonster(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have discovered that small rust monsters live in this area.")
	
	if QuestIsComplete(Player, 268) then
		AllCreaturesCataloged(Quest, QuestGiver, Player)
	end
end

function Step3_Complete_RustMonster(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have found rust monsters here in the Sunken City.")
	
	if QuestIsComplete(Player, 268) then
		AllCreaturesCataloged(Quest, QuestGiver, Player)
	end
end

function Step4_Complete_SmallScorpion(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have found small scorpions here in the Sunken City.")
	
	if QuestIsComplete(Player, 268) then
		AllCreaturesCataloged(Quest, QuestGiver, Player)
	end
end

function AllCreaturesCataloged(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have obtained information on the local creatures.")
	
	AddQuestStepChat(Quest, 5, "I should take the information I obtained back to Inquisitor Thorson..", 1, "I should return to Inquisitor Thorson with what I have learned.", 0, 1240007)
	AddQuestStepCompleteAction(Quest, 5, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have taken the information back to Inquisitor Thorson.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I gave my information to Inquisitor Thorson.")
	GiveQuestReward(Quest, Player)
	UpdateQuestDescription(Quest, "I successfully gathered information on several different kinds of creatures. Though a haunted place, the Sunken City is alive with small creatures... and some larger ones.")
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_BrineSifter(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_SmallRustMonster(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3_Complete_RustMonster(Quest, QuestGiver, Player)
	elseif Step == 4 then
		Step4_Complete_SmallScorpion(Quest, QuestGiver, Player)
	end
end