--[[
	Script Name	: Quests/OutpostOverlord/the_final_assault.lua
	Script Purpose	: Handles the quest, "The Final Assault"
	Script Author	: Scatman (Updated by Cynnar 2018.09.24 12:09:08)
	Script Date	: 2008.12.29
	
	Zone            : Outpost of the Overlord
	Quest Giver     : Tayil N'Velex
	Preceded by     : Disruption for Distraction (disruption_for_distraction.lua)
	Followed by     : None
--]]

local CaptainTyreth = 2780099
local KeyOfTheElders = 8588
local TayilNVelex = 3480005
local OverseerAdrium = 2780101

function Init(Quest)
	-- Freeportian Bard's Dagger
	-- Freeportian Brawler's Wraps
	-- Freeportian Cleric's Hammer
	-- Freeportian Crusader's Greatsword
	-- Freeportian Druid's Scimitar
	-- Freeportian Enchanter's Wand
	-- Freeportian Predator's Dagger
	-- Freeportian Rogue's Rapier
	-- Freeportian Shaman's Spear
	-- Freeportian Sorcerer's Staff
	-- Freeportian Summoner's Dagger
	-- Freeportian Warrior's Axe


	AddQuestStepChat(Quest, 1, "Find Captain Tyreth in the Valley of Discipline, north of Cliffdiver Canyon. The camp is setup in an alcove on the eastern side of the valley near an archway.", 1, "I need to speak with Captain Tyreth in the Valley of Discipline. The forward camp is north past Cliffdiver Canyon and then east through the valley.", 0, CaptainTyreth) 
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_talkedToCaptain")

end

function Accepted(Quest, QuestGiver, Player)
	if QuestGiver ~= nil then
		if GetDistance(Player, QuestGiver) < 30 then
			FaceTarget(QuestGiver, Player)
			conversation = CreateConversation()
	
			AddConversationOption(conversation, "He will not be disappointed.")
			StartConversation(conversation, QuestGiver, Player, "The Overlord is counting on you.")
		end
	end
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_talkedToCaptain(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I found and spoke with Captain Tyreth.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found and spoke with Captain Tyreth.")
	
	AddQuestStepKill(Quest, 2, "Set fire to Tunarian tents with the torch Tyreth gave me. There are tents in the Valley of Discipline and farther northeast through the archway.", 2, 100, "The attack has begun. I am to use a torch Captain Tyreth gave me to burn down a couple of the Tunarian tents in the Valley of Discipline and also to the end near Fisher Falls. If I lose the torch, I should return to Tyreth for another.", 611, 2780220, 2780216)
	AddQuestStepCompleteAction(Quest, 2, "step2_complete_burntTents")
end

function step2_complete_burntTents(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I burned down the Tunarian tents and should return to Captain Tyreth.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I burned down the Tunarian tents and should return to Captain Tyreth.")
	
	AddQuestStepChat(Quest, 3, "Return to Captain Tyreth and tell him you burned the tents.", 1, "The tents are burning. I should return to Captain Tyreth.", 0, CaptainTyreth) 
	AddQuestStepCompleteAction(Quest, 3, "step3_complete_talkedToCaptain")
end

function step3_complete_talkedToCaptain(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I returned and spoke to Captain Tyreth.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I returned and spoke to Captain Tyreth.")
	
	AddQuestStepKill(Quest, 4, "Kill Overseer Adrium in his tree house near Fisher Falls to the east of the Valley of Discipline.", 1, 100, "The leader of the Tunarians on the island resides in a tree house to the east of the Valley of Discipline. I am to find Overseer Adrium and kill the Qeynosian before he has a chance to escape.", 611, OverseerAdrium)
	AddQuestStepCompleteAction(Quest, 4, "step4_complete_killedOverseer")
end

function step4_complete_killedOverseer(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I found Overseer Adrium in the tree house and killed him.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I found Overseer Adrium in the tree house and killed him.")
	
	--key of the elders
	SummonItem(Spawn, KeyOfTheElders)
	AddQuestStepChat(Quest, 5, "I should return to Captain Tyreth and tell him that I have slain the Tunarian leader.", 1, "I need to report back to Captain Tyreth and tell him that I have slain the Tunarian leader.", 0, CaptainTyreth) 
	AddQuestStepCompleteAction(Quest, 5, "step5_complete_talkedToCaptain")
end

function step5_complete_talkedToCaptain(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I returned to Captain Tyreth.")
	UpdateQuestTaskGroupDescription(Quest, 5, "I returned to Captain Tyreth.")
	
	AddQuestStepChat(Quest, 6, "Head into the cave north of Adrium's tree house and take out the Tunarian Circle of Elders.", 1, "A larger plot has emerged. Adrium was not the leader of the Tunarians. I am to use the key I found to enter a cave to the north of Adrium's tree house and confront the true leaders, the Circle of Elders. The precious gems from the Tunarian mine have also been stockpiled there, which is of interest to Tayil.", 0, TayilNVelex) 
	AddQuestStepCompleteAction(Quest, 6, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I burned down the Tunarian tents and killed what I thought to be the Tunarian leader, Overseer Adrium. It turned out that Tayil had known all along that there was a Circle of Elders and a horde of treasure. I was sent inside the Cave of Elders and destroyed them, with a little help from Tyil. I was given my choice from the treasure and have finished my duties helping Tayil N'Velex to take the island.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_talkedToCaptain(Quest, QuestGiver, Player)
	elseif Step == 2 then
		step2_complete_burntTents(Quest, QuestGiver, Player)
	elseif Step == 3 then
		step3_complete_talkedToCaptain(Quest, QuestGiver, Player)
	elseif Step == 4 then
		step4_complete_killedOverseer(Quest, QuestGiver, Player)
	elseif Step == 5 then
		step5_complete_talkedToCaptain(Quest, QuestGiver, Player)
	end
end
