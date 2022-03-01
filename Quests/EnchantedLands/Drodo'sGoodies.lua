--[[
	Script Name		:	Quests/EnchantedLands/Drodo'sGoodies.lua
	Script Purpose	:	Handles the quest "Drodo's Goodies"
	Script Author	:	Cynnar
	Script Date		:	2015.05.13
	Script Notes	:	<special-instructions>

	Zone			:	Enchanted Lands
	Quest Giver		:	Augin Drodo
	Preceded by		:	None
	Followed by		:	None
--]]

local DrodosGoodies = 119

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(10,95), math.random(39,49), math.random(1,1), 0)
	AddQuestStepKill(Quest, 1, "I must hunt grove badgers.", 1, 40, "I must hunt the critters near the granary in Enchanted Lands. They should have Drodo's goodies.", 2299, 390041)
	AddQuestStepKill(Quest, 2, "I must hunt lancer wasps.", 1, 40, "I must hunt the critters near the granary in Enchanted Lands. They should have Drodo's goodies.", 1229, 390092)
	AddQuestStepKill(Quest, 3, "I must hunt klakrok drones.", 1, 40, "I must hunt the critters near the granary in Enchanted Lands. They should have Drodo's goodies.", 1225, 390069)
	AddQuestStepKill(Quest, 4, "I must hunt briarpaw cubs.", 1, 40, "I must hunt the critters near the granary in Enchanted Lands. They should have Drodo's goodies.", 928, 390104)
	AddQuestStepCompleteAction(Quest, 1, "deck")
	AddQuestStepCompleteAction(Quest, 2, "comb")
	AddQuestStepCompleteAction(Quest, 3, "dice")
	AddQuestStepCompleteAction(Quest, 4, "box")
end

function CheckProgress(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player, DrodosGoodies, 1) and QuestStepIsComplete(Player, DrodosGoodies, 2) and QuestStepIsComplete(Player, DrodosGoodies, 3) and QuestStepIsComplete(Player, DrodosGoodies, 4) then
       UpdateQuestTaskGroupDescription(Quest, 1, "I hunted the critters near the granary and collected all of Drodo's goodies.")
	   AddStep5(Quest, QuestGiver, Player)
	end
end

function AddStep5(Quest, QuestGiver, Player)
	SetCompleteFlag(Quest)
    AddQuestStepChat(Quest, 5, "I must return the goodies.", 1, "I must return the goodies to Augin Drodo at the granary near Bobick in the Enchanted Lands.", 0, GetSpawnID(QuestGiver))
	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
end

function deck(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I found Drodo's King's Court deck!")
    CheckProgress(Quest, QuestGiver, Player)
end

function comb(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 2, "I found Drodo's foot comb!")
    CheckProgress(Quest, QuestGiver, Player)
end

function dice(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 3, "I found Drodo's goblin dice!")
    CheckProgress(Quest, QuestGiver, Player)
end

function box(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 3, "I found Drodo's brunch box!")
    CheckProgress(Quest, QuestGiver, Player)
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "augin_drodo/enchanted/augin_drodo003.mp3", "", "", 3982874170, 1388125971, Spawn)
	AddConversationOption(conversation, "I'll return with your goodies.")
	StartConversation(conversation, QuestGiver, Player, "Excellent! That would be very neighborly of you! Wish I could help, but I got a bum knee ya know. Otherwise these critters would fear the name Drodo.")
end

function QuestComplete(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if QuestStepIsComplete(Player, DrodosGoodies, 1) then
	    deck(Quest, QuestGiver, Player)
	end
	if QuestStepIsComplete(Player, DrodosGoodies, 2) then
	    comb(Quest, QuestGiver, Player)
	end
	if QuestStepIsComplete(Player, DrodosGoodies, 3) then
	    dice(Quest, QuestGiver, Player)
	end
	if QuestStepIsComplete(Player, DrodosGoodies, 4) then
	    box(Quest, QuestGiver, Player)
	end
end

