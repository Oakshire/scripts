--[[
	Script Name	: SpawnScripts/QueensColony/TheForestKeeper.lua
	Script Purpose	: The Forest Keeper 
	Script Author	: John Adams
	Script Date	: 2008.12.12
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local GhostsAndGoblins = 184

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasCompletedQuest(Spawn, GhostsAndGoblins) then
		MustRemainStrong(NPC, Spawn, 0)
	elseif HasQuest(Spawn, GhostsAndGoblins) then
		if GetQuestStep(Spawn, GhostsAndGoblins) == 1 then
			MustRemainStrong(NPC, Spawn, 1)
		elseif GetQuestStep(Spawn, GhostsAndGoblins) == 2 then
			MustRemainStrong(NPC, Spawn, 0)
		elseif GetQuestStep(Spawn, GhostsAndGoblins) == 3 then
			MustRemainStrong(NPC, Spawn, 2)
		else
			MustRemainStrong(NPC, Spawn, 0)
		end
	end
end

function MustRemainStrong(NPC, Spawn, Choice)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/the_forest_keeper/tutorial_island02_revamp/quests/forest_keeper/forest_keeper001.mp3", "", "", 434333229, 272774680, Spawn)

	if Choice == 1 then
		AddConversationOption(conversation, "Are you the Forest Keeper that Deianeira spoke of?", "dlg_1_1")
	elseif Choice == 2 then
		AddConversationOption(conversation, "I've released many of the ghosts but there is no end to them!", "ReleasedGhosts")
	end

	AddConversationOption(conversation, "Good luck with that!")
	StartConversation(conversation, NPC, Spawn, "I must remain strong and vigilant against this! I will not give in to the corruption!")
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/the_forest_keeper/tutorial_island02_revamp/quests/forest_keeper/forest_keeper002.mp3", "", "", 1673079737, 0, Spawn)
	AddConversationOption(conversation, "Can we do anything to stop it?", "dlg_1_2")
	StartConversation(conversation, NPC, Spawn, "Eh?  Who's that? Oh, that betrayer! She should go back to Freeport! Yes, I was once a Forest Keeper, maintaining this wood.  But look around you!  The other treants have succumbed to the evil that pervades this island.  They've become ghosts, trapped between this life and their rebirth.")
end

function dlg_1_2(NPC, Spawn)
	SetStepComplete(Spawn, GhostsAndGoblins, 1)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/the_forest_keeper/tutorial_island02_revamp/quests/forest_keeper/forest_keeper003.mp3", "", "", 3694344031, 0, Spawn)
	AddConversationOption(conversation, "I will set them free.")
	StartConversation(conversation, NPC, Spawn, "Trapped in those ghostly forms, they are contributing to the decay of the Forest.  I've been able to stave off the taint myself, but with so many of my brethren gone, it gets more and more difficult.  They must be set free, so that they can be reborn into the earth.  Without rebirth, there will be no living saplings!")
end

function ReleasedGhosts(NPC, Spawn)
	SetStepComplete(Spawn, GhostsAndGoblins, 3)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/the_forest_keeper/tutorial_island02_revamp/quests/forest_keeper/forest_keeper004.mp3", "", "", 375881043, 0, Spawn)
	AddConversationOption(conversation, "I'll do what I can. Stay strong!")
	StartConversation(conversation, NPC, Spawn, "Alas, the decay runs too deep. You must learn what horrors those naughty goblins have released! There are still a few of them that are as yet untainted at the Last Stand, northeasterly of here. Speak to the soothsayer there; he may have ideas. We were friends in the old days.")
end

