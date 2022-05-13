--[[
	Script Name		:	Quests/EnchantedLands/LousyFairies.lua
	Script Purpose	:	Handles the quest "Lousy Fairies"
	Script Author	:	Cynnar
	Script Date		:	2015.04.01
	Script Notes	:	<special-instructions>

	Zone			:	Enchanted Lands
	Quest Giver		:	Gubbo Chaley
	Preceded by		:	<preceded-quest-name(lua file)>
	Followed by		:	<followed-by-quest-name(lua file)>
	Notes		:	Missing Fae Dusted Bracelet of Acumen, Alacrity, Resolve, and Piety. Random chance for one of the 4.
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "Kill fairies along the coast.", 10, 100, "I'm going to kill a bunch of fairies to avenge the death of Gubbo's friend Fritz.  There are fairies all along the coast and aren't difficult to find.  Lousy fairies.", 611, 390063, 390163, 390065, 390161, 390164, 390160, 390224, 390058, 390060, 390066, 390057, 390059, 390061, 390229, 390036, 390039, 390040, 390044, 390517, 390037, 390043, 390045, 390049, 390165, 390233, 390075, 390529)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Alright.")
	StartConversation(conversation, QuestGiver, Player, "Right over there, along the coast ... those blasted, smug fairies!")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've slain a good many fairies along the coast.  I shall return to Gubbo and inform him of what I've done.")
	AddQuestStepChat(Quest, 2, "I should return to Gubbo and tell him of the victorious slayings of fairies in honor of his good friend Fritz.", 1, "I'm going to kill a bunch of fairies to avenge the death of Gubbo's friend Fritz.  There are fairies all along the coast and aren't difficult to find.  Lousy fairies.", 0, 390078, 2520005, 2520004)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function QuestComplete(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestReward(Quest, QuestGiver, Player)
	end
end