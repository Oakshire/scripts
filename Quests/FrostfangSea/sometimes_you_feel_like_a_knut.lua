--[[
	Script Name		:	Quests/FrostfangSea/sometimes_you_feel_like_a_knut.lua
	Script Purpose	:	the quest "Sometimes You Feel Like A Knut"
	Script Author	:	theFoof
	Script Date		:	2013.8.11
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:	Knut Orcbane
	Preceded by		:	Flawless Core Chore
	Followed by		:	None
--]]

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(1,99), math.random(27,40), 0, 0)
	AddQuestStep(Quest, 1, "If you listen to Griz carefully, perhaps he can help guide you.", 1, 100, "While wearing Griz as your head equipment, explore the caves and tunnels within Demon's Delve.", 0)
	AddQuestStepCompleteAction(Quest, 1, "GotBag")
end

function Accepted(Quest, QuestGiver, Player)
	SummonItem(Player, 157116)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Wonderful.")
	StartConversation(conversation, NPC, Spawn, "You must wear him in order to hear him.  Now, promise to bring him back -safe and sound.  And do not be swayed by his bloodlust. He often forgets he no longer has claws.")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function GotBag(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "You found the sack that once contained the magick item.")
	AddQuestStep(Quest, 2, "Continue to explore the caves with Griz. If you listen to him carefully, perhaps he can help guide you.", 1, 100, "While wearing Griz as your head equipment, explore the caves and tunnels within Demon's Delve.", 0)
	AddQuestStepCompleteAction(Quest, 2, "FoundTotem")
end

function FoundTotem(Quest, QuestGiver, Player)
	AddSpawnAccess(GetSpawnByLocationID(GetZone(Player), 579551), Player)
	UpdateQuestStepDescription(Quest, 2, "Griz has helped you locate the source of the magick.")
	AddQuestStep(Quest, 3, "Griz is rather insistent. You must destroy the magick item -it is a Ry'Gorr necromantic totem!", 1, 100, "While wearing Griz as your head equipment, explore the caves and tunnels within Demon's Delve.", 0)
	AddQuestStepCompleteAction(Quest, 3, "DestroyedTotem")
end

function DestroyedTotem(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "You destroyed the necromantic totem!")
	AddQuestStepChat(Quest, 4, "Return to Knut Orcbane now that you have destroyed the necromantic crystal the orcs had within the Demon's Delve tunnels.", 1, "You should return to Knut Orcbane, at Cragged Spine, now that you have destroyed the necromantic crystal the orcs had within the Demon's Delve tunnels.", 0, 4700113)
	AddQuestStepCompleteAction(Quest, 4, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 2, "You told Knut how Griz helped you locate and destroy the Ry'Gorr necromantic crystal.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		GotBag(Quest, QuestGiver, Player)
	elseif Step == 2 then
		FoundTotem(Quest, QuestGiver, Player)
	elseif Step == 3 then
		DestroyedTotem(Quest, QuestGiver, Player)
	end
end