--[[
	Script Name		:	Quests/Darklight/SealingtheRift.lua
	Script Purpose	:	Handles the quest, "Sealing the Rift"
	Script Author	:	Cynnar
	Script Date		:	7/5/2015
	Script Notes	:	

	Zone			:	Darklight Wood
	Quest Giver		:	Pellandra D'Xatyl
	Preceded by		:	A Solidified Front (ASolidifiedFront.lua)
	Followed by		:	Searching for Sigils (SearchingforSigils.lua)
--]]


function Init(Quest)
	AddQuestStep(Quest, 1, "Seal one of the newly opened Sablevein rifts", 1, 100, "Pellandra D'Xatyl has ordered me to find one of the newly opened rifts and seal it using any means necessary!", 11, 340760)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I found and sealed the newly opened rift")

	AddQuestStepChat(Quest, 2, "Return to Pellandra D'Xatyl", 1, "Pellandra D'Xatyl has ordered me to find one of the newly opened rifts and seal it using any means necessary!", 11, 340038)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I sealed one of the Sablevein rifts found south of Hate's Envy.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "pellandra_d_xatyl/darklight_wood/hates_envy/pellandra_revamp/pellandra005.mp3", "", "", 2498536389, 3964718754, Player)
	AddConversationOption(conversation, "I will return victorious!")
	StartConversation(conversation, QuestGiver, Player, "The citizens of Hate Envy depend upon you, " .. GetName(Player) .. ". Do not fail them.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	private_spawn_pebble = GetSpawn(Spawn, 340760)
	private_spawn_boulder = GetSpawn(Spawn, 340761)
	private_spawn_particle1 = GetSpawn(Spawn, 340747)
	private_spawn_particle2 = GetSpawn(Spawn, 341218)
	AddSpawnAccess(private_spawn_pebble, Spawn)
	RemoveSpawnAccess(private_spawn_boulder, Spawn)
	RemoveSpawnAccess(private_spawn_particle1, Spawn)
	RemoveSpawnAccess(private_spawn_particle2, Spawn)
end