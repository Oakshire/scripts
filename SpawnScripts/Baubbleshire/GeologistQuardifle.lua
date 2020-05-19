--[[
	Script Name	: SpawnScripts/Baubbleshire/GeologistQuardifle.lua
	Script Purpose	: Geologist Quardifle 
	Script Author	: Scatman
	Script Date	: 2009.09.27
	Script Notes	: Speaks Gnomish/Updated 1/6/2020 by Shatou
--]]

local GATHERING_ROCK_SAMPLES_QUEST_ID = 504

function spawn(NPC)
	ProvidesQuest(NPC, GATHERING_ROCK_SAMPLES_QUEST_ID)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/geologist_quardifle/qey_village06/geologistquardifle000.mp3", "", "", 1675886861, 3931018482, Spawn)
	
	if HasQuest(Spawn, GATHERING_ROCK_SAMPLES_QUEST_ID) and GetQuestStep(Spawn, GATHERING_ROCK_SAMPLES_QUEST_ID) == 4 then
		AddConversationOption(conversation, "I'm back with those samples.", "dlg_1_1")
	end
	
	if not HasQuest(Spawn, GATHERING_ROCK_SAMPLES_QUEST_ID) then
		AddConversationOption(conversation, "What's so fascinating about it? There are lots of strange phenomena in Antonica.", "dlg_0_1")
	end
	AddConversationOption(conversation, "Have fun with your rocks, I'm not interested.")
	StartConversation(conversation, NPC, Spawn, "These rocks here are interesting... I'm not sure where they came from.  It's rather strange... they simply don't fit this area at all...")
end

--[[ Gathering Rock Samples QUEST (504) ]]--
function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Hmm, you know, that's an interesting theory.", "dlg_0_2")
	AddConversationOption(conversation, "I'm not sure I buy that.")
	StartConversation(conversation, NPC, Spawn, "The geography of the area isn't suitable for forming this kind of rock. I'm merely curious I suppose, but understanding the world we live in often unseats presumptions we have about our existence.")
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Sure, that sounds good.", "dlg_0_3")
	AddConversationOption(conversation, "No, thanks.")
	StartConversation(conversation, NPC, Spawn, "I'll tell you what. If you want to learn more, and help me out at the same time, I can give you something to do that might whet your appetite for more - what do you say to that?")
end

function dlg_0_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	OfferQuest(NPC, Spawn, GATHERING_ROCK_SAMPLES_QUEST_ID)
	
	AddConversationOption(conversation, "Alright. I'll see what I can find!")
	StartConversation(conversation, NPC, Spawn, "Great! You'll find that these caves are largely unexplored. Seek out intricate areas of these caves and bring me back some unique rock samples and I'll be happy!")
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	SetStepComplete(Spawn, GATHERING_ROCK_SAMPLES_QUEST_ID, 4)
	
	AddConversationOption(conversation, "Thanks Quardifle!")
	StartConversation(conversation, NPC, Spawn, "Oooo, pass them here! These will occupy my time for quite a while! Really, you're a natural! If you find more unique rocks on your journey, return them to me and I'll reimburse you. Here, take this coin for your first discovery!")
end
--[[ QUEST END ]]--